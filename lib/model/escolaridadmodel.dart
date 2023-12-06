import 'package:data/Screens/constants.dart';
import 'package:flutter/material.dart';

class CloudStorageInfo {
  final String? title, totalStorage, date;
  final int? percentage;
  final Color? color;

  CloudStorageInfo({
    this.title,
    this.totalStorage,
    this.date,
    this.percentage,
    this.color,
  });
}

List demoEscolaridad = [
  CloudStorageInfo(
    title: "Primaria",
    date: "01/01/2019\n31/12/2022",
    totalStorage: "218,496",
    color: primaryColor,
    percentage: 35,
  ),
  CloudStorageInfo(
    title: "Secundaria",
    date: "01/01/2019\n31/12/2022",
    totalStorage: "619,796",
    color: Color(0xFFFFA113),
    percentage: 35,
  ),
  CloudStorageInfo(
    title: "Preparatoria\no Bachillerato",
    date: "01/01/2019\n31/12/2022",
    totalStorage: "1,045,167",
    color: Color(0xFFA4CDFF),
    percentage: 10,
  ),
  CloudStorageInfo(
    title: "Carrera\nTécnica",
    date: "01/01/2019\n31/12/2022",
    totalStorage: "82,885",
    color: Color(0xFF007EE5),
    percentage: 78,
  ),

  CloudStorageInfo(
    title: "Carrera\nUniversitaria",
    date: "01/01/2019\n31/12/2022",
    totalStorage: "385,949",
    color: Color(0xFFFFA113),
    percentage: 35,
  ),
  CloudStorageInfo(
    title: "Maestría",
    date: "01/01/2019\n31/12/2022",
    totalStorage: "3,857",
    color: Color(0xFFA4CDFF),
    percentage: 10,
  ),
  CloudStorageInfo(
    title: "Doctorado",
    date: "01/01/2019\n31/12/2022",
    totalStorage: "56",
    color: Color(0xFF007EE5),
    percentage: 78,
  ),
  CloudStorageInfo(
    title: "Otro posgrado",
    date: "01/01/2019\n31/12/2022",
    totalStorage: "1,146",
    color: Color(0xFF007EE5),
    percentage: 78,
  ),
  CloudStorageInfo(
    title: "Total",
    date: "01/01/2019\n31/12/2022",
    totalStorage: "2,357,352",
    color: greenColor,
    percentage: 100,
  ),
];
