import 'package:data/Screens/constants.dart';
import 'package:flutter/material.dart';


class HistoricalStorage {
  final String? concept, quantity, date;

  HistoricalStorage({
    this.concept,
    this.quantity,
    this.date,
  });
}

List demoHistorical = [

  HistoricalStorage(
    concept: 'Total de beneficarios hombres',
    quantity: '999,112',
    date: '01/01/2019 - 31/12/2022',
  ),
  HistoricalStorage(
    concept: 'Total de beneficarias mujeres',
    quantity: '1,358,240',
    date:'01/01/2019 - 31/12/2022',
  ),
  HistoricalStorage(
    concept: 'Total de beneficiarios histórico',
    quantity: '2,357,352',
    date: '01/01/2019 - 31/12/2022',
  ),

  HistoricalStorage(
    concept: 'Total de Inversión IMSS',
    quantity: '\$1,348,458,671.21',
    date:'01/01/2019 - 31/12/2022',
  ),
  HistoricalStorage(
    concept: 'Total de Inversión \napoyo económico \n(en el periodo del reporte)',
    quantity: '\$88,436,210,604.06',
    date:'01/01/2019 - 31/12/2022',
  ),
];