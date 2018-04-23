<section id="themes">
	<h2>Themes</h2>
		<p>
			Set your presentation theme: <br>
			<!-- Hacks to swap themes after the page has loaded. Not flexible and only intended for the reveal.js demo deck. -->
                        <a href="#" onclick="document.getElementById('theme').setAttribute('href','css/theme/black.css'); return false;">Black (default)</a> -
			<a href="#" onclick="document.getElementById('theme').setAttribute('href','css/theme/white.css'); return false;">White</a> -
			<a href="#" onclick="document.getElementById('theme').setAttribute('href','css/theme/league.css'); return false;">League</a> -
			<a href="#" onclick="document.getElementById('theme').setAttribute('href','css/theme/sky.css'); return false;">Sky</a> -
			<a href="#" onclick="document.getElementById('theme').setAttribute('href','css/theme/beige.css'); return false;">Beige</a> -
			<a href="#" onclick="document.getElementById('theme').setAttribute('href','css/theme/simple.css'); return false;">Simple</a> <br>
			<a href="#" onclick="document.getElementById('theme').setAttribute('href','css/theme/serif.css'); return false;">Serif</a> -
			<a href="#" onclick="document.getElementById('theme').setAttribute('href','css/theme/blood.css'); return false;">Blood</a> -
			<a href="#" onclick="document.getElementById('theme').setAttribute('href','css/theme/night.css'); return false;">Night</a> -
			<a href="#" onclick="document.getElementById('theme').setAttribute('href','css/theme/moon.css'); return false;">Moon</a> -
			<a href="#" onclick="document.getElementById('theme').setAttribute('href','css/theme/solarized.css'); return false;">Solarized</a>
		</p>
</section>

H:

# ArrayList

por Daniel Torres y Andrés Ortega

H:

# Índice

 1. Introducción <!-- .element: class="fragment" data-fragment-index="1"-->
 1. Descripción <!-- .element: class="fragment" data-fragment-index="2"-->
 1. ArrayList <!-- .element: class="fragment" data-fragment-index="3"-->
 1. Listas Ayudantes <!-- .element: class="fragment" data-fragment-index="4"-->
 1. Implementación <!-- .element: class="fragment" data-fragment-index="5"-->
 
H:

## Introducción

Ya sabemos que:

<li class="fragment"> Un objeto es una _estructura de datos_ para almacenar _atributos_ previamente definidos.
<li class="fragment"> Los objetos se manipulan por medio de metodos.
<li class="fragment"> Un arreglo es un _conjunto o grupo_ de datos de algún tipo organizados de manera consecutiva dentro de el.

H:

## Descripción
¿Qué es?

> Un ArrayList es una clase perteneciente al _api_ de Java.
> Almacena _objetos_ en sus espacios de memoria y posee una serie de métodos que permiten controlar y buscar sus contenidos.

V:

## Descripción
¿Qué es?

> Un ArrayList es una clase perteneciente al _api_ de Java.
> Almacena _objetos_ en sus espacios de memoria y posee una serie de métodos que permiten controlar y buscar sus contenidos.
V:

## Usos
We say:

<li class="fragment"> B is _sublass_ of A
<li class="fragment"> A is _superclass_ of B
<li class="fragment"> A and B form a _class hierarchy_

V:

## Ventajas

<li class="fragment"> Al poseer un tamaño dinámico tiene un uso más sencillo
<li class="fragment"> Representa una manera de organizada de almacenar objetos
<li class="fragment"> Posee cantidad de métodos para su implementación y modificación
	<

V:

## Comparación

<figure>
    <img height='400' src='fig/A. Estático.png' />
    <figcaption>Arreglo Estático</figcaption>
</figure>

V:

## Comparación

<figure>
    <img height='400' src='fig/A. Dinámico.png' />
    <figcaption>Arreglo Dinámico</figcaption>
</figure>

V:

## Sintaxis
Declaración
``` processing

ArrayList<Type>()
ArrayList<Type>(initialCapacity)

```



V:

## Sintaxis
<li class="fragment"> Type - Nombre de la clase: tipo de dato para los objetos del ArrayList
<li class="fragment"> initialCapacity - int: define la capacidad inicial de la lista; por defecto es vacía

H:

## ArrayList
What is?

> is the provision of a single interface to entities of different types
[Bjarne Stroustrup (February 19, 2007). "Bjarne Stroustrup's C++](http://www.stroustrup.com/glossary.html#Gpolymorphism)

V:

## Métodos Auxiliares
Types

1. Ad hoc polymorphism <!-- .element: class="fragment" data-fragment-index="1"-->
1. Parametric polymorphism <!-- .element: class="fragment" data-fragment-index="2"-->
1. Subtyping <!-- .element: class="fragment" data-fragment-index="3"-->

## Ejemplo Círculos
What is?

> is the provision of a single interface to entities of different types
[Bjarne Stroustrup (February 19, 2007). "Bjarne Stroustrup's C++](http://www.stroustrup.com/glossary.html#Gpolymorphism)


H:

## Clases Auxiliares 

> Son clase más espcíficas enfocadas a la simplicidad mientras se mantiene cierta funcionalidad de los ArrayList

Estas clases proveen una experiencia similar a los Arrays <!-- .element: class="fragment" data-fragment-index="1"-->

V:

## IntList
Función auxiliar para una lista de Int:

```processing
IntList inventory;

void setup() {
  size(200, 200);
  inventory = new IntList();
  inventory.append(84);
  inventory.append(15);
  inventory.append(102);
  println(inventory);
  noLoop();
  fill(0);
  textAlign(CENTER);
}

void draw() {
  int nums = inventory.get(2);
  text(nums, width/2, height/2);
}
```

V:

## FloatList
Función auxiliar para una lista de Float:

```processing
FloatList inventory;

void setup() {
  size(200, 200);
  inventory = new FloatList();
  inventory.append(108.6);
  inventory.append(5.8);
  inventory.append(8.2);
  println(inventory);
  noLoop();
  fill(0);
  textAlign(CENTER);
}

void draw() {
  float nums = inventory.get(2);
  text(nums, width/2, height/2);
}
```
V:

## StringList
Función auxiliar para una lista de String:

```processing
StringList inventory;

void setup() {
  size(200, 200);
  inventory = new StringList();
  inventory.append("coffee");
  inventory.append("flour");
  inventory.append("tea");
  println(inventory);
  noLoop();
  fill(0);
  textAlign(CENTER);
}

void draw() {
  String item = inventory.get(2);
  text(item, width/2, height/2);
}
```

H:

## Implementación en Proyecto

> when code is written without mention of any specific type and thus can
be used transparently with any number of new types

V:

## Ejemplo Código

Also known as:

* [Generic programming](https://en.wikipedia.org/wiki/Generic_programming) in the OOP community
* _Polymorphism_ in the functional programming community

H:

## References

* [Inheritance](https://en.wikipedia.org/wiki/Inheritance_(object-oriented_programming)
* [Bjarne Stroustrup (February 19, 2007). "Bjarne Stroustrup's C++](http://www.stroustrup.com/glossary.html#Gpolymorphism)
* [Polymorphism](https://en.wikipedia.org/wiki/Polymorphism_(computer_science)
* [Subtyping](https://en.wikipedia.org/wiki/Subtyping)

V:

## Further reading:

* [Is-a relationship](https://en.wikipedia.org/wiki/Is-a)
* [Java Interfaces](https://en.wikipedia.org/wiki/Interface_(Java)

H:

## Workshop

> Implement a hierarchical design for your [tangram](https://en.wikipedia.org/wiki/Tangram),
taking into account different visual representations along it
