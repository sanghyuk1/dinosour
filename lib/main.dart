import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'dino_game.dart';

void main() {
  print('ll');
  final game = DinoGame();
  runApp(
      GameWidget(game: game)
  );
}
