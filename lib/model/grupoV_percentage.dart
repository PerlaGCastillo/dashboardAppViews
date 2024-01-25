import 'package:flutter/material.dart';

class GrupoVPercentage {
  final String? descripcion, aprendices, municipios;

  const GrupoVPercentage({
    required this.descripcion,
    required this.aprendices,
    required this.municipios,
  });
}

final GrupoVPercentageList = [
  const GrupoVPercentage(
      descripcion: "Discapacidad ",
      aprendices: "14256 ",
      municipios: "1523 "
  ),
  const GrupoVPercentage(
      descripcion: "Zona indígena ",
      aprendices: "370622 ",
      municipios: "619 "
  ),
  const GrupoVPercentage(
      descripcion: "Marginación alta ",
      aprendices: "393822 ",
      municipios: "490 "
  ),
  const GrupoVPercentage(
      descripcion: "Marginación muy alta ",
      aprendices: "50544 ",
      municipios: "59 "
  ),
  const GrupoVPercentage(
      descripcion: "Violencia ",
      aprendices: "682920 ",
      municipios: "240"
  ),
];