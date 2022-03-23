import 'package:vamp/models/models.dart';

class GameMock {
  Game getGame() => Game.fromJson(json);

  Map<String, dynamic> json = {
    "game": [
      {
        "id": 0,
        "imagePath": null,
        "question": "Olá, tudo Bem?",
        "answers": [
          {"title": "Tudo simm...?", "route": 1},
          {"title": "Não, hj ta um ó", "route": 2},
          {"title": "Oq ti importa?", "route": 3}
        ]
      },
      {
        "id": 1,
        "imagePath": null,
        "question": "Sabe porque vc esta jogando esse jogo?",
        "answers": [
          {"title": "Não pq?", "route": 0},
          {"title": "Sei...", "route": 0}
        ]
      },
      {
        "id": 2,
        "imagePath": null,
        "question": "Talvez eu possa ti animar?",
        "answers": [
          {"title": "Ta vamos lá", "route": 5},
          {"title": "Como??", "route": 0}
        ]
      },
      {
        "id": 3,
        "imagePath": null,
        "question": "COME TORTAAAAAAA!!!!!",
        "answers": [
          {"title": "Não", "route": 1},
          {"title": "Já comi otário", "route": 4}
        ]
      },
      {
        "id": 4,
        "imagePath": null,
        "question": "Chata 😒",
        "answers": [
          {"title": "Sou mesmo!", "route": 1},
          {"title": "Brinks gatinho", "route": 1}
        ]
      },
      {
        "id": 5,
        "imagePath": null,
        "question": "O que o pagodeiro foi fazer na igreja?",
        "answers": [
          {"title": "Rezar", "route": 1},
          {"title": "Se confessar", "route": 1},
          {"title": "Cantar pá God", "route": 1}
        ]
      },
      {
        "id": 6,
        "imagePath": null,
        "question": "Vou ti animar mesmo assim",
        "timer": 2000,
        "route": 5,
        "answers": []
      },
    ]
  };
}
