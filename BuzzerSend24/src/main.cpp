//Libarys
#include <Arduino.h>
#include <SPI.h>
#include <RF24.h>

// Definitions

const char BUZZER_PIN = 4;
bool currentBuzzerState;
const bool pressed = false;

const char LED = 2;

const int MESSAGE = 2020;
//RED = 1010, YELLOW = 2020, GREEN = 3030, BLUE = 4040

RF24 radio(9, 10); // CE, CNS
const byte node_main = 01; //address of the main node


void setup() {
  //Serial.begin(9600);

  pinMode(BUZZER_PIN, INPUT_PULLUP);
  pinMode(LED, OUTPUT);

  radio.begin();
  radio.openWritingPipe(node_main);
  //How strong is the signal, higher means more energy, 10uf elektrolydkondensator necessary
  radio.setPALevel(RF24_PA_MAX);
  //radio.setPALevel(RF24_PA_MIN);
  radio.stopListening();

  digitalWrite(LED, HIGH);
  delay(2000);
  digitalWrite(LED, LOW);

  //Serial.println("booted");

}


void loop() {

  //Read button
  currentBuzzerState = digitalRead(BUZZER_PIN);
  //On PullUp False is a Button press
  if(currentBuzzerState == pressed) {
    //Serial.println("button pressed");
    //Do on button press
    radio.flush_tx();
    digitalWrite(LED, HIGH);
    radio.write(&MESSAGE, sizeof(MESSAGE));
    //Serial.println("green");
    //Serial.println(MESSAGE);
    delay(2000);
    digitalWrite(LED, LOW);

    //Wait till button is released
    while(digitalRead(BUZZER_PIN) == pressed) {
      //Do nothing while button is pressed
    }
  }
  


}

