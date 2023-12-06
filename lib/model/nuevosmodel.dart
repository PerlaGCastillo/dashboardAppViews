import 'package:data/Screens/constants.dart';
import 'package:flutter/material.dart';

class NuevosStorage {
  final String?  date, concept, people;

  NuevosStorage({
    this.date,
    this.concept,
    this.people,
  });
}

List demoNuevos = [
  NuevosStorage(
    date: "01/01/2019\n31/12/2019",
    concept: "Nuevos beneficiarios \nHombres",
    people: "473,275",
  ),
  NuevosStorage(
    date: "01/01/2019\n31/12/2019",
    concept: "Nuevas beneficiarias \nMujeres",
    people: "647,268",
  ),
  NuevosStorage(
    date: "01/01/2019\n31/12/2019",
    concept: "Total nuevos \nbeneficiarios",
    people: "1,120,543",
  ),

  NuevosStorage(
    date: "01/01/2020\n31/12/2020",
    concept: "Nuevos beneficiarios \nHombres",
    people: "192,673",
  ),
  NuevosStorage(
    date: "01/01/2020\n31/12/2020",
    concept: "Nuevas beneficiarias \nMujeres",
    people: "251,912",
  ),
  NuevosStorage(
    date: "01/01/2020\n31/12/2020",
    concept: "Total nuevos \nbeneficiarios",
    people: "444,585",
  ),

  NuevosStorage(
    date: "01/01/2021\n31/12/2021",
    concept: "Nuevos beneficiarios \nHombres",
    people: "228,564",
  ),
  NuevosStorage(
    date: "01/01/2021\n31/12/2021",
    concept: "Nuevas beneficiarias \nMujeres",
    people: "312,584",
  ),
  NuevosStorage(
    date: "01/01/2021\n31/12/2021",
    concept: "Total nuevos \nbeneficiarios",
    people: "541,148",
  ),

  NuevosStorage(
    date: "01/01/2022\n31/12/2022",
    concept: "Nuevos beneficiarios \nHombres",
    people: "104,600",
  ),
  NuevosStorage(
    date: "01/01/2022\n31/12/2022",
    concept: "Nuevas beneficiarias \nMujeres",
    people: "146,476",
  ),
  NuevosStorage(
    date: "01/01/2022\n31/12/2022",
    concept: "Total nuevos \nbeneficiarios",
    people: "251,076",
  ),
];
