//#include
#define echoPin 6
#define trigPin 7
#define buzzerPin 8

// Initialize the library with its indicated pins.
// RS, RW, Enable, D4, D5, D6, D7.
// LiquidCrystal lcd(8, 9, 4, 5, 6, 7);

// Pin 10 para saber que es luz de fondo.
//const byte LuzFondo = 10;
int led = 12;   // Declare the variable pin of the Led.
char caracter;
String comando;
int maximumRange = 30;
int minimumRange = 0;

void setup()
{
  pinMode(led,OUTPUT);  // Initialize the LED pin as output:
  Serial.begin(9600);     // Port serial 115200 baud.
  /*lcd.begin(16, 2);         // Screen Format.
  lcd.clear();      // Deletes the screen and its upper left position.
  lcd.print("    Arduino     ");*/
  //delay(1000);
  pinMode(trigPin,OUTPUT);
  pinMode(echoPin,INPUT);
  pinMode(buzzerPin,OUTPUT);
}

void loop()
{
  
  //digitalWrite(led,HIGH);
  
  /*
  delay(50);
  digitalWrite(led,LOW);
  delay(50);
  digitalWrite(led,HIGH);
  delay(50);
  digitalWrite(led,LOW);
  delay(50);
  digitalWrite(led,HIGH);
  delay(50);
  digitalWrite(led,LOW);
  delay(50);
  ?/
  /*
     I'm reading character by character what is received by the serial channel
     (While some data arrives there), and I am linking them one after another
     In a chain. In practice, if we use the "Serial monitor" the while loop
     Will end when we press Enter. The delay is convenient not to saturate the
     Channel and that the concatenation is done in an orderly fashion.
  */
 /* while (Serial.available() > 0)
  {
    caracter = Serial.read();
    comando.concat(caracter);
    delay(10);
  }
*/
  int olcum = mesafe(maximumRange,minimumRange);
  Serial.print(olcum);
    if (olcum != 0)
      melodi(olcum * 10);
     else{
      digitalWrite(led, LOW);
      noTone(buzzerPin);
     }
     
  

  /*
     Once I already have the chain "finished", I check its value and make it
     The Arduino board reacts accordingly. Here we could do what
     That we would like: if the command is "such", lights a Led, if it is,
     Move a motor ... and so on.
  */
   //int kont=1;
   //if (kont == 1){
  // If the characters are received and true.
  //if (comando.equals("Luz_ON") == true)
  //{
    //digitalWrite(led, HIGH); // Turn on the Led 13.
    //Serial.write("ON - Led encendido.");    // Send this message to the PC.
    /*lcd.setCursor(0, 1);
    lcd.print("Luz ON.         "); // Show on LCD.*/
 // }

  //if (comando.equals("Luz_OFF") == true)
  //{
    //digitalWrite(led, LOW); // Turn off the Led 13.
   //Serial.write("OFF - Led apagado. ");  // Send this message to the PC.
    /*lcd.setCursor(0, 1);
    lcd.print("Luz OFF.        "); // Show on LCD.*,7*/
  //}
  //}

/*
  int deger = analogRead(potPin);
  Serial.println(deger);
  delay(100);
  */

  
  // We cleaned the chain to receive the next command again.
 
    comando = "";

}

int mesafe(int maxrange, int minrange){
  long duration, distance;
  digitalWrite(trigPin,LOW);
  delayMicroseconds(2);
  digitalWrite(trigPin,HIGH);
  delayMicroseconds(10);
  digitalWrite(trigPin,LOW);
  duration = pulseIn(echoPin,HIGH);
  distance = duration/58.2;
  delay(50);
  if (distance>=maxrange || distance<=minrange)
    return 0;
  else 
    return distance;

  
  }

  int melodi(int dly){
   tone(buzzerPin,440);
    digitalWrite(led,HIGH);
    delay(dly);
    noTone(buzzerPin);
    digitalWrite(led,LOW);
    delay(dly);
    }


