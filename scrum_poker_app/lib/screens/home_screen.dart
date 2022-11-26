import 'package:flutter/material.dart';
import 'package:scrum_poker_app/models/models.dart';
import 'package:scrum_poker_app/services/services.dart';
import 'package:scrum_poker_app/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final cardspokerData = listDataCards();

    return Scaffold(
      appBar: AppBar(),
      drawer: const SideMenu(),
      body: GridView.count(
        crossAxisCount: 3,
        children: List.generate(
          cardspokerData.length,
          (index) => GestureDetector(
            onTap: () {
              print(cardspokerData[index].text);
            },
            child: _CardPoker(cardspokerData[index]),
            ),
        ),
      ),
    );
  }
}

class _CardPoker extends StatelessWidget {
  const _CardPoker(this.pokerData);
  final CardPokerData pokerData;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromRGBO(175, 175, 177, 1),
      child: pokerData.isImage
        ? Image.asset("assets/${pokerData.text}.png", color: const Color.fromRGBO(68, 70, 72, 1),)
        : Center(child: Text(pokerData.text, style: const TextStyle(fontSize: 50, color: Color.fromRGBO(68, 70, 72, 1)),)),
      // shape: Border,
    );
  }
}
