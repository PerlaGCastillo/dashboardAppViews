import 'package:data/Screens/constants.dart';
import 'package:flutter/material.dart';

class ZonaStorage {
  final String? concept, quantity, date;

  ZonaStorage({
    this.concept,
    this.quantity,
    this.date,
  });
}

List demoZona = [

  ZonaStorage(
    concept: 'Beneficiarios en zonas urbanas',
    quantity: '1,251,226',
    date: '01/01/2019 - 31/12/2022',
  ),
  ZonaStorage(
    concept: 'Beneficiarios  en zonas rurales',
    quantity: '1,106,126',
    date:'01/01/2019 - 31/12/2022',
  ),
];