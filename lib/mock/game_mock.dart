import 'package:vamp/models/models.dart';

class GameMock {
  Game getGame() => Game.fromJson(json);

  Map<String, dynamic> json = {
    "game": [
      {
        "id": 0,
        "imagePath": null,
        "question": "Olá, tudo Bem?",
        "timer": 0,
        "route": 0,
        "answers": [
          {"title": "Tudo simm...?", "route": 1},
          {"title": "Não, hj ta um ó", "route": 4},
          {"title": "Oq ti importa?", "route": 5}
        ]
      },
      {
        "id": 1,
        "imagePath": null,
        "question": "Voce vem sempre aqui?",
        "timer": 0,
        "route": 0,
        "answers": [
          {"title": "Não!?", "route": 3},
          {"title": "Claro, passei aqui ontem", "route": 2}
        ]
      },
      {
        "id": 2,
        "imagePath": null,
        "question": "Besta kkkkkkkkkkk",
        "timer": 1000,
        "route": 3,
        "answers": []
      },
      {
        "id": 3,
        "imagePath": null,
        "question": "Que tal brincarmos um pouco? voce escolhe",
        "timer": 0,
        "route": 0,
        "answers": [
          {"title": "Cantadas", "route": 15},
          {"title": "Piadas", "route": 8},
          {"title": "Qm sou eu?", "route": 17},
          {"title": "Vamos contiunar com sei la o que for isso.", "route": -2}
        ]
      },
      {
        "id": 4,
        "imagePath": null,
        "question": "Talvez eu possa ti animar?",
        "timer": 0,
        "route": 0,
        "answers": [
          {"title": "Ta vamos lá", "route": 8},
          {"title": "Não quero", "route": 7},
        ]
      },
      {
        "id": 5,
        "imagePath": null,
        "question": "Come tortaaaaaaa!!!!!",
        "timer": 0,
        "route": 0,
        "answers": [
          {"title": "Não", "route": 3},
          {"title": "Já comi otario!", "route": 6},
        ]
      },
      {
        "id": 6,
        "imagePath": null,
        "question": "Chata",
        "timer": 0,
        "route": 0,
        "answers": [
          {"title": "Sou mesmo", "route": 3},
          {"title": "Brinks gatinho", "route": 3},
        ]
      },
      {
        "id": 7,
        "imagePath": null,
        "question": "Vou animá-la mesmo assim",
        "timer": 1000,
        "route": 8,
        "answers": []
      },
      {
        "id": 8,
        "imagePath": null,
        "question": "O que o pagodeiro foi fazer na igreja?",
        "timer": 0,
        "route": 0,
        "answers": [
          {"title": "Rezar", "route": 10},
          {"title": "Confessar", "route": 10},
          {"title": "Cantar pá God", "route": 9},
        ]
      },
      {
        "id": 9,
        "imagePath": null,
        "question": "kkkkkkkkk boa né??",
        "timer": 1500,
        "route": 11,
        "answers": []
      },
      {
        "id": 10,
        "imagePath": null,
        "question": "Ele foi cantar pá God kkkkkkkkkkk",
        "timer": 1500,
        "route": 11,
        "answers": []
      },
      {
        "id": 11,
        "imagePath": null,
        "question": "Quer mais uma?",
        "timer": 0,
        "route": 0,
        "answers": [
          {"title": "Obviamente não", "route": 3},
          {"title": "Concerteza", "route": 12},
        ]
      },
      {
        "id": 12,
        "imagePath": null,
        "question": "Como se chama a pessoa que viu o Thor de perto?",
        "timer": 0,
        "route": 0,
        "answers": [
          {"title": "Pedro", "route": 14},
          {"title": "Thiago", "route": 14},
          {"title": "Vithor", "route": 13},
        ]
      },
      {
        "id": 13,
        "imagePath": null,
        "question": "Very good",
        "timer": 1500,
        "route": 3,
        "answers": []
      },
      {
        "id": 14,
        "imagePath": null,
        "question": "Vi-Thor kkkkkkkkkkkkkkkk",
        "timer": 1500,
        "route": 3,
        "answers": []
      },
      {
        "id": 15,
        "imagePath": null,
        "question": "Gata se voce fosse fogão eu beijava todas as suas bocas",
        "timer": 0,
        "route": 0,
        "answers": [
          {"title": "Like", "route": 16},
          {"title": "Deslike", "route": 16},
        ]
      },
      {
        "id": 16,
        "imagePath": null,
        "question": "Gata me chama de Estados Unidos e me USA",
        "timer": 0,
        "route": 0,
        "answers": [
          {"title": "Uso sim", "route": 3},
          {"title": "Cruzes", "route": 3},
        ]
      },
      {
        "id": 17,
        "imagePath": null,
        "question": "Participei de um filme",
        "timer": 0,
        "route": 0,
        "answers": [
          {"title": "Ribinha", "route": 19},
          {"title": "Will Smith", "route": 19},
          {"title": "Leonardo DiCaprio", "route": 19},
          {"title": "Taylor Lautner", "route": 18},
          {"title": "Tom Cruise", "route": 19},
        ]
      },
      {
        "id": 18,
        "imagePath": null,
        "question": "Acertouuuu",
        "timer": 1500,
        "route": 23,
        "answers": []
      },
      {
        "id": 19,
        "imagePath": null,
        "question": "Fiz um filme romantico",
        "timer": 0,
        "route": 0,
        "answers": [
          {"title": "Ribinha", "route": 20},
          {"title": "Will Smith", "route": 20},
          {"title": "Leonardo DiCaprio", "route": 20},
          {"title": "Taylor Lautner", "route": 18},
          {"title": "Tom Cruise", "route": 20},
        ]
      },
      {
        "id": 20,
        "imagePath": null,
        "question": "O Ribinha é mais bonito que eu!",
        "timer": 0,
        "route": 0,
        "answers": [
          {"title": "Ribinha", "route": 22},
          {"title": "Will Smith", "route": 21},
          {"title": "Leonardo DiCaprio", "route": 21},
          {"title": "Taylor Lautner", "route": 18},
          {"title": "Tom Cruise", "route": 21},
        ]
      },
      {
        "id": 21,
        "imagePath": null,
        "question": "Errouuu",
        "timer": 1500,
        "route": 23,
        "answers": []
      },
      {
        "id": 22,
        "imagePath": null,
        "question": "Vou dar credito pela insistência",
        "timer": 1500,
        "route": 23,
        "answers": []
      },
      {
        "id": 23,
        "imagePath": null,
        "question": "Para finalizar, eu sou a mulher mais fabosa do mundo",
        "timer": 0,
        "route": 0,
        "answers": [
          {"title": "Angelina Jolie", "route": -2},
          {"title": "Letícia Vilarinho", "route": -2},
          {"title": "Gretchen", "route": -2},
          {"title": "Sandra Bullock", "route": -2},
          {"title": "Juliette", "route": -2},
        ]
      },
    ]
  };
}
