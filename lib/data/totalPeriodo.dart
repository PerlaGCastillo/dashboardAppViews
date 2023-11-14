import 'package:data/data/historicalClass.dart';

List<historico> geter_periodo(){
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

  return [total2019, total2020, total2021, total2022, periodo1922];
}