import processing.sound.*;
import processing.serial.*;
SoundFile note_do;
SoundFile note_re;
SoundFile note_mi;
SoundFile note_fa;
SoundFile note_sol;
SoundFile note_la;
SoundFile note_si;

boolean keyP=true;
char keyispressed;
int count=0;

boolean[] arr=new boolean[7];

Serial myPort;  // Create object from Serial class
String val;     // Data received from the serial port

void setup() {
  size(640, 360);
  noStroke();
  String portName = "COM4"; //change the 0 to a 1 or 2 etc. to match your port
  myPort = new Serial(this, portName, 9600);
   
  note_do = new SoundFile(this, "do1.mp3");
  note_re = new SoundFile(this, "re1.mp3");
  note_mi = new SoundFile(this, "mi1.mp3");
  note_fa = new SoundFile(this, "fa1.mp3");
  note_sol = new SoundFile(this, "sol1.mp3");
  note_la = new SoundFile(this, "la1.mp3");
  note_si = new SoundFile(this, "si1.mp3");
  keyispressed='a';
}      

void draw() {     
  while ( myPort.available() > 0){
    val = myPort.readStringUntil('\n');
    // photoresistor
    fill(0);
    ellipse(115,290,50,30);
    fill(0);
    ellipse(185,290,50,30);
    fill(0);
    ellipse(255,290,50,30);
    fill(0);
    ellipse(325,290,50,30);
    fill(0);
    ellipse(395,290,50,30);
    fill(0);
    ellipse(465,290,50,30);
    fill(0);
    ellipse(465,290,50,30);
    fill(0);
    ellipse(535,290,50,30);
    // to here
    // lasers
    fill(0,0,255);
    rect(100,10,30,100);    
    fill(0,0,255);
    rect(170,10,30,100);
    fill(0,0,255);
    rect(240,10,30,100);
    fill(0,0,255);
    rect(310,10,30,100);
    fill(0,0,255);
    rect(380,10,30,100);
    fill(0,0,255);
    rect(450,10,30,100);
    fill(0,0,255);
    rect(520,10,30,100);
    // to here
    if(val.equals("a\n")){
      fill(0);
      rect(105,110,20,180);
      note_do.play();
      note_re.stop();
      note_mi.stop();
      note_fa.stop();
      note_sol.stop();
      note_la.stop();
      note_si.stop();
    }else{
      fill(255,0,0);
      rect(105,110,20,180);
    }
    if(val.equals("s\n")){
      fill(0);
      rect(175,110,20,180);
      note_do.stop();
      note_re.play();
      note_mi.stop();
      note_fa.stop();
      note_sol.stop();
      note_la.stop();
      note_si.stop();
    }else{
      fill(255,0,0);
      rect(175,110,20,180);
    }
    if(val.equals("d\n")){
      fill(0);
      rect(245,110,20,180);
      note_do.stop();
      note_re.stop();
      note_mi.play();
      note_fa.stop();
      note_sol.stop();
      note_la.stop();
      note_si.stop();
    }else{
      fill(255,0,0);
      rect(245,110,20,180);
    }
    if(val.equals("f\n")){
      fill(0);
      rect(315,110,20,180);
      note_do.stop();
      note_re.stop();
      note_mi.stop();
      note_fa.play();
      note_sol.stop();
      note_la.stop();
      note_si.stop();
    }else{
      fill(255,0,0);
      rect(315,110,20,180);
    }
    if(val.equals("g\n")){
      fill(0);
      rect(385,110,20,180);
      note_do.stop();
      note_re.stop();
      note_mi.stop();
      note_fa.stop();
      note_sol.play();
      note_la.stop();
      note_si.stop();
    }else{
      fill(255,0,0);
      rect(385,110,20,180);
    }
    // rezervni
    fill(255,0,0);
    rect(455,110,20,180);
    fill(255,0,0);
    rect(525,110,20,180);
    
    
    if(val.equals("n\n")){
      fill(0);
      text("pls a!",100,120); 
    }
     
    if(val.charAt(1)=='S'){
      fill(0);
      rect(175,110,20,180);
      note_do.stop();
      note_re.play();
      note_mi.stop();
      note_fa.stop();
      note_sol.stop();
      note_la.stop();
      note_si.stop();
    }else{
      fill(255,0,0);
      rect(175,110,20,180);
    }
    if(val.charAt(2)=='D'){
      fill(0);
      rect(245,110,20,180);
      note_do.stop();
      note_re.stop();
      note_mi.play();
      note_fa.stop();
      note_sol.stop();
      note_la.stop();
      note_si.stop();
    }else{
      fill(255,0,0);
      rect(245,110,20,180);
    } 
    if(val.charAt(3)=='F'){
      fill(0);
      rect(315,110,20,180);
      note_do.stop();
      note_re.stop();
      note_mi.stop();
      note_fa.play();
      note_sol.stop();
      note_la.stop();
      note_si.stop();
    }else{
      fill(255,0,0);
      rect(315,110,20,180);
    }
   // trqbwa da se zapoi
   /*if(val.charAt(4)=='G'){
      fill(0);
      rect(385,110,20,180);
      note_do.stop();
      note_re.stop();
      note_mi.stop();
      note_fa.stop();
      note_sol.play();
      note_la.stop();
      note_si.stop();
    }else{
      fill(255,0,0);
      rect(385,110,20,180);
    }*/
    
    if(val.charAt(0)=='A' || val.charAt(1)=='S' || val.charAt(2)=='D' ||val.charAt(3)=='F' || val.charAt(4)=='G'){
      if(val.charAt(0)=='A'){
           myPort.write('d');
      }
    }
  }
}
