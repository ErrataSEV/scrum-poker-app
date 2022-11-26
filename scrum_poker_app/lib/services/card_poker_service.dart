import 'package:scrum_poker_app/models/models.dart';

List<CardPokerData> listDataCards(){

  final values = {
    "0": false,
    "1/2": false,
    "1": false,
    "2": false,
    "3": false,
    "5": false,
    "8": false,
    "13": false,
    "20": false,
    "40": false,
    "100": false,
    "infinite": true,
    "?": false,
    "coffee": true,
  };
  final List<CardPokerData> pokerCards = [];

  values.forEach((key, value) {
    final tempCard = CardPokerData(key, value);
    pokerCards.add(tempCard);
  });

  return pokerCards;

}