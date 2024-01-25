import 'package:flutter/material.dart';

class HistoricalBenefImssPercentage {
  final String? concept, quantity;
  final int date, percent;

  const HistoricalBenefImssPercentage({
    required this.concept,
    required this.date,
    required this.percent,
    required this.quantity,
  });
}

final HistoricalBenefImssPercentageList = [
   const HistoricalBenefImssPercentage(concept: "Total de Inversión IMSS", date: 2019, percent: 24, quantity: "329,067,726.31"),
  const HistoricalBenefImssPercentage(concept: "Total de Inversión IMSS", date: 2020, percent: 34, quantity: "464,685,765.35"),
  const HistoricalBenefImssPercentage(concept: "Total de Inversión IMSS", date: 2021, percent: 21, quantity:"292,777,952.63"),
  const HistoricalBenefImssPercentage(concept: "Total de Inversión IMSS", date: 2022, percent: 19, quantity: "261,927,226.92"),
];
//24.4
//34.4
//21.7
//19.4
