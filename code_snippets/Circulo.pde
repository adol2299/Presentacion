class Circulo{
  PVector pos = new PVector (width / 2, height / 2);
  PVector vel ;
  int radio = 20;
  color c = color(random(255), random(255), random(255));
  
  Circulo(PVector P_pos){
    pos = P_pos;
    vel = PVector.random2D();
  }
  
  void display(){
    noStroke();
    ellipseMode(RADIUS);
    fill (c);
    ellipse(pos.x, pos.y, radio, radio);
  }
  
  void mover(){
    pos.add(vel);
  }
  
  boolean borde(){
    return ((pos.x > width+radio || pos.x < -radio) || (pos.y > height+radio || pos.y < -radio));
  };
}