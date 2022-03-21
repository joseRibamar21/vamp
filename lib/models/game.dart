import './models.dart';

class Game {
  List<Question>? game;

  Game({required this.game});

  factory Game.fromJson(Map<String, dynamic> json) {
    return Game(
        game: json["game"].map<Question>((e) => Question.fromJson(e)).toList());
  }
}
