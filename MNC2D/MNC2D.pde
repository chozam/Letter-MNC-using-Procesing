PShape mnc;
float angle = 0;
float scale = 1;
boolean mirror = false;
int posX = 75, posY = 250;

boolean moveUp, moveDown, moveLeft, moveRight;
boolean rotateLeft, rotateRight, rotateClockwise, rotateCounterClockwise;
boolean scaleUp, scaleDown;
boolean flipHorizontal;

void setup(){
  size(1000, 700, P2D);
 
  mnc = createShape(GROUP);
  
  //Huruf M
  PShape m = createShape();
  m.beginShape();
  m.vertex(0, 0);
  m.vertex(0, 200);
  m.vertex(40, 200);
  m.vertex(40, 95);
  m.vertex(75, 200);
  m.vertex(115, 200);
  m.vertex(150, 95);
  m.vertex(150, 200);
  m.vertex(190, 200);
  m.vertex(190, 0);
  m.vertex(130, 0);
  m.vertex(95, 110);
  m.vertex(60, 0);
  m.endShape(CLOSE);
  
  //Huruf N
  PShape n = createShape();
  n.beginShape();
  n.vertex(210, 0);
  n.vertex(210, 200);
  n.vertex(250, 200);
  n.vertex(250, 80);
  n.vertex(350, 200);
  n.vertex(390, 200);
  n.vertex(390, 0);
  n.vertex(350, 0);
  n.vertex(350, 120);
  n.vertex(250, 0);
  n.endShape(CLOSE);
  
  //Huruf C
  PShape c = createShape();
  c.beginShape();
  c.vertex(595, 20);
  c.bezierVertex(350, -90, 350, 290, 595, 185);
  c.vertex(575, 140);
  c.bezierVertex(440, 200, 440, 0, 575, 60);
  c.endShape(CLOSE);
  
  mnc.addChild(m);
  mnc.addChild(n);
  mnc.addChild(c);
}

void draw(){
 noStroke();
 background(204);
 translate(posX, posY); // Pusat dari huruf M untuk rotasi
 if (mirror) scale(-1, 1); // Pembalikan horizontal
 scale(scale); // Skala
 rotate(angle);
 shape(mnc);
 
 // Menggerakkan bangun
  if (moveUp) {
    posY -= 5;
  }
  if (moveDown) {
    posY += 5;
  }
  if (moveLeft) {
    posX -= 5;
  }
  if (moveRight) {
    posX += 5;
  }
  if (rotateClockwise) {
    angle += 0.1;
  }
  if (rotateCounterClockwise) {
    angle -= 0.1;
  }
  if (scaleUp) {
    scale += 0.01;
  }
  if (scaleDown) {
    scale -= 0.01;
  }
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) moveUp = true;
    if (keyCode == DOWN) moveDown = true;
    if (keyCode == LEFT) moveLeft = true;
    if (keyCode == RIGHT) moveRight = true;
  } else {
    if (key == 'a') rotateCounterClockwise = true;
    if (key == 'd') rotateClockwise = true;
    if (key == 's') scaleUp = true;
    if (key == 'w') scaleDown = true;
    if (key == 'm') flipHorizontal = true;
  }
}

void keyReleased() {
  if (key == CODED) {
    if (keyCode == UP) moveUp = false;
    if (keyCode == DOWN) moveDown = false;
    if (keyCode == LEFT) moveLeft = false;
    if (keyCode == RIGHT) moveRight = false;
  } else {
    if (key == 'a') rotateCounterClockwise = false;
    if (key == 'd') rotateClockwise = false;
    if (key == 's') scaleUp = false;
    if (key == 'w') scaleDown = false;
    if (key == 'm') {
      flipHorizontal = false;
      mirror = !mirror;
    }
  }
}
