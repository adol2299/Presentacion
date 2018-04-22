// Ejemplo ArrayList
ArrayList<Circulo> circulos;

void setup() {
  size(500, 500);
  circulos = new ArrayList<Circulo>();
}

void draw() {
  background (0);
  println(circulos.size());
  for (int i = circulos.size()-1; i >= 0; i --) {
    Circulo circ_Aux = circulos.get(i);
    if (circ_Aux.borde()) 
      circulos.remove(i);
    circ_Aux.mover();
    circ_Aux.display();
  }
}

void mouseClicked() {
  circulos.add (new Circulo(new PVector(mouseX, mouseY)));
}