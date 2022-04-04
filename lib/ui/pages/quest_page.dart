import 'package:flutter/material.dart';

import '../../mock/game_mock.dart';
import '../../models/models.dart';

class QuestPage extends StatefulWidget {
  const QuestPage({Key? key}) : super(key: key);

  @override
  State<QuestPage> createState() => _QuestPageState();
}

class _QuestPageState extends State<QuestPage>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation<double>? animation;
  GameMock? gameMock = GameMock();
  Game? game;
  int index = 0;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(duration: const Duration(seconds: 1), vsync: this);

    animation =
        CurvedAnimation(parent: animationController!, curve: Curves.easeOut);
    game = gameMock?.getGame();
  }

  @override
  void dispose() {
    animationController?.dispose();
    super.dispose();
  }

  void _newQuest(int i) async {
    var t = animationController!.reverse();
    await t.whenComplete(() => {
          setState(() {
            index = i;
          }),
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF8C1B44),
      body: Builder(builder: (context) {
        animationController!.forward();
        return SafeArea(
          child: FadeTransition(
            opacity: animation!,
            child: QuestBody(
              nextQuest: _newQuest,
              question: game!.game![index],
            ),
          ),
        );
      }),
    );
  }
}

class QuestBody extends StatelessWidget {
  final Function nextQuest;
  final Question question;
  const QuestBody({Key? key, required this.nextQuest, required this.question})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        question.imagePath != null
            ? const Expanded(
                child: CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.amber,
                ),
              )
            : SizedBox(),
        Expanded(
          child: Center(
            child: Text(
              question.question.toString(),
              style: const TextStyle(
                  fontSize: 55,
                  color: Colors.white,
                  fontFamily: "LavishlyYours"),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Center(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: question.answers!.length.toInt(),
              itemBuilder: (context, i) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 70,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        onPrimary: Colors.red,
                        elevation: 5,
                        primary: const Color(0xFF40253B)),
                    onPressed: () =>
                        nextQuest(question.answers![i].route!.toInt()),
                    child: Text(
                      question.answers![i].title.toString(),
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
