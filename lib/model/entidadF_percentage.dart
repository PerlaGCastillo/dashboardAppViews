import 'package:flutter/material.dart';

class EntidadFPercentage {
  final String? entidad, clave, hombres, mujeres, aprendices, monto;

  const EntidadFPercentage({
    required this.entidad,
    required this.clave,
    required this.hombres,
    required this.mujeres,
    required this.aprendices,
    required this.monto,
  });
}

final EntidadFPercentageList = [
  const EntidadFPercentage(
      entidad: "AGUASCALIENTES ",
      clave: "01 ",
      hombres: "8,474 ",
      mujeres: "15,409 ",
      aprendices: "23,883 ",
      monto: "\$857,150,434.84"),
  const EntidadFPercentage(
      entidad: "BAJA CALIFORNIA ",
      clave: "02 ",
      hombres: "4,510 ",
      mujeres: "5,791 ",
      aprendices: "10,301 ",
      monto: "\$347,677,239.78"),
  const EntidadFPercentage(
      entidad: "BAJA CALIFORNIA SUR ",
      clave: "03 ",
      hombres: "8,287 ",
      mujeres: "11,127 ",
      aprendices: "19,414 ",
      monto: "\$742,152,889.37"),
  const EntidadFPercentage(
      entidad: "CAMPECHE ",
      clave: "04 ",
      hombres: "33,207 ",
      mujeres: "43,568 ",
      aprendices: "76,775 ",
      monto: "\$3,143,849,411.99"),
  const EntidadFPercentage(
      entidad: "CHIAPAS ",
      clave: "07 ",
      hombres: "122,738 ",
      mujeres: "159,221 ",
      aprendices: "281,959 ",
      monto: "\$11,708,331,646.99"),
  const EntidadFPercentage(
      entidad: "CHIHUAHUA ",
      clave: "08 ",
      hombres: "15,301 ",
      mujeres: "23,459 ",
      aprendices: "38,760 ",
      monto: "\$1,521,064,413.31"),
  const EntidadFPercentage(
      entidad: "CIUDAD DE MÉXICO ",
      clave: "09 ",
      hombres: "52,337 ",
      mujeres: "69,473 ",
      aprendices: "121,810 ",
      monto: "\$4,151,876,661.51"),
  const EntidadFPercentage(
      entidad: "COAHUILA DE ZARAGOZA ",
      clave: "05 ",
      hombres: "8,076 ",
      mujeres: "12,914 ",
      aprendices: "20,990 ",
      monto: "\$703,180,198.92"),
  const EntidadFPercentage(
      entidad: "COLIMA ",
      clave: "06 ",
      hombres: "9,890 ",
      mujeres: "14,780 ",
      aprendices: "24,670 ",
      monto: "\$889,486,947.98"),
  const EntidadFPercentage(
      entidad: "DURANGO ",
      clave: "10 ",
      hombres: "16,817 ",
      mujeres: "23,869 ",
      aprendices: "40,686 ",
      monto: "\$1,682,966,220.65"),
  const EntidadFPercentage(
      entidad: "GUANAJUATO ",
      clave: "11 ",
      hombres: "15,049 ",
      mujeres: "24,962 ",
      aprendices: "40,011 ",
      monto: "\$1,390,945,607.87"),
  const EntidadFPercentage(
      entidad: "GUERRERO ",
      clave: "12 ",
      hombres: "88,269 ",
      mujeres: "117,383 ",
      aprendices: "205,652 ",
      monto: "\$7,947,461,259.92"),
  const EntidadFPercentage(
      entidad: "HIDALGO ",
      clave: "13 ",
      hombres: "25,182 ",
      mujeres: "35,827 ",
      aprendices: "61,009 ",
      monto: "\$2,254,623,727.41"),
  const EntidadFPercentage(
      entidad: "JALISCO ",
      clave: "14 ",
      hombres: "23,086 ",
      mujeres: "35,003 ",
      aprendices: "58,089 ",
      monto: "\$1,996,602,141.16"),
  const EntidadFPercentage(
      entidad: "MÉXICO ",
      clave: "15 ",
      hombres: "100,685 ",
      mujeres: "139,481 ",
      aprendices: "240,166 ",
      monto: "\$8,529,473,136.77"),
  const EntidadFPercentage(
      entidad: "MICHOACÁN DE OCAMPO ",
      clave: "16 ",
      hombres: "70,938 ",
      mujeres: "98,782 ",
      aprendices: "169,720 ",
      monto: "\$6,378,556,277.77"),
  const EntidadFPercentage(
      entidad: "MORELOS ",
      clave: "17 ",
      hombres: "44,622 ",
      mujeres: "58,510 ",
      aprendices: "103,132 ",
      monto: "\$3,840,328,592.47"),
  const EntidadFPercentage(
      entidad: "NAYARIT ",
      clave: "18 ",
      hombres: "15,257 ",
      mujeres: "21,611 ",
      aprendices: "36,868 ",
      monto: "\$1,400,335,914.89"),
  const EntidadFPercentage(
      entidad: "NUEVO LEÓN ",
      clave: "19 ",
      hombres: "6,502 ",
      mujeres: "9,209 ",
      aprendices: "15,711 ",
      monto: "\$517,278,269.42"),
  const EntidadFPercentage(
      entidad: "OAXACA ",
      clave: "20 ",
      hombres: "51,177 ",
      mujeres: "72,759 ",
      aprendices: "123,936 ",
      monto: "\$4,835,516,972.02"),
  const EntidadFPercentage(
      entidad: "PUEBLA ",
      clave: "21 ",
      hombres: "46,706 ",
      mujeres: "65,089 ",
      aprendices: "111,795 ",
      monto: "\$4,403,804,776.37"),
  const EntidadFPercentage(
      entidad: "QUERÉTARO ",
      clave: "22 ",
      hombres: "12,416 ",
      mujeres: "20,362 ",
      aprendices: "32,778 ",
      monto: "\$1,187,907,877.78"),
  const EntidadFPercentage(
      entidad: "QUINTANA ROO ",
      clave: "23 ",
      hombres: "20,148 ",
      mujeres: "27,747 ",
      aprendices: "47,895 ",
      monto: "\$1,836,171,193.54"),
  const EntidadFPercentage(
      entidad: "SAN LUIS POTOSÍ ",
      clave: "24 ",
      hombres: "20,272 ",
      mujeres: "30,478 ",
      aprendices: "50,750 ",
      monto: "\$2,006,370,780.25"),
  const EntidadFPercentage(
      entidad: "SINALOA ",
      clave: "25 ",
      hombres: "18,840 ",
      mujeres: "25,450 ",
      aprendices: "44,290 ",
      monto: "\$1,656,356,211.33"),
  const EntidadFPercentage(
      entidad: "SONORA ",
      clave: "26 ",
      hombres: "8,536 ",
      mujeres: "12,177 ",
      aprendices: "20,713 ",
      monto: "\$707,310,807.86"),
  const EntidadFPercentage(
      entidad: "TABASCO ",
      clave: "27 ",
      hombres: "110,410 ",
      mujeres: "147,617 ",
      aprendices: "258,027 ",
      monto: "\$10,606,199,852.53"),
  const EntidadFPercentage(
      entidad: "TAMAULIPAS ",
      clave: "28 ",
      hombres: "25,028 ",
      mujeres: "34,605 ",
      aprendices: "59,633 ",
      monto: "\$2,273,800,911.21"),
  const EntidadFPercentage(
      entidad: "TLAXCALA ",
      clave: "29 ",
      hombres: "39,732 ",
      mujeres: "56,063 ",
      aprendices: "95,795 ",
      monto: "\$3,722,773,320.17"),
  const EntidadFPercentage(
      entidad: "VERACRUZ ",
      clave: "30 ",
      hombres: "121,971 ",
      mujeres: "164,174 ",
      aprendices: "286,145 ",
      monto: "\$11,597,729,520.61"),
  const EntidadFPercentage(
      entidad: "YUCATÁN ",
      clave: "31 ",
      hombres: "31,312 ",
      mujeres: "45,647 ",
      aprendices: "76,959 ",
      monto: "\$3,101,117,295.96"),
  const EntidadFPercentage(
      entidad: "ZACATECAS ",
      clave: "32 ",
      hombres: "21,682 ",
      mujeres: "33,557 ",
      aprendices: "55,239 ",
      monto: "\$2,221,612,820.09"),
  const EntidadFPercentage(
      entidad: "Total: ",
      clave: "",
      hombres: "1,197,457 ",
      mujeres: "1,656,104 ",
      aprendices: "2,853,561 ",
      monto: "\$110,160,013,332.74"),
];
