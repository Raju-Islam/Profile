// ignore_for_file: non_constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Model {
  final String? title;
  final String subtitile;
  final String image;
  Model({required this.title, required this.subtitile, required this.image});

 
}

List<Model> profile = [
  Model(title: 'Completed', subtitile: '3', image: "assets/goal.png"),
  Model(title: 'Reviewing', subtitile: '5', image: "assets/reviews.png"),
  Model(
      title: 'Total Payment',
      subtitile: 'TK.8494',
      image: "assets/payment_method.png")
];

class Income {
  final String sourch;
  final String image;
  final Color color;
  Income({required this.sourch, required this.image, required this.color});
}

List<Income> income = [
  Income(sourch: 'Bonus', image: "assets/bonus.png", color: Colors.purple),
  Income(sourch: 'Comment', image: "assets/comments.png", color: Colors.grey),
  Income(
      sourch: 'Payment',
      image: "assets/debit_card.png",
      color: Colors.pink.shade400)
];
