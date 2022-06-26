#include <Mouse.h>

int deadzone = 2;

int centreX = 0;
int centreY = 0;

void setup()
{
  pinMode(A0, INPUT);
  pinMode(A1, INPUT);
  
  centreX = analogRead(A0);
  centreY = analogRead(A1);

  Serial.begin(9600); //This pipes to the serial monitor
  Serial.println("Initialize Serial Monitor");

  Serial1.begin(9600); //This is the UART, pipes to sensors attached to board
  Serial1.println("Initialize Serial Hardware UART Pins");
}

void loop()
{
  int x = analogRead(A0) - centreX;
  int y = analogRead(A1) - centreY;

  Serial.print("move ");
  Serial.print(x);
  Serial.print(", ");
  Serial.print(y);
  Serial.println();

  if(abs(x) >= deadzone || abs(y) >= deadzone) 
    Mouse.move(x, y, 0);
  
  delay(8);
}
