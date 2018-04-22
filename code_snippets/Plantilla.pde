/** Para cambiar el 'nivel' presione cualquier tecla */
ArrayList<Graph> levels;

int total, current;

void setup() {
  size(600, 600);
  // numero total de niveles
  levels = new ArrayList<Graph>();
  levels.add(new Graph("nivel1.csv"));
  levels.add(new Graph("nivel2.csv"));
  levels.add(new Graph("nivel3.csv"));
  levels.add(new Graph("nivel4.csv"));
  levels.add(new Graph("nivel5.csv"));
}

void draw() {
  background(#F59534);
  levels.get(current).display();
}

void keyPressed() {
  current = current < levels.size()-1 ? current+1 : 0;
}