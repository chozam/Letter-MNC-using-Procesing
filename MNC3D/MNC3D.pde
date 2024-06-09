float pitch = 0;
float yaw = 0;
float roll = 0;
boolean upPressed, downPressed, leftPressed, rightPressed, ltPressed, gtPressed;
PShape mnc;

void setup() {
  size(750, 700, P3D);
  mnc = createShape(GROUP);
  
  //Huruf M
  PShape md = createShape();
  md.beginShape();
  md.vertex(0, 0, 0);
  md.vertex(0, 200, 0);
  md.vertex(40, 200, 0);
  md.vertex(40, 95, 0);
  md.vertex(75, 200, 0);
  md.vertex(115, 200, 0);
  md.vertex(150, 95, 0);
  md.vertex(150, 200, 0);
  md.vertex(190, 200, 0);
  md.vertex(190, 0, 0);
  md.vertex(130, 0, 0);
  md.vertex(95, 110, 0);
  md.vertex(60, 0, 0);
  md.vertex(0, 0, 0);
  md.endShape(CLOSE);
  
  PShape mb = createShape();
  mb.beginShape();
  mb.vertex(0, 0, -40);
  mb.vertex(0, 200, -40);
  mb.vertex(40, 200, -40);
  mb.vertex(40, 95, -40);
  mb.vertex(75, 200, -40);
  mb.vertex(115, 200, -40);
  mb.vertex(150, 95, -40);
  mb.vertex(150, 200, -40);
  mb.vertex(190, 200, -40);
  mb.vertex(190, 0, -40);
  mb.vertex(130, 0, -40);
  mb.vertex(95, 110, -40);
  mb.vertex(60, 0, -40);
  mb.vertex(0, 0, -40);
  mb.endShape(CLOSE);
  
  //Mengatur ketebalan atau lebar dari huruf 3d
  PShape m1 = createShape();
  m1.beginShape();
  addDepth(m1, 150, 200, 0, 190, 200, 0, 190, 200, -40, 150, 200, -40);
  m1.endShape(CLOSE);
   
  PShape m2 = createShape();
  m2.beginShape();
  addDepth(m2, 75, 200, 0, 115, 200, 0, 115, 200, -40, 75, 200, -40);
  m2.endShape(CLOSE);
 
  PShape m3 = createShape();
  m3.beginShape();
  addDepth(m3, 0, 200, 0, 40, 200, 0, 40, 200, -40, 0, 200, -40);
  m3.endShape(CLOSE);
  
  PShape m4 = createShape();
  m4.beginShape();
  addDepth(m4, 190, 0, 0, 190, 0, 0, 190, 0, -40, 190, 0, -40);
  m4.endShape(CLOSE);
  
  PShape m5 = createShape();
  m5.beginShape();
  addDepth(m5, 0, 0, 0, 60, 0, 0, 60, 0, -40, 0, 0, -40);
  m5.endShape(CLOSE);
  
  PShape m6 = createShape();
  m6.beginShape();
  addDepth(m6, 0, 0, 0, 0, 200, 0, 0, 200, -40, 0, 0, -40);
  m6.endShape(CLOSE);
  
  PShape m7 = createShape();
  m7.beginShape();
  addDepth(m7, 40, 200, 0, 40, 95, 0, 40, 95, -40, 40, 200, -40);
  m7.endShape(CLOSE);
  
  PShape m8 = createShape();
  m8.beginShape();
  addDepth(m8, 190, 200, 0, 190, 0, 0, 190, 0, -40, 190, 200, -40);
  m8.endShape(CLOSE);
  
  PShape m9 = createShape();
  m9.beginShape();
  addDepth(m9, 190, 0, 0, 130, 0, 0, 130, 0, -40, 190, 0, -40);
  m9.endShape(CLOSE);
  
  PShape m10 = createShape();
  m10.beginShape();
  addDepth(m10, 130, 0, 0, 95, 110, 0, 95, 110, -40, 130, 0, -40);
  m10.endShape(CLOSE);
  
  PShape m11 = createShape();
  m11.beginShape();
  addDepth(m11, 95, 110, 0, 60, 0, 0, 60, 0, -40, 95, 110, -40);
  m11.endShape(CLOSE);
  
  PShape m12 = createShape();
  m12.beginShape();
  addDepth(m12, 40, 200, 0, 40, 95, 0, 40, 95, -40, 40, 200, -40);
  m12.endShape(CLOSE);
  
  PShape m13 = createShape();
  m13.beginShape();
  addDepth(m13, 40, 95, 0, 75, 200, 0, 75, 200, -40, 40, 95, -40);
  m13.endShape(CLOSE);
  
  PShape m14 = createShape();
  m14.beginShape();
  addDepth(m14, 95, 110, 0, 60, 0, 0, 60, 0, -40, 95, 110, -40);
  m14.endShape(CLOSE);
  
  PShape m15 = createShape();
  m15.beginShape();
  addDepth(m15, 115, 200, 0, 150, 95, 0, 150, 95, -40, 115, 200, -40);
  m15.endShape(CLOSE);
  
  PShape m16 = createShape();
  m16.beginShape();
  addDepth(m16, 150, 95, 0, 150, 200, 0, 150, 200, -40, 150, 95, -40);
  m16.endShape(CLOSE);
  
  mnc.addChild(md);
  mnc.addChild(mb);
  mnc.addChild(m1);
  mnc.addChild(m2);
  mnc.addChild(m3);
  mnc.addChild(m4);
  mnc.addChild(m5);
  mnc.addChild(m6);
  mnc.addChild(m7);
  mnc.addChild(m8);
  mnc.addChild(m9);
  mnc.addChild(m10);
  mnc.addChild(m11);
  mnc.addChild(m12);
  mnc.addChild(m13);
  mnc.addChild(m14);
  mnc.addChild(m15);
  mnc.addChild(m16);
  
  //Huruf N
  PShape nd = createShape();
  nd.beginShape();
  nd.vertex(210, 0, 0);
  nd.vertex(210, 200, 0);
  nd.vertex(250, 200, 0);
  nd.vertex(250, 80, 0);
  nd.vertex(350, 200, 0);
  nd.vertex(390, 200, 0);
  nd.vertex(390, 0, 0);
  nd.vertex(350, 0, 0);
  nd.vertex(350, 120, 0);
  nd.vertex(250, 0, 0);
  nd.vertex(210, 0, 0);
  nd.endShape(CLOSE);
  
  PShape nb = createShape();
  nb.beginShape();
  nb.vertex(210, 0, -40);
  nb.vertex(210, 200, -40);
  nb.vertex(250, 200, -40);
  nb.vertex(250, 80, -40);
  nb.vertex(350, 200, -40);
  nb.vertex(390, 200, -40);
  nb.vertex(390, 0, -40);
  nb.vertex(350, 0, -40);
  nb.vertex(350, 120, -40);
  nb.vertex(250, 0, -40);
  nb.vertex(210, 0, -40);
  nb.endShape(CLOSE);
  
  PShape n1 = createShape();
  n1.beginShape();
  addDepth(n1, 210, 0, 0, 210, 200, 0, 210, 200, -40, 210, 0, -40);
  n1.endShape(CLOSE);
  
  PShape n2 = createShape();
  n2.beginShape();
  addDepth(n2, 210, 200, 0, 250, 200, 0, 250, 200, -40, 210, 200, -40);
  n2.endShape(CLOSE);
  
  PShape n3 = createShape();
  n3.beginShape();
  addDepth(n3, 250, 200, 0, 250, 80, 0, 250, 80, -40,  250, 200, -40);
  n3.endShape(CLOSE);
  
  PShape n4 = createShape();
  n4.beginShape();
  addDepth(n4, 250, 80, 0, 350, 200, 0, 350, 200, -40, 250, 80, -40);
  n4.endShape(CLOSE);
  
  PShape n5 = createShape();
  n5.beginShape();
  addDepth(n5, 350, 200, 0, 390, 200, 0, 390, 200, -40, 350, 200, -40);
  n5.endShape(CLOSE);
  
  PShape n6 = createShape();
  n6.beginShape();
  addDepth(n6, 390, 200, 0, 390, 0, 0, 390, 0, -40, 390, 200, -40);
  n6.endShape(CLOSE);
  
  PShape n7 = createShape();
  n7.beginShape();
  addDepth(n7, 390, 0, 0, 350, 0, 0, 350, 0, -40, 390, 0, -40);
  n7.endShape(CLOSE);
  
  PShape n8 = createShape();
  n8.beginShape();
  addDepth(n8, 350, 0, 0, 350, 120, 0, 350, 120, -40, 350, 0, -40);
  n8.endShape(CLOSE);
  
  PShape n9 = createShape();
  n9.beginShape();
  addDepth(n9, 350, 120, 0, 250, 0, 0, 250, 0, -40, 350, 120, -40);
  n9.endShape(CLOSE);
  
  PShape n10 = createShape();
  n10.beginShape();
  addDepth(n10, 250, 0, 0, 210, 0, 0, 210, 0, -40, 250, 0, -40);
  n10.endShape(CLOSE);
  
  mnc.addChild(nd);
  mnc.addChild(nb);
  mnc.addChild(n1);
  mnc.addChild(n2);
  mnc.addChild(n3);
  mnc.addChild(n4);
  mnc.addChild(n5);
  mnc.addChild(n6);
  mnc.addChild(n7);
  mnc.addChild(n8);
  mnc.addChild(n9);
  mnc.addChild(n10);
  
  //Huruf C
  PShape cd = createShape();
  cd.beginShape();
  cd.vertex(595, 20, 0);
  cd.bezierVertex(350, -90, 0, 350, 290, 0, 595, 185, 0);
  cd.vertex(575, 140, 0);
  cd.bezierVertex(440, 200, 0, 440, 0, 0, 575, 60, 0);
  cd.endShape(CLOSE);
  
  PShape cb = createShape();
  cb.beginShape();
  cb.vertex(595, 20, -40);
  cb.bezierVertex(350, -90, -40, 350, 290, -40, 595, 185, -40);
  cb.vertex(575, 140, -40);
  cb.bezierVertex(440, 200, -40, 440, 0, -40, 575, 60, -40);
  cb.endShape(CLOSE);
  
  PShape c1 = createShape();
  c1.beginShape();
  c1.vertex(595, 20, 0);
  c1.bezierVertex(350, -90, 0, 350, 290, 0, 595, 185, 0);
  c1.vertex(595, 185, -40);
  c1.bezierVertex(350, 290, -40, 350, -90, -40, 595, 20, -40);
  c1.vertex(595, 20, 0);
  c1.endShape(CLOSE);
  
  PShape c2 = createShape();
  c2.beginShape();
  c2.vertex(575, 140, 0);
  c2.bezierVertex(440, 200, 0, 440, 0, 0, 575, 60, 0);
  c2.vertex(575, 60, -40);
  c2.bezierVertex(440, 0, -40, 440, 200, -40, 575, 140, -40);
  c2.vertex(575, 140, 0);
  c2.endShape(CLOSE);
  
  PShape c3 = createShape();
  c3.beginShape();
  addDepth(c3, 595, 185, 0, 575, 140, 0, 575, 140, -40, 595, 185, -40);
  c3.endShape(CLOSE);

  PShape c4 = createShape();
  c4.beginShape();
  addDepth(c4, 595, 20, 0, 575, 60, 0, 575, 60, -40, 595, 20, -40);
  c4.endShape(CLOSE);
  
  mnc.addChild(cd);
  mnc.addChild(cb);
  mnc.addChild(c1);
  mnc.addChild(c2);
  mnc.addChild(c3);
  mnc.addChild(c4);
  centerObject(mnc);
}

void draw() {
  translate(width/2, height/2, 0);
  background(204);
  noStroke();
  
  if (upPressed) {
    pitch -= radians(1);
  }
  if (downPressed) {
    pitch += radians(1);
  }
  if (leftPressed) {
    yaw -= radians(1);
  }
  if (rightPressed) {
    yaw += radians(1);
  }
  
  if (ltPressed) {
    roll -= radians(1);
  }
  if (gtPressed) {
    roll += radians(1);
  }

  pitch = pitch % TWO_PI;
  yaw = yaw % TWO_PI;
  roll = roll % TWO_PI;
  
  rotateX(pitch);
  rotateY(yaw);
  rotateZ(roll);
  shape(mnc);
}

void keyPressed() {
  if (keyCode == UP) {
    upPressed = true;
  }
  if (keyCode == DOWN) {
    downPressed = true;
  }
  if (keyCode == LEFT) {
    leftPressed = true;
  }
  if (keyCode == RIGHT) {
    rightPressed = true;
  }
  if (key == '<') {
    ltPressed = true;
  }
  if (key == '>') {
    gtPressed = true;
  }
}

void keyReleased() {
  if (keyCode == UP) {
    upPressed = false;
  }
  if (keyCode == DOWN) {
    downPressed = false;
  }
  if (keyCode == LEFT) {
    leftPressed = false;
  }
  if (keyCode == RIGHT) {
    rightPressed = false;
  }
  if (key == '<') {
    ltPressed = false;
  }
  if (key == '>') {
    gtPressed = false;
  }
}

void addDepth(PShape n, float x1, float y1, float z1, float x2, float y2, float z2, float x3, float y3, float z3, float x4, float y4, float z4){
  n.vertex(x1, y1, z1);
  n.vertex(x2, y2, z2);
  n.vertex(x3, y3, z3);
  n.vertex(x4, y4, z4);
  n.vertex(x1, y1, z1);
}

void centerObject(PShape obj) {
  float minX = Float.MAX_VALUE;
  float minY = Float.MAX_VALUE;
  float minZ = Float.MAX_VALUE;
  float maxX = Float.MIN_VALUE;
  float maxY = Float.MIN_VALUE;
  float maxZ = Float.MIN_VALUE;
  
  for (int i = 0; i < obj.getChildCount(); i++) {
    PShape child = obj.getChild(i);
    for (int j = 0; j < child.getVertexCount(); j++) {
      PVector v = child.getVertex(j);
      minX = min(minX, v.x);
      minY = min(minY, v.y);
      minZ = min(minZ, v.z);
      maxX = max(maxX, v.x);
      maxY = max(maxY, v.y);
      maxZ = max(maxZ, v.z);
    }
  }
  
  float centerX = (minX + maxX) / 2;
  float centerY = (minY + maxY) / 2;
  float centerZ = (minZ + maxZ) / 2;
  
  obj.resetMatrix();
  obj.translate(-centerX, -centerY, -centerZ);
}
