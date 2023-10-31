import 'package:dgapd/data/historicalClass.dart';

List<historico> geterGenero() {

  historico hombres =  historico();
  hombres.periodo = '01/01/2019 - 31/12/2022';
  hombres.concepto = 'Total de beneficarios hombres';
  hombres.cantidad = '999,112';
  hombres.archivo = false;

  historico mujeres =  historico();
  mujeres.periodo = '01/01/2019 - 31/12/2022';
  mujeres.concepto = 'Total de beneficarias mujeres';
  mujeres.cantidad = '1,358,240';
  mujeres.archivo = false;

  return [hombres, mujeres];
}