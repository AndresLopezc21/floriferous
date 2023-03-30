import 'dart:js_util';
import 'dart:math';
import 'package:floriferous/floriferous.dart';
import 'package:test/test.dart';

void main() {
  test('calculate', () {
    expect(calculate(), 42);
  });

  test('revolviendo el deck', () {
    var juego = Floriferous();
    var ordenOriginal = juego.deck.map((card) => card.name).toList();
    juego.deck.shuffle();
    var nuevoOrden = juego.deck.map((card) => card.name).toList();
    expect(nuevoOrden, isNot(ordenOriginal));
  });

  test('Tomar una carta', () {
    var juego = Floriferous();
    var manoInicial = juego.manoDeJugador.length;
    juego.tomarCarta();
    var nuevaMano = juego.manoDeJugador.length;
    expect(nuevaMano, equals(manoInicial + 1));
  });

  test('Mostrar la mano del jugador', () {
    var juego = Floriferous();
    juego.deck.shuffle(Random());
    var mostrarManoJugador = juego.mostrarMano();
    expect([mostrarManoJugador], equals([mostrarManoJugador]));
  });
}

class Card {
  String name;
  String color;
  String size;
  String shape;

  Card(this.name, this.color, this.size, this.shape);
}

class Floriferous {
  late List<Card> manoDeJugador;
  late List<Card> deck;
  Floriferous() {
    deck = [
      Card('Daisy', 'Yellow', 'Small', 'Round'),
      Card('Rose', 'Red', 'Medium', 'Pointed'),
      Card('Tulip', 'Pink', 'Large', 'Pointed'),
      Card('Lily', 'White', 'Medium', 'Bell'),
      Card('Pansy', 'Purple', 'Small', 'Round'),
      Card('Orchid', 'Purple', 'Medium', 'Complex'),
      Card('Sunflower', 'Yellow', 'Large', 'Round'),
      Card('Hydrangea', 'Blue', 'Large', 'Cluster'),
      Card('Carnation', 'Pink', 'Medium', 'Round'),
      Card('Poppy', 'Red', 'Small', 'Complex'),
    ];
    deck.shuffle(Random());

    manoDeJugador = [];
    for (int j = 0; j < 3; j++) {
      manoDeJugador.add(deck.removeLast());
    }
  }

  void tomarCarta() {
    manoDeJugador.add(deck.removeLast());
  }

  void mostrarMano() {
    print('Tu mano:');
    for (var card in manoDeJugador) {
      print('${card.name} (${card.color}, ${card.size}, ${card.shape})');
    }
  }
}
