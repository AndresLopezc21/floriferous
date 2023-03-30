import 'dart:math';

import 'package:floriferous/floriferous.dart';
import 'package:test/test.dart';

import '../bin/floriferous.dart';

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
}
