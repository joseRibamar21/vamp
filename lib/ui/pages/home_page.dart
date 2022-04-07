import 'package:flutter/material.dart';
import './components/components.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF40253B),
      body: SafeArea(
          child: Column(
        children: [
          const Expanded(
            child: Center(
              child: Text(
                "Vampirinha",
                style: TextStyle(
                    fontSize: 60,
                    color: Colors.white,
                    fontFamily: "LavishlyYours"),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomButtom(
                      text: "Continuar", f: () => Navigator.pop(context)),
                  const SizedBox(height: 20),
                  CustomButtom(
                      text: "Galeria", f: () => Navigator.pop(context)),
                  const SizedBox(height: 20),
                  CustomButtom(
                      text: "Créditos",
                      f: () => Navigator.of(context).pushNamed('/credit')),
                ],
              )),
        ],
      )),
    );
  }
}
