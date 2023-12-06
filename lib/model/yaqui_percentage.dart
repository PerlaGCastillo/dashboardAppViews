import 'package:flutter/material.dart';

class YaquisPercentage {
  final String?   periodo, estado, municipios, beneficiarios, cp ;

  const YaquisPercentage({
    required this.periodo,
    required this.estado,
    required this.municipios,
    required this.beneficiarios,
    required this.cp,
  });
}

final YaquisPercentageList = [
    const YaquisPercentage(
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Sonora",
      municipios: "Guaymas",
      cp: "85513",
      beneficiarios: "70"
    ),
    const YaquisPercentage(
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Sonora",
      municipios: "Guaymas",
      cp: "85507",
      beneficiarios: "37"
    ),
    const YaquisPercentage(
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Sonora",
      municipios: "Guaymas",
      cp: "85510",
      beneficiarios: "35"
    ),
    const YaquisPercentage(
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Sonora",
      municipios: "Cajeme",
      cp: "85217",
      beneficiarios: "16"
    ),
    const YaquisPercentage(
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Sonora",
      municipios: "Cajeme",
      cp: "85200",
      beneficiarios: "39"
    ),
    const YaquisPercentage(
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Sonora",
      municipios: "San Ignacio Río Muerto",
      cp: "85515",
      beneficiarios: "36"
    ),
    const YaquisPercentage(
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Sonora",
      municipios: "San Ignacio Río Muerto",
      cp: "85519",
      beneficiarios: "60"
    ),
    const YaquisPercentage(
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Sonora",
      municipios: "Bacúm",
      cp: "85260",
      beneficiarios: "18"
    ),
];