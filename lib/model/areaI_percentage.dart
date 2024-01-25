import 'package:flutter/material.dart';

class AreaIPercentage {
  final String? area, hombres, mujeres, aprendices;

  const AreaIPercentage({
    required this.area,
    required this.hombres,
    required this.mujeres,
    required this.aprendices,
  });
}

final AreaIPercentageList = [
  const AreaIPercentage
    (
      area: "ADMINISTRATIVA ",
      hombres: "320,155 ",
      mujeres: "536,438 ",
      aprendices: "856,593"
  ),
  const AreaIPercentage(
      area: "AGROPECUARIA ",
      hombres: "124,557 ",
      mujeres: "117,673 ",
      aprendices: "242,230"
  ),
  const AreaIPercentage(
      area: "CIENCIA Y TECNOLOGÍA ",
      hombres: "4,736 ",
      mujeres: "10,901 ",
      aprendices: "15,637"
  ),
  const AreaIPercentage(
      area: "CULTURA Y DEPORTE ",
      hombres: "367,356 ",
      mujeres: "500,771 ",
      aprendices: "868,127"
  ),
  const AreaIPercentage(
      area: "ELECTRICIDAD ",
      hombres: "18,150 ",
      mujeres: "9,080 ",
      aprendices: "27,230"
  ),
  const AreaIPercentage(
      area: "INDUSTRIAL ",
      hombres: "16,629 ",
      mujeres: "8,370 ",
      aprendices: "24,999"
  ),
  const AreaIPercentage(
      area: "OFICIOS ",
      hombres: "89,201 ",
      mujeres: "92,192 ",
      aprendices: "181,393"
  ),
  const AreaIPercentage(
      area: "PROFESIONISTA ",
      hombres: "3,078 ",
      mujeres: "6,122 ",
      aprendices: "9,200"
  ),
  const AreaIPercentage(
      area: "SERVICIOS ",
      hombres: "60,349 ",
      mujeres: "75,503 ",
      aprendices: "135,852"
  ),
  const AreaIPercentage(
      area: "VENTAS/COMERCIO ",
      hombres: "192,866 ",
      mujeres: "298,377 ",
      aprendices: "491,243"
  ),
];