import 'package:flutter/material.dart';

class EscolaridadPPercentage {
  final String? estudios, aprendices, monto;

  const EscolaridadPPercentage({
    required this.estudios,
    required this.aprendices,
    required this.monto,
  });
}

final EscolaridadPPercentageList = [
  const EscolaridadPPercentage(
      estudios: "Primaria ", aprendices: "252,124 ", monto: "\$10,430,135,302"),
  const EscolaridadPPercentage(
      estudios: "Secundaria ",
      aprendices: "746,287 ",
      monto: "\$28,915,737,585"),
  const EscolaridadPPercentage(
      estudios: "Preparatoria o bachillerato ",
      aprendices: "1,280,129 ",
      monto: "\$49,576,132,413"),
  const EscolaridadPPercentage(
      estudios: "Carrera técnica ",
      aprendices: "98,125 ",
      monto: "\$3,637,679,886"),
  const EscolaridadPPercentage(
      estudios: "Carrera universitaria ",
      aprendices: "470,059 ",
      monto: "\$17,397,110,619"),
  const EscolaridadPPercentage(
      estudios: "Maestría ", aprendices: "4,390 ", monto: "\$152,811,269"),
  const EscolaridadPPercentage(
      estudios: "Doctorado ", aprendices: "69 ", monto: "\$2,150,536"),
  const EscolaridadPPercentage(
      estudios: "Otro posgrado ", aprendices: "1,321 ", monto: "\$48,255,723"),
];
