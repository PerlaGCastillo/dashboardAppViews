import 'package:data/Screens/constants.dart';
import 'package:flutter/material.dart';

class AcumuladoStorage {
  final String? concept, date, people;

  AcumuladoStorage({
    this.concept,
    this.date,
    this.people,
  });
}

List demoAcumulado = [
  AcumuladoStorage(
    concept: "Beneficiarios Hombres",
    people: "473,275",
    date: "01/01/2019-31/12/2019",
  ),
  AcumuladoStorage(
    concept: "Beneficiarias Mujeres",
    people: "647,268",
    date: "01/01/2019-31/12/2019",
  ),
  AcumuladoStorage(
    concept: "Total Acumulado",
    people: "1,120,543",
    date: "01/01/2019-31/12/2019",
  ),
  AcumuladoStorage(
    concept: "Beneficiarios Hombres",
    people: "665,948",
    date: "01/01/2019-31/12/2020",
  ),
  AcumuladoStorage(
    concept: "Beneficiarias Mujeres",
    people: "899,180",
    date: "01/01/2019-31/12/2020",
  ),
  AcumuladoStorage(
    concept: "Total Acumulado",
    people: "156,5128",
    date: "01/01/2019 - 31/12/2020",
  ),
  AcumuladoStorage(
    concept: "Beneficiarios Hombres",
    people: "894,512",
    date: "01/01/2019-31/12/2021",
  ),
  AcumuladoStorage(
    concept: "Beneficiarias Mujeres",
    people: "1,211,764",
    date: "01/01/2019 - 31/12/2021",
  ),
  AcumuladoStorage(
    concept: "Total Acumulado",
    people: "2,106,276",
    date: "01/01/2019-31/12/2021",
  ),
];
