import 'package:flutter/material.dart';

class DiscapacidadRPercentage {
  final String? tipo, hombres, mujeres, aprendices, monto;

  const DiscapacidadRPercentage({
    required this.tipo,
    required this.hombres,
    required this.mujeres,
    required this.aprendices,
    required this.monto,
  });
}

final DiscapacidadRPercentageList = [
  const DiscapacidadRPercentage(
      tipo: "Discapacidad mental ",
      hombres: "523 ",
      mujeres: "300 ",
      aprendices: "823 ",
      monto: "\$30,257,600"),
  const DiscapacidadRPercentage(
      tipo: "Discapacidad motriz ",
      hombres: "1,571 ",
      mujeres: "1,044 ",
      aprendices: "2,615 ",
      monto: "\$101,207,848"),
  const DiscapacidadRPercentage(
      tipo:
          "Discapacidad múltiple (discapacidades múltiples y otro tipo de discapacidades) ",
      hombres: "739 ",
      mujeres: "537 ",
      aprendices: "1,276 ",
      monto: "\$46,190,655"),
  const DiscapacidadRPercentage(
      tipo:
          "Discapacidad sensorial (auditiva, visual, lenguaje y comunicación) ",
      hombres: "4,529 ",
      mujeres: "5,013 ",
      aprendices: "9,542 ",
      monto: "\$358,231,069"),
  const DiscapacidadRPercentage(
      tipo: "Total:",
      hombres: "7,362",
      mujeres: "6,894 ",
      aprendices: "14,256",
      monto: "\$535,887,173"),
];
