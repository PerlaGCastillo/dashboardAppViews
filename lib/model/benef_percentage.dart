import 'package:flutter/material.dart';

class HistoricalBenefPercentage {
  final String? concept, quantity;
  final int date, percent;

  const HistoricalBenefPercentage({
    required this.concept,
    required this.date,
    required this.percent,
    required this.quantity,
  });
}

final HistoricalBenefPercentageList = [
  const HistoricalBenefPercentage(concept: "Total de Inversión apoyo económico", date: 2019, percent: 26, quantity: "23,520,931,200.00"),
  const HistoricalBenefPercentage(concept: "Total de Inversión apoyo económico", date: 2020, percent: 27, quantity: "24,133,495,330.00"),
  const HistoricalBenefPercentage(concept: "Total de Inversión apoyo económico", date: 2021, percent: 26, quantity:"19,928,268,266.08"),
  const HistoricalBenefPercentage(concept: "Total de Inversión apoyo económico", date: 2022, percent: 23, quantity: "20,853,515,807.98"),
  const HistoricalBenefPercentage(concept: "Total de Inversión IMSS", date: 2019, percent: 24, quantity: "329,067,726.31"),
  const HistoricalBenefPercentage(concept: "Total de Inversión IMSS", date: 2020, percent: 34, quantity: "464,685,765.35"),
  const HistoricalBenefPercentage(concept: "Total de Inversión IMSS", date: 2021, percent: 21, quantity:"292,777,952.63"),
  const HistoricalBenefPercentage(concept: "Total de Inversión IMSS", date: 2022, percent: 19, quantity: "261,927,226.92"),
];
//26.5
//27.2
//22.5
//23.5
//24.4
//34.4
//21.7
//19.4
