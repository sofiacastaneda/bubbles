ArrayList balls = new ArrayList();  

PImage cososenzanome;
PImage bubble;
PImage bubble1;
PImage bubble2;
PImage bubble3;
PImage bubble4;
PImage bubble5;
PImage bubble6;
PImage bubble7;

float x = mouseX;
float y = mouseY;
float big = 30;

boolean bubbleAnimation = false;
boolean bubbleGrowing = false;


void setup(){

  cososenzanome=loadImage ("cosino.png");
  bubble=loadImage ("bubble.png");
  bubble1=loadImage ("bubble1.png");
  bubble2=loadImage ("bubble2.png");
  bubble3=loadImage ("bubble3.png");
  bubble4=loadImage ("bubble4.png");
  bubble5=loadImage ("bubble5.png");
  bubble6=loadImage ("bubble6.png");
  bubble7=loadImage ("bubble7.png");
  size (1000,700);
}


void draw(){
  noCursor();
  background (255);
  imageMode (CORNER);
  image(cososenzanome,mouseX-45,mouseY-45);
  if (mousePressed){ 
    x = mouseX;
    y = mouseY;

    if (bubbleGrowing == false){
      bubbleGrowing = true;

      big = 30;
    }    

    big = big + 1;
  }

  if (bubbleAnimation || bubbleGrowing) {

    float y2 = y;
    if (bubbleAnimation) {
      x=x+2;
      y2 = y + sin(x / 13) * 10;
    }

    smooth();
    strokeWeight (5);
    stroke (random(255),random(255),random(255),100);
    fill (random(255),60);
    imageMode (CENTER);
  }

  for (int i = 0; i < balls.size(); i++) {  
    Bolle bolle = (Bolle) balls.get(i);  
    bolle.move();
    bolle.drawShape();
  }
}


void mouseReleased () {
  bubbleAnimation = true;
  bubbleGrowing = false;
}

void mousePressed() {
  int bubbleNr = round(random(7));
  if (bubbleNr == 0) {
    bubble = bubble;
  }
  if (bubbleNr == 1) {
    bubble = bubble1;
  }
  if (bubbleNr == 2) {
    bubble = bubble2;
  }
  if (bubbleNr == 3) {
    bubble = bubble3;
  }
  if (bubbleNr == 4) {
    bubble = bubble4;
  }
  if (bubbleNr == 5) {
    bubble = bubble5;
  }
  if (bubbleNr == 6) {
    bubble = bubble6;
  }
  if (bubbleNr == 7) {
    bubble = bubble7;
  }


  Bolle bolle = new Bolle(mouseX, mouseY, bubble);
  balls.add(bolle);

}
















