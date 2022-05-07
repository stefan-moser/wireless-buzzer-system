
//------------------------------------------------------------------------------
// Librarys
#include <Arduino.h>
#include <CuteBuzzerSounds.h>

#include <RF24.h>
#include <SPI.h>

//Constants
#define RED_LED  A1
#define YELLOW_LED  A2
#define GREEN_LED  A3
#define BLUE_LED  A4

const int RED_SIGNAL = 1010;
const int YELLOW_SIGNAL = 2020;
const int GREEN_SIGNAL = 3030;
const int BLUE_SIGNAL = 4040;

const bool pressed = false;

const char RESET_BUTTON = 2;
const char ARM_BUTTON = 3;
const char CHANCE_BUTTON = 4;
const char CHANCE_MEMORY_BUTTON = 5; 

#define PIEZO_PIN 7

//RF24 const
RF24 radio(9, 10); //nRF24L01 (CE, CSN)
const byte node_base = 01;
const byte node_red = 02;
const byte node_yellow = 03;
const byte node_green = 04;
const byte node_blue = 05;

//Variables

bool currentResetButtonState;
bool currentArmButtonState;
bool currentChanceButtonState;
bool currentChanceMemoryButtonState;

int redAvailable = 0;
int greenAvailable = 0;
int yellowAvailable = 0;
int blueAvailable = 0;

int state = -1;
//states
// -1 = booted
//  0 = Asking the question, if they buzz in, they're locked out
//  1 = Available people can buzz in
//  2 = pending state, wait for button press

unsigned long recording; //stores the received RF24-signal

//prototypes
void resetLeds();
void blinkToGo();
void soundSamples();

//+=============================================================================
// Configure the Arduino
//
void  setup ( )
{
  Serial.begin(9600);   // Status message will be sent to PC at 9600 baud

  pinMode(RED_LED, OUTPUT); // All LED Setup
  pinMode(YELLOW_LED, OUTPUT);
  pinMode(GREEN_LED, OUTPUT);
  pinMode(BLUE_LED, OUTPUT);

  //pinMode(RESET_BUTTON, INPUT_PULLUP); // All Button Setup
  pinMode(RESET_BUTTON, INPUT_PULLUP);
  pinMode(ARM_BUTTON, INPUT_PULLUP);
  pinMode(CHANCE_BUTTON, INPUT_PULLUP);
  pinMode(CHANCE_MEMORY_BUTTON, INPUT_PULLUP);

  cute.init(PIEZO_PIN);
  
  //Setup RF24
  radio.begin();
  radio.openReadingPipe(1, node_base);
  radio.setPALevel(RF24_PA_MIN);
  radio.startListening();
  radio.flush_rx();


  cute.play(S_CONNECTION);
  Serial.println("Booted");

  //soundSamples();
}

//+=============================================================================
// The repeating section of the code
//
void  loop ( )
{
  
//+===========================================================================
//This section deals with the leader's buttons, regardless of the "state" of the game

  //Reset everything button
  currentResetButtonState = digitalRead(RESET_BUTTON);
  if(currentResetButtonState == pressed) {
    //Do on button press, do Reset stuff
    redAvailable = 1;
    yellowAvailable = 1;
    greenAvailable = 1;
    blueAvailable = 1;
    digitalWrite(RED_LED, HIGH);
    digitalWrite(YELLOW_LED, HIGH);
    digitalWrite(GREEN_LED, HIGH);
    digitalWrite(BLUE_LED, HIGH);
    state = 0;
    cute.play(S_MODE3);
    radio.flush_rx();
    Serial.println("State set to 0. Everything reset.");

    while(digitalRead(RESET_BUTTON) == pressed) {
      //Do nothing while button is pressed
    }
  }

  //Reset + Arm the game button
  currentArmButtonState = digitalRead(ARM_BUTTON);
  if(currentArmButtonState == pressed) {
    //Do on button press, do Arm stuff
    redAvailable = 1;
    yellowAvailable = 1;
    greenAvailable = 1;
    blueAvailable = 1;
    digitalWrite(RED_LED, HIGH);
    digitalWrite(YELLOW_LED, HIGH);
    digitalWrite(GREEN_LED, HIGH);
    digitalWrite(BLUE_LED, HIGH);
    delay(500);
    state = 1;
    blinkToGo();
    resetLeds();
    cute.play(S_MODE3);
    radio.flush_rx();
    Serial.println("State set to 1. Locked and Loaded!");

    while(digitalRead(ARM_BUTTON) == pressed) {
      //Do nothing while button is pressed
    }
  }


  //2nd Chance button - Remaining people can try
  currentChanceButtonState = digitalRead(CHANCE_BUTTON);
  if(currentChanceButtonState == pressed) {
    //Do on button press, do Chance stuff
    blinkToGo();
    resetLeds();
    state = 1;
    cute.play(S_HAPPY_SHORT);
    Serial.println("State set to 1. Available Players can buzz");

    while(digitalRead(CHANCE_BUTTON) == pressed) {
      //Do nothing while button is pressed
    }
  }

  //2nd Chance button - Remaining people must rebuzz
  currentChanceMemoryButtonState = digitalRead(CHANCE_MEMORY_BUTTON);
  if(currentChanceMemoryButtonState == pressed) {
    //Do on button press, do Chance stuff
    blinkToGo();
    resetLeds();
    state = 1;
    cute.play(S_HAPPY_SHORT);
    radio.flush_rx();
    Serial.println("State set to 1. Available Players can buzz");

    while(digitalRead(CHANCE_MEMORY_BUTTON) == pressed) {
      //Do nothing while button is pressed
    }
  }

//+=============================================================================
// In this section, the RF-Signal gets processed
//

  if(radio.available() && (state == 1 or state == 0)) {
    //Reads the next package in the receive (rx) buffer
    radio.read(&recording, sizeof(recording));
    Serial.println(recording);

  //+=============================================================================
  // In the state 0 we want to lock out anyone who pushes the buzzer early
  //
  
    if(state == 0) {
      //Red Buzzer pressed early
      if(recording == RED_SIGNAL) {
        cute.play(S_FART1);
        redAvailable = 0; //make the buzzer unavailable
        digitalWrite(RED_LED, LOW);
        Serial.println("red disabled");
      }
      //Yellow buzzer pressed early
      if(recording == YELLOW_SIGNAL) {
        cute.play(S_FART1);
        yellowAvailable = 0; //make the buzzer unavailable
        digitalWrite(YELLOW_LED, LOW);
        Serial.println("yellow disabled");
      }
      //Green buzzer pressed early
      if(recording == GREEN_SIGNAL) {
        cute.play(S_FART1);
        greenAvailable = 0; //make the buzzer unavailable
        digitalWrite(GREEN_LED, LOW);
        Serial.println("green disabled");
      }
      //Blue buzzer pressed early
      if(recording == BLUE_SIGNAL) {
        cute.play(S_FART1);
        blueAvailable = 0; //make the buzzer unavailable
        digitalWrite(BLUE_LED, LOW);
        Serial.println("blue disabled");
      }
    } 
    
 
  //+=============================================================================
  // Everyone can buzz in
  //
    if(state == 1) {
      //Red buzzed
      if(recording == RED_SIGNAL && redAvailable == 1) {
        redAvailable = 0;
        cute.play(S_BUTTON_PUSHED);
        digitalWrite(RED_LED, LOW);
        delay(100);
        digitalWrite(RED_LED, HIGH);
        digitalWrite(YELLOW_LED, LOW);
        digitalWrite(GREEN_LED, LOW);
        digitalWrite(BLUE_LED, LOW);
        Serial.println("red buzzed in");

        state = 2;
      }

      //Yellow buzzed
      if(recording == YELLOW_SIGNAL && yellowAvailable == 1) {
        yellowAvailable = 0;
        cute.play(S_BUTTON_PUSHED);
        digitalWrite(YELLOW_LED, LOW);
        delay(100);
        digitalWrite(YELLOW_LED, HIGH);
        digitalWrite(RED_LED, LOW);
        digitalWrite(GREEN_LED, LOW);
        digitalWrite(BLUE_LED, LOW);
        Serial.println("yellow buzzed in");

        state = 2;
      }

      //Green buzzed
      if(recording == GREEN_SIGNAL && greenAvailable == 1) {
        greenAvailable = 0;
        cute.play(S_BUTTON_PUSHED);
        digitalWrite(GREEN_LED, LOW);
        delay(100);
        digitalWrite(GREEN_LED, HIGH);
        digitalWrite(YELLOW_LED, LOW);
        digitalWrite(RED_LED, LOW);
        digitalWrite(BLUE_LED, LOW);
        Serial.println("green buzzed in");

        state = 2;
      }

      //Blue buzzed
      if(recording == BLUE_SIGNAL && blueAvailable == 1) {
        blueAvailable = 0;
        cute.play(S_BUTTON_PUSHED);
        digitalWrite(BLUE_LED, LOW);
        delay(100);
        digitalWrite(BLUE_LED, HIGH);
        digitalWrite(YELLOW_LED, LOW);
        digitalWrite(GREEN_LED, LOW);
        digitalWrite(RED_LED, LOW);
        Serial.println("blue buzzed in");

        state = 2;
      }
    }
  }
    
}

//Resets the LEDs. If someone has already buzzed in, we want their LED to be off
//If they haven't, we want it to be on.
void resetLeds() {
  if(redAvailable == 1) {
    digitalWrite(RED_LED, HIGH);
  } else {
    digitalWrite(RED_LED, LOW);
  }

  if(yellowAvailable == 1) {
    digitalWrite(YELLOW_LED, HIGH);
  } else {
    digitalWrite(YELLOW_LED, LOW);
  }

  if(greenAvailable == 1) {
    digitalWrite(GREEN_LED, HIGH);
  } else {
    digitalWrite(GREEN_LED, LOW);
  }

  if(blueAvailable == 1) {
    digitalWrite(BLUE_LED, HIGH);
  } else {
    digitalWrite(BLUE_LED, LOW);
  }
}


void blinkToGo(){
  for (int i = 0; i < 3; i++) {
    digitalWrite(RED_LED,HIGH);
    digitalWrite(YELLOW_LED,HIGH);
    digitalWrite(GREEN_LED,HIGH);
    digitalWrite(BLUE_LED,HIGH);
    delay(100);
    digitalWrite(RED_LED,LOW);
    digitalWrite(YELLOW_LED,LOW);
    digitalWrite(GREEN_LED,LOW);
    digitalWrite(BLUE_LED,LOW);
    delay(100);
  }
}


void soundSamples(){
  //Sound examples
  Serial.println("HAPPY");
    cute.play(S_HAPPY);
  delay(500);
  Serial.println("CONNECTION");
    cute.play(S_CONNECTION);
  delay(500);
  Serial.println("DISCONNECTION");
    cute.play(S_DISCONNECTION);
  delay(500);
  Serial.println("BUTTON_PUSHED");
    cute.play(S_BUTTON_PUSHED);
  delay(500);
  Serial.println("MODE1");
    cute.play(S_MODE1);
  delay(500);
  Serial.println("MODE2");
    cute.play(S_MODE2);
  delay(500);
  Serial.println("MODE3");
    cute.play(S_MODE3);
  delay(500);
  Serial.println("SURPRISE");
    cute.play(S_SURPRISE);
  delay(500);
  Serial.println("OHOOH");
    cute.play(S_OHOOH);
  delay(500);
  Serial.println("OHOOH2");
    cute.play(S_OHOOH2);
  delay(500);
  Serial.println("CUDDLY");
    cute.play(S_CUDDLY);
  delay(500);
  Serial.println("SLEEPING");
    cute.play(S_SLEEPING);
  delay(500);
  Serial.println("HAPPY");
    cute.play(S_HAPPY);
  delay(500);
  Serial.println("SUPER_HAPPY");
    cute.play(S_SUPER_HAPPY);
  delay(500);
  Serial.println("HAPPY_SHORT");
    cute.play(S_HAPPY_SHORT);
  delay(500);
  Serial.println("SAD");
    cute.play(S_SAD);
  delay(500);
  Serial.println("CONFUSED");
    cute.play(S_CONFUSED);
  delay(500);
  Serial.println("FART1");
    cute.play(S_FART1);
  delay(500);
  Serial.println("FART2");
    cute.play(S_FART2);
  delay(500);
  Serial.println("FART3");
    cute.play(S_FART3);
  delay(500);
}