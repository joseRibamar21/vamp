import 'package:flutter/material.dart';

class CreditsPage extends StatelessWidget {
  const CreditsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF40253B),
      appBar: AppBar(
          backgroundColor: const Color(0xFF40253B),
          centerTitle: true,
          title: const Text(
            "Creditos",
            style: TextStyle(color: Colors.white),
          )),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Column(
                children: const [
                  SizedBox(height: 20),
                  _CustomTitleText(
                    text: "Desenvolvedor",
                  ),
                  _CustomBodyText(text: "Jose Ribamar"),
                  SizedBox(height: 20),
                  _CustomTitleText(
                    text: "Desing",
                  ),
                  _CustomBodyText(text: "Jose Ribamar"),
                  SizedBox(height: 20),
                  _CustomTitleText(
                    text: "Diretor de Arte",
                  ),
                  _CustomBodyText(text: "Jose Ribamar"),
                  SizedBox(height: 20),
                  _CustomTitleText(
                    text: "Diretor de Som",
                  ),
                  _CustomBodyText(text: "Jose Ribamar"),
                  SizedBox(height: 20),
                  _CustomTitleText(
                    text: "Diretor de Enredo",
                  ),
                  _CustomBodyText(text: "Jose Ribamar"),
                  SizedBox(height: 20),
                  _CustomTitleText(
                    text: "Ajudante",
                  ),
                  _CustomBodyText(text: "Rafael"),
                  SizedBox(height: 20),
                  _CustomTitleText(
                    text: "Conselheiros amorosos",
                  ),
                  _CustomBodyText(text: "Rafael"),
                  _CustomBodyText(text: "Daniele"),
                  _CustomBodyText(text: "Amanda"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _CustomBodyText extends StatelessWidget {
  final String text;
  const _CustomBodyText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        text,
        style: const TextStyle(
            fontSize: 20, fontWeight: FontWeight.normal, color: Colors.white),
      ),
    );
  }
}

class _CustomTitleText extends StatelessWidget {
  final String text;
  const _CustomTitleText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
          fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
    );
  }
}
