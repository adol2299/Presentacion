/**Un grafo esta compuesto de un conjunto de nodos y un conjunto de lineas.*/

class Graph {
  // 1. Attributes
  ArrayList<Node> nodes;
  ArrayList<Line> lines;

  Graph(String file) {
    Table nivel = loadTable(file);
    nodes = new ArrayList<Node>();

    for (int i = 0; i < nivel.getColumnCount(); i++) {
      PVector positions = new PVector(nivel.getInt(0, i), nivel.getInt(1, i));
      print(positions);
      if (i < 7) {
        nodes.add( new Circle(positions, 20.0) );
      } else {
        nodes.add( new Rectangle(positions, 20.0) );
      }
    }

    lines = new ArrayList<Line>(nodes.size());
    for (int i = 0; i < nodes.size(); i++)
      if (i < nodes.size()-1)
        lines.add( new Line(nodes.get(i), nodes.get(i + 1)) );
      else
        lines.add( new Line(nodes.get(i), nodes.get(0)) );
  }

  void display() {
    pushStyle();
    strokeWeight(3);
    stroke(255, 255, 0);
    for (int i = 0; i < nodes.size(); i++)
      lines.get(i).display();
    for (int i = 0; i < nodes.size(); i++)
      nodes.get(i).display();
    popStyle();
  }
}