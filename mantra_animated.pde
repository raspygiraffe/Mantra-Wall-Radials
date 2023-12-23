float timeInterval; 
float timePast;
int textAlpha = 100;
int textFade = 2;

PFont groove;



void setup(){
  size(600, 600);
  groove = loadFont("aAbstractGroovy-48.vlw");
  

  //noSmooth();
  smooth();
  
  timePast = millis();
  timeInterval = 2000.0f; 
  
}

void textFade(){
  if (millis() > timeInterval + timePast){
    timePast = millis(); 
    textFade *= -1;
  }
  textAlpha += textFade;
}

void draw(){
  
  textFade();
  textSize(40);
  fill(255, 255, 255, textAlpha);
  textSize(56); 
  
  textAlign(CENTER); 
  textFont(groove);
  text("YOU ARE", (width/2), (height/2));
  text("LIGHT", (width/2), (height/2) + 60);
  
  for (int y = 0; y < height; y++){ 
    for (int x = 0; x < height; x++){ 
      float distanceFromCenter = dist(x, y, width/2, height/2); 
      stroke(255 - ( 2 * distanceFromCenter/3), 50, 50, 50);
      //stroke(255, 255 - ( 2 * distanceFromCenter/3), 50, 50);
      point(x, y);
    }
  }
}
