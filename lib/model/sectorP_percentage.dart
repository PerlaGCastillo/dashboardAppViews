import 'package:flutter/material.dart';

class SectorPPercentage {
  final String? sector, tipo, hombres, mujeres, aprendices;

  const SectorPPercentage({
    required this.sector,
    required this.tipo,
    required this.hombres,
    required this.mujeres,
    required this.aprendices,
  });
}

final SectorPPercentageList = [
  const SectorPPercentage(
      sector: "Sector privado ",
      tipo: "Persona física ",
      hombres: "849,369 ",
      mujeres: "1,183,592 ",
      aprendices: "2,032,961"),
  const SectorPPercentage(
      sector: "Sector privado ",
      tipo: "Persona Moral ",
      hombres: "169,868 ",
      mujeres: "210,608 ",
      aprendices: "380,476"),
  const SectorPPercentage(
      sector: "Sector público ",
      tipo: "Institucion estatal ",
      hombres: "17,086 ",
      mujeres: "26,793 ",
      aprendices: "43,879"),
  const SectorPPercentage(
      sector: "Sector público ",
      tipo: "Institucion federal ",
      hombres: "134,542 ",
      mujeres: "192,730 ",
      aprendices: "327,272"),
  const SectorPPercentage(
      sector: "Sector público ",
      tipo: "Institucion municipal o alcaldía ",
      hombres: "43,657 ",
      mujeres: "65,098 ",
      aprendices: "108,755"),
  const SectorPPercentage(
      sector: "Sector social ",
      tipo: "",
      hombres: "8 ",
      mujeres: "8 ",
      aprendices: "16"),
  const SectorPPercentage(
      sector: "Sector social ",
      tipo: "Persona física ",
      hombres: "1 ",
      mujeres: "3 ",
      aprendices: "4"),
  const SectorPPercentage(
      sector: "Sector social ",
      tipo: "Persona Moral ",
      hombres: "21,760 ",
      mujeres: "33,855 ",
      aprendices: "55,615"),
/*  const SectorPPercentage(
      sector: "Total",
      tipo: " ",
      hombres: "1,712,687 ",
      mujeres: "2,948,978"),*/
];
