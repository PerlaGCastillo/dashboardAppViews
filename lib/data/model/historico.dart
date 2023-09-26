import 'package:managment/data/historicoClass.dart';

List<historico> geter(){
  historico total =  historico();
  total.periodo = '01/01/2019 - 31/12/2022';
  total.concepto = 'Total de beneficiarios histórico';
  total.cantidad = '2,357,352';
  total.archivo = false;

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

  historico total2019 =  historico();
  total2019.periodo = '01/01/2019 - 31/12/2022';
  total2019.concepto = 'Total de Inversión apoyo económico';
  total2019.cantidad = '\$ 23,520,931,200.00';
  total2019.archivo = false;

  historico total2020 =  historico();
  total2020.periodo = '01/01/2019 - 31/12/2022';
  total2020.concepto = 'Total de Inversión apoyo económico';
  total2020.cantidad = '\$ 24,133,495,330.00';
  total2020.archivo = false;

  historico total2021 =  historico();
  total2021.periodo = '01/01/2019 - 31/12/2022';
  total2021.concepto = 'Total de Inversión apoyo económico';
  total2021.cantidad = '\$ 19,928,268,266.08';
  total2021.archivo = false;

  historico total2022 =  historico();
  total2022.periodo = '01/01/2019 - 31/12/2022';
  total2022.concepto = 'Total de Inversión apoyo económico';
  total2022.cantidad = '20,853,515,807.98';
  total2022.archivo = false;

  historico periodo1922 =  historico();
  periodo1922.periodo = '01/01/2019 - 31/12/2022';
  periodo1922.concepto = 'Total de Inversión apoyo económico (en el periodo del reporte)';
  periodo1922.cantidad = '88,436,210,604.06';
  periodo1922.archivo = false;

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

  return [total, hombres,  mujeres, total2019, total2020,total2021, total2022, periodo1922, imss19, imss20, imss21, imss22, imssTotal];
}
