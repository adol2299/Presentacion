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
<figure>
    <img height='400' src='fig/Esquema clases ArrayList.png' />
    <figcaption>Arreglo Estático</figcaption>
</figure>

V:

## Ventajas

<li class="fragment"> Al poseer una estructura dinámica posee un uso más amplio sencillo.
<li class="fragment"> Representa una manera de organizada de almacenar objetos.
<li class="fragment"> Posee una gran variedad de métodos para su implementación y modificación.
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

ArrayList <Particle> particles;
particles = new ArrayList <Particle> ();
	
type[] nombre = new type[tamaño];
type[] nombre = { Position 0, Position 1, Position 2 };
```

## Métodos 

Los mas usados:
``` processing

Array.size();
Array.remove(index);
Array.add(index, amount);
Array.get(index);
Array.clear();

Lista de métodos en el _API_ de java.
Processing - _reference_. 
```

## Ejemplo Círculos
>> Animación 
<figure>
    <img height='400' src='fig/A. Dinámico.png' />
    <figcaption>Arreglo Dinámico</figcaption>
</figure>

H:

## Clases Auxiliares 

> Son listas más espcíficas enfocadas a la simplicidad.
> Se mantiene gran parte de la funcionalidad de los ArrayList.

>>IntList
>>FloatList
>>StringList

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

## Array Bidimensional:

> Los Objetos del ArrayList pueden ser a su vez otros ArrayList

<figure>
    <img height='400' src='fig/ Esquema Matriz.png' />
    <figcaption>Arreglo Dinámico</figcaption>
</figure>

V:

## Array Bidimensional:

> Los Objetos del ArrayList pueden ser a su vez otros ArrayList

```processing
 ArrayList<ArrayList<Integer>> array = new ArrayList();
 array.add(new ArrayList<Integer>());
```

H:
 
## Implementación en Proyecto (Ciclos Eulerianos)

> when code is written without mention of any specific type and thus can
be used transparently with any number of new types

V:

## Ejemplo Código

Also known as:

* [Generic programming](https://en.wikipedia.org/wiki/Generic_programming) in the OOP community
* _Polymorphism_ in the functional programming community

H:

## Referencias

* [ArrayList - Processing](https://processing.org/reference/ArrayList.html)
* [IntList - Processing](https://processing.org/reference/IntList.html)
* [FloatList - Processing](https://processing.org/reference/FloatList.html)
* [StringList - Processing](https://processing.org/reference/StringList.html)
* [ArrayList Bidimensional - Java](http://puntocomnoesunlenguaje.blogspot.com.co/2012/12/arraylist-en-java.html)

V:

##  Lecturas Auxiliares

* [ArrayList Example - Processing](https://processing.org/examples/arraylistclass.html)
* [ArrayLists in Processing - The Nature of Code](https://www.youtube.com/watch?v=HnSJZ4qTcwY)

H:

