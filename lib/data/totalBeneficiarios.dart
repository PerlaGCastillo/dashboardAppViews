import 'package:dgapd/data/historicalClass.dart';

List<historico> geterTotalBeneficiarios(){
  historico total =  historico();
  total.periodo = '01/01/2019 - 31/12/2022';
  total.concepto = 'Total de beneficiarios histórico';
  total.cantidad = '2,357,352';
  total.archivo = false;

  return [total];
}