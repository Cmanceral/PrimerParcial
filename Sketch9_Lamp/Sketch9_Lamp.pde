float rotation = 0;
float increment = 0;
void setup(){
  size(600,600);
  smooth();
}

void draw(){
  background(255);
  
  translate(width/2, 0);
  increment += 0.5;
  rotation += increment;
  rotate(radians(rotation));
  
  if(rotation >= 20 || rotation <=-20){
    increment *= -1;
  }

  lamp(0, 0);
  
  println(rotation);
  
  
 
}

void lamp( float x, float y){
  
  //rect(x, y, 200,200);
  float xSwing = 0;
  line(x, 0, xSwing, height*0.4);
  
  beginShape();
  vertex(-50, height*0.4);
  vertex(50, height*0.4);
  vertex(100, height*0.6);
  vertex(-100, height*0.6);
  endShape(CLOSE);
  
  beginShape();
  vertex(-100, height*0.6);
  vertex(100, height*0.6);
  vertex(400, height*2);
  vertex(-400, height*2);
  endShape(CLOSE);
}
