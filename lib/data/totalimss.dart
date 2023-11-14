import 'package:data/data/historicalClass.dart';

List<historico> geter_imss(){
  historico imss19 =  historico();
  imss19.periodo = '2019';
  imss19.concepto = 'Total de Inversión IMSS';
  imss19.cantidad = '329,067,726.31';
  imss19.archivo = false;

  historico imss20 =  historico();
  imss20.periodo = '2020';
  imss20.concepto = 'Total de Inversión IMSS';
  imss20.cantidad = '464,685,765.35';
  imss20.archivo = false;

  historico imss21 =  historico();
  imss21.periodo = '2021';
  imss21.concepto = 'Total de Inversión IMSS';
  imss21.cantidad = '292,777,952.63';
  imss21.archivo = false;

  historico imss22 =  historico();
  imss22.periodo = '2022';
  imss22.concepto = 'Total de Inversión IMSS';
  imss22.cantidad = '261,927,226.92';
  imss22.archivo = false;

  historico imssTotal =  historico();
  imssTotal.periodo = '01/01/2019 - 31/12/2022';
  imssTotal.concepto = 'Total de Inversión IMSS (en el periodo del reporte)';
  imssTotal.cantidad = '1,348,458,671.21';
  imssTotal.archivo = false;

  return [imss19, imss20, imss21, imss22, imssTotal];
}
