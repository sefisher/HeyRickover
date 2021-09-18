#define LED_BUILTIN 23

// the number of the LED pin
const int buzzerPin = 18;  // 16 corresponds to GPIO16

// setting PWM properties
const int freq = 256;
const int buzzerChannel = 0;
const int resolution = 8;

// the setup function runs once when you press reset or power the board
void setup() {
  // initialize digital pin LED_BUILTIN as an output.
  pinMode(LED_BUILTIN, OUTPUT);
  ledcSetup(buzzerChannel, freq, resolution);
  
  // attach the channel to the GPIO to be controlled
  ledcAttachPin(buzzerPin, buzzerChannel);
}

// the loop function runs over and over again forever
void loop() {
  digitalWrite(LED_BUILTIN, HIGH);   // turn the LED on (HIGH is the voltage level)
  ledcWrite(buzzerChannel, 20);
  delay(1000);                       // wait for a second
  digitalWrite(LED_BUILTIN, LOW);    // turn the LED off by making the voltage LOW
  ledcWrite(buzzerChannel, 0);
  delay(1000);                       // wait for a second
}
