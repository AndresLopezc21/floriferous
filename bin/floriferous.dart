import 'dart:math';

import 'package:floriferous/floriferous.dart' as floriferous;

void main(List<String> arguments) {
  print('Hello world: ${floriferous.calculate()}!');
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
  }
}
