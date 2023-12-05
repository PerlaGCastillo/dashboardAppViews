import 'package:data/Screens/constants.dart';
import 'package:flutter/material.dart';

class CentroStorage {
  final String? concept, date, people;

  CentroStorage({
    this.concept,
    this.date,
    this.people,
  });
}

List demoCentro = [
  CentroStorage(
    concept: "Sector\nprivado",
    people: "364,044",
    date: "01/01/2019\n31/12/2022",
  ),
  CentroStorage(
    concept: "Sector\npúblico",
    people: "7,422",
    date: "01/01/2019\n31/12/2022",
  ),
  CentroStorage(
    concept: "Sector\nsocial",
    people: "4,167",
    date: "01/01/2019\n31/12/2022",
  ),
  CentroStorage(
    concept: "Total",
    people: "375,633",
    date: "01/01/2019\n31/12/2022",
  ),
];
