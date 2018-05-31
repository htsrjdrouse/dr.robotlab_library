#include <Servo.h>
Servo myservo;  // create servo object to control a servo

#include <Wire.h>
#include <SoftwareSerial.h>

int washpin = 10; 
int drypin = 9; 
int pcvpin = 6; 
int heatpin = 13; 
int turnon5vpin = 5;
int tempsensor = A0;
//int enablePin = 11;
int valveservo = 11;
int killsmoothiePin = 3;
int readkill = 2;


String firstValue;
String cmd;
int secondValue;
int pumponflag = 0;
int fillflag = 1;
int heatflag = 1;
int washval = 105;
int dryval = 255;
int heatval = 255;
int pcvval = 255;
int valveservoval = 100;
int pumpdelay = 0;
int pumpdelayct = 0;



void setup() {
  Serial.begin(9600);
  Serial.println("washdrypcv_valveservo_electrocaloric");


  // put your setup code here, to run once:
  //myservo.attach(valveservo);  // attaches the servo on pin 9 to the servo object
  //pinMode(tempsensor, INPUT);
  pinMode(killsmoothiePin, OUTPUT);
  pinMode(readkill, INPUT);
  //digitalWrite(enablePin,LOW);
  //pinMode(washpin, OUTPUT);
  analogWrite(valveservo, 0);
  analogWrite(pcvpin, 0);
  analogWrite(drypin, 0);
  analogWrite(heatpin, 0);
  analogWrite(turnon5vpin, 0);
  analogWrite(washpin, 0);
  digitalWrite(killsmoothiePin, LOW);

}

void loop() {

  if (digitalRead(readkill) == HIGH){
   delay(100);
   digitalWrite(killsmoothiePin, HIGH);
   delay(100);
   Serial.println("killbuttonpressed");
   delay(100);
   digitalWrite(killsmoothiePin, HIGH);
  }
  else {
    digitalWrite(readkill, LOW);
  }
  if ((digitalRead(tempsensor) == HIGH) and (fillflag == 0)){
    analogWrite(pcvpin, 255);
    pumponflag = 1;
    delay(pumpdelay);
    pumpdelayct = 0;
  }
  else if ((digitalRead(tempsensor) == LOW) and (pumponflag == 1) and (fillflag == 0)) {
    pumpdelayct = pumpdelayct + 1;
    if (pumpdelayct == pumpdelay){
     analogWrite(pcvpin, 0); 
     pumponflag = 0;
    }
  } 

  // put your main code here, to run repeatedly:
  if (Serial.available() >0 ){
   cmd = Serial.readStringUntil('\n');
   int spaceIndex = cmd.indexOf(' ');
   if (spaceIndex > -1){
      int secondSpaceIndex = cmd.indexOf(' ', spaceIndex+1);
      int valflag = 1;
      firstValue = cmd.substring(0, spaceIndex);
      String preSecondValue = cmd.substring(spaceIndex+1, secondSpaceIndex);
      secondValue = preSecondValue.toInt();
    }
   else {
      int valflag = 0;
      secondValue = 0;
      firstValue = cmd;
   }

  if (firstValue == "washon"){
    analogWrite(washpin, washval);
    delay(100);
  }
  else if (firstValue == "killsmoothieon"){
    digitalWrite(killsmoothiePin, HIGH);
  }
  else if (firstValue == "killsmoothieoff"){
    digitalWrite(killsmoothiePin, LOW);
  }
  else if (firstValue == "washoff"){
    analogWrite(washpin, 0);
  }
  else if (firstValue == "turnon5v"){
    analogWrite(turnon5vpin, 255);
  } 
  else if (firstValue == "turnoff5v"){
    analogWrite(turnon5vpin, 0);
  }
  else if (firstValue == "dryon"){
    analogWrite(drypin, dryval);
  }
  else if (firstValue == "dryoff"){
    analogWrite(drypin, 0);
  }
    else if (firstValue == "manpcv"){
    fillflag = 1;
  }
  else if (firstValue == "feedbackpcv"){
    fillflag = 0;
  } 
  else if (firstValue == "pcvon"){
    if (fillflag == 1){
     analogWrite(pcvpin, pcvval);
    }
  }
  else if (firstValue == "pcvoff"){
    if (fillflag == 1){
     analogWrite(pcvpin, 0);
    }
  }
  else if (firstValue == "manheat"){
    heatflag = 1;
  }
  else if (firstValue == "feedbackheat"){
    heatflag = 0;
  } 
  else if (firstValue == "heaton"){
    if (heatflag == 1){
     analogWrite(heatpin, heatval);
    }
  }
  else if (firstValue == "heatoff"){
    if (heatflag == 1){
     analogWrite(heatpin, 0);
    }
  }
  else if (firstValue == "setwashval"){
    washval = secondValue;
  }
  else if (firstValue == "setdryval"){
    dryval = secondValue;
  }
  else if (firstValue == "setpcvval"){
    pcvval = secondValue;
  }
  else if (firstValue == "setheatval"){
    heatval = secondValue;
  }
  else if (firstValue == "valveservo"){
    myservo.write(secondValue);
  }
  else if (firstValue == "readtemp"){
    Serial.println(analogRead(tempsensor));
  }

  else if (firstValue == "help"){
   Serial.println("wash_dry_pcv_kill help 17 lines");
   Serial.println("washon: washpin on");
   Serial.println("setwashval: adjust the washing flow rate");
   Serial.println("dryon: drypin on");
   Serial.println("setdryval: adjust the drying flow rate");
   Serial.println("setpcvval: adjust the pressure compensation flow rate");
   Serial.println("setpumpdelay: adjust the delay time after the liquid level sensor turns on and the pump turns off");
   Serial.println("pcvon: manually turn pcv pump on (this turns off closed loop feedback)");
   Serial.println("pcvoff: manually turn pcv pump off (this turns off closed loop feedback)");
   Serial.println("manpcv: turn on pcv manual mode");
   Serial.println("feedbackpcv: turn off pcv manual mode and enable closed loop feedback");
   Serial.println("revivemotors: killPin 0 and enablePin LOW");
   Serial.println("killmotors: killPin 1 and enablePin HIGH");
   Serial.println("valveservo: set the PWM valve to move the valve");
   Serial.println("readsensepin: reads the pcv sensor pin");
   Serial.println("turnon5v: applies 5 volts to servo valve");
   Serial.println("turnoff5v: disconnects 5 volts to servo valve");
  }
   
  }
  delay(30);

}
