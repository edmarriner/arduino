// Set up a reference to each of the pins
int red = 11;
int green = 10;
int blue = 9;

// Hold the initial colour value
int colour = 10;

// Direction of fade
boolean FADING_UP = true;
 
void setup() {
  pinMode(red, OUTPUT);
  pinMode(green, OUTPUT);
  pinMode(blue, OUTPUT);  
}
 
void loop() {

  if(colour == 255 && FADING_UP == true) {
    FADING_UP = false;
  }

  if(colour == 10 && FADING_UP == false) {
    FADING_UP = true;
  }

  set(0, colour, colour);

  if(FADING_UP) {
    colour++;
  } else {
    colour--;
  }

  delay(10);
  
}
 
void set(int redValue, int greenValue, int blueValue)
{
  analogWrite(red, redValue);
  analogWrite(green, greenValue);
  analogWrite(blue, blueValue);  
}
