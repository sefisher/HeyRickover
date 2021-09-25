#define LED_BUILTIN 23

// the number of the LED pin
const int buzzerPin = 18;  // 16 corresponds to GPIO16
const int buttonPin = 32;  // the number of the pushbutton pin

// setting PWM properties
const int freq = 256;
const int buzzerChannel = 0;
const int resolution = 8;

boolean ledState = false;

void IRAM_ATTR buttonChange() {
  if (ledState == false) {
    // turn LED on
    digitalWrite(LED_BUILTIN, HIGH);
    ledState=true;
  } else {
    // turn LED off
    digitalWrite(LED_BUILTIN, LOW);
    ledState=false;
  }
}

// the setup function runs once when you press reset or power the board
void setup() {
  // initialize digital pin LED_BUILTIN as an output.
  pinMode(LED_BUILTIN, OUTPUT);
  pinMode(buttonPin, INPUT_PULLUP);
  attachInterrupt(digitalPinToInterrupt(buttonPin), buttonChange, RISING);
  ledcSetup(buzzerChannel, freq, resolution);
  
  // attach the channel to the GPIO to be controlled
  ledcAttachPin(buzzerPin, buzzerChannel);
}

// the loop function runs over and over again forever
void loop() {
  ledcWrite(buzzerChannel, 20);
  delay(1000);                       // wait for a second
  ledcWrite(buzzerChannel, 0);
  delay(1000);                       // wait for a second
}
