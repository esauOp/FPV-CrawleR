
/* Arduino RC Board
 * SN754410 H-bridge motor driver.
 * FrSky Rx module.
 * By: @esauOp
*/

#define input_ch1 11
#define input_ch2 9
#define input_ch3 10

#define motor1_a 2
#define motor1_b 4
#define motor1_pwm 3

#define motor2_a 7
#define motor2_b 6
#define motor2_pwm 5

int ch1;
int ch2;
int ch3;

int arm = 0; // Engine
int threshold = 30;

int movent; // Forward/Back
int turn;   // Left/Right

int speed_val_m1; // value for motor speed
int speed_val_m2;

void setup() {
  pinMode(input_ch1, INPUT);
  pinMode(input_ch2, INPUT);
  pinMode(input_ch3, INPUT);

  pinMode(motor1_a, OUTPUT);  //Set control pins to be outputs
  pinMode(motor1_b, OUTPUT);
  pinMode(motor2_a, OUTPUT);
  pinMode(motor2_b, OUTPUT);

  pinMode(motor1_pwm, OUTPUT);
  analogWrite(motor1_pwm, 0);
  
  pinMode(motor2_pwm, OUTPUT);
  analogWrite(motor2_pwm, 0);

  Serial.begin(9600); // for debugging
}

void loop() {
  ch1 = pulseIn(input_ch1, HIGH, 25000); // Read the pulse width of  
  ch2 = pulseIn(input_ch2, HIGH, 25000); // each channel
  ch3 = pulseIn(input_ch3, HIGH, 25000);

  Serial.print("Ch1: "); Serial.println(ch1);
  Serial.print("Ch2: "); Serial.println(ch2);
  Serial.print("Ch3: "); Serial.println(ch3);

  // Engaged threshold
  if(ch1>(1000+threshold)){Serial.println("Left Switch: Engaged"); arm = 1;}
  if(ch1<(1000+threshold)){Serial.println("Left Switch: Disengaged"); arm = 0;}

  if(arm){
    movent = map(ch2, 1000,2000, -500, 500);      //center over zero
    speed_val_m1 = constrain(movent, -255, 255);  //only pass values whose absolutes are
                                                  //valid pwm values
                                            
    /* What we're doing here is determining whether we want to move
     * forward or backward
     */
    if(movent>threshold){
      digitalWrite(motor1_a, HIGH);
      digitalWrite(motor1_b, LOW);
    }
    else if(movent<(threshold*(-1))){
      digitalWrite(motor1_a, LOW);
      digitalWrite(motor1_b, HIGH);
      speed_val_m1=abs(speed_val_m1);
    }
    else{
      digitalWrite(motor1_a, LOW);
      digitalWrite(motor1_b, LOW);
    }
    
    // control the speed 0- 255
    Serial.print("M1_PWM: "); Serial.println(speed_val_m1);
    analogWrite(motor1_pwm, speed_val_m1);    // output speed as
                                              // PWM value
                                                
    
    /* Here we're determining whether a left or a right turn is being 
     * executed
     */
    turn = map(ch3,1000,2000,-500,500);
    speed_val_m2 = constrain(turn, -255, 255);
    
    
    if(turn>threshold){
      digitalWrite(motor2_a, HIGH);
      digitalWrite(motor2_b, LOW);
    }
    else if(turn<(threshold*(-1))){
      digitalWrite(motor2_a, LOW);
      digitalWrite(motor2_b, HIGH);
      speed_val_m2=abs(speed_val_m2);
    }
    else{
      digitalWrite(motor2_a, LOW);
      digitalWrite(motor2_b, LOW);
    }
    
    // control the speed 0- 255
    Serial.print("M2_PWM: "); Serial.println(speed_val_m2);
    analogWrite(motor2_pwm, 250);     // output speed as
                                      // PWM value
  }
  else{
    digitalWrite(motor1_a, LOW);
    digitalWrite(motor1_b, LOW);
    digitalWrite(motor2_a, LOW);
    digitalWrite(motor2_b, LOW);
  }
  
  delay(100);
}
