import 'package:flutter/material.dart';
import 'package:vamp/mock/game_mock.dart';
import 'package:vamp/models/models.dart';

class QuestPage extends StatefulWidget {
  const QuestPage({Key? key}) : super(key: key);

  @override
  State<QuestPage> createState() => _QuestPageState();
}

class _QuestPageState extends State<QuestPage> {
  GameMock? gameMock = GameMock();
  Game? game;
  int index = 0;

  @override
  void initState() {
    game = gameMock?.getGame();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        const Expanded(
          child: CircleAvatar(
            radius: 60,
            backgroundColor: Colors.amber,
          ),
        ),
        Expanded(
            child: Text(
          game!.game![index].question.toString(),
          style: const TextStyle(fontSize: 25),
          textAlign: TextAlign.center,
        )),
        Expanded(
          flex: 2,
          child: Center(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: game!.game![index].answers!.length.toInt(),
              itemBuilder: (context, i) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 70,
                  child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          index = game!.game![index].answers![i].route!.toInt();
                        });
                      },
                      child: Text(
                          game!.game![index].answers![i].title.toString())),
                ),
              ),
            ),
          ),
        )
      ],
    ));
  }
}
