import 'package:flutter/material.dart';

class TrenMayaPercentage {
  final String?   periodo, estado, municipios, beneficiarios, inversion ;

  const TrenMayaPercentage({
    required this.periodo,
    required this.estado,
    required this.municipios,
    required this.beneficiarios,
    required this.inversion,
  });
}

final TrenMayaPercentageList = [
  const TrenMayaPercentage(
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Campeche",
      municipios: "Calakmul",
      beneficiarios: "3,528",
      inversion: "\$182,985,993.96"
),
    const TrenMayaPercentage(
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Campeche",
      municipios: "Calkiní",
      beneficiarios: "6,558",
      inversion: "\$260,073,871.62"
),
    const TrenMayaPercentage(
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Campeche",
      municipios: "Campeche",
      beneficiarios: "17,056",
      inversion: "\$609,117,918.78"
),
    const TrenMayaPercentage(
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Campeche",
      municipios: "Candelaria",
      beneficiarios: "5,050",
      inversion: "\$235,888,289.46"
),
    const TrenMayaPercentage(
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Campeche",
      municipios: "Carmen",
      beneficiarios: "7,547",
      inversion: "\$261,326,725.55"
),
    const TrenMayaPercentage(
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Campeche",
      municipios: "Champotón",
      beneficiarios: "6,158",
      inversion: "\$250,533,996.82"
),
    const TrenMayaPercentage(
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Campeche",
      municipios: "Escárcega",
      beneficiarios: "5,078",
      inversion: "\$203,017,402.23"
),
    const TrenMayaPercentage(
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Campeche",
      municipios: "Hecelchakán",
      beneficiarios: "3,934",
      inversion: "\$158,276,131.00"
),
    const TrenMayaPercentage(
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Campeche",
      municipios: "Hopelchén",
      beneficiarios: "4,207",
      inversion: "\$193,338,880.58"
),
    const TrenMayaPercentage(
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Campeche",
      municipios: "Tenabo",
      beneficiarios: "2,127",
      inversion: "\$80,798,477.89"
),
   const TrenMayaPercentage (
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Chiapas",
      municipios: "Palenque",
      beneficiarios: "5,620",
      inversion: "\$286,040,034.59"
),
    const TrenMayaPercentage(
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Chiapas",
      municipios: "Salto de Agua",
      beneficiarios: "1,560",
      inversion: "\$80,811,434.81"
),
   const TrenMayaPercentage (
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Chiapas",
      municipios: "Tumbalá",
      beneficiarios: "1,622",
      inversion: "\$68,132,411.20"
),
   const TrenMayaPercentage (
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Quintana Roo",
      municipios: "Bacalar",
      beneficiarios: "1,584",
      inversion: "\$71,617,172.39"
),
   const TrenMayaPercentage (
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Quintana Roo",
      municipios: "Felipe Carrillo Puerto",
      beneficiarios: "4,953",
      inversion: "\$206,648,413.21"
),
   const TrenMayaPercentage (
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Quintana Roo",
      municipios: "Lázaro Cárdenas",
      beneficiarios: "1,264",
      inversion: "\$54,642,334.95"
),
   const TrenMayaPercentage (
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Quintana Roo",
      municipios: "Othón P. Blanco",
      beneficiarios: "14,161",
      inversion: "\$515,762,791.40"
),
   const TrenMayaPercentage (
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Quintana Roo",
      municipios: "Solidaridad",
      beneficiarios: "1,820",
      inversion: "\$53,736,749.59"
),
   const TrenMayaPercentage (
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Quintana Roo",
      municipios: "Tulum",
      beneficiarios: "497",
      inversion: "\$18,265,652.39"
),
  const TrenMayaPercentage  (
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Tabasco",
      municipios: "Balancán",
      beneficiarios: "5,804",
      inversion: "\$284,691,745.97"
),
   const TrenMayaPercentage (
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Tabasco",
      municipios: "Emiliano Zapata",
      beneficiarios: "4,929",
      inversion: "\$182,378,309.31"
),
   const TrenMayaPercentage (
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Tabasco",
      municipios: "Tenosique",
      beneficiarios: "6,388",
      inversion: "\$272,396,259.57"
),
   const TrenMayaPercentage (
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Yucatán",
      municipios: "Abalá",
      beneficiarios: "71",
      inversion: "\$3,126,948.96"
),
   const TrenMayaPercentage (
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Yucatán",
      municipios: "Acanceh",
      beneficiarios: "158",
      inversion: "\$4,938,805.03"
),
   const TrenMayaPercentage (
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Yucatán",
      municipios: "Baca",
      beneficiarios: "119",
      inversion: "\$4,101,410.21"
),
   const TrenMayaPercentage (
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Yucatán",
      municipios: "Bokobá",
      beneficiarios: "75",
      inversion: "\$3,533,953.20"
),
   const TrenMayaPercentage (
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Yucatán",
      municipios: "Buctzotz",
      beneficiarios: "1,535",
      inversion: "\$65,961,760.84"
),
   const TrenMayaPercentage (
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Yucatán",
      municipios: "Cacalchén",
      beneficiarios: "198",
      inversion: "\$9,234,948.12"
),
   const TrenMayaPercentage (
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Yucatán",
      municipios: "Calotmul",
      beneficiarios: "132",
      inversion: "\$5,961,991.21"
),
   const TrenMayaPercentage (
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Yucatán",
      municipios: "Cansahcab",
      beneficiarios: "500",
      inversion: "\$17,555,244.77"
),
   const TrenMayaPercentage (
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Yucatán",
      municipios: "Celestún",
      beneficiarios: "107",
      inversion: "\$3,584,419.48"
),
   const TrenMayaPercentage (
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Yucatán",
      municipios: "Cenotillo",
      beneficiarios: "76",
      inversion: "\$2,896,253.74"
),
   const TrenMayaPercentage (
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Yucatán",
      municipios: "Chankom",
      beneficiarios: "173",
      inversion: "\$7,039,858.35"
),
   const TrenMayaPercentage (
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Yucatán",
      municipios: "Chemax",
      beneficiarios: "204",
      inversion: "\$11,201,955.71"
),
   const TrenMayaPercentage (
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Yucatán",
      municipios: "Chichimilá",
      beneficiarios: "111",
      inversion: "\$4,486,876.18"
),
  const TrenMayaPercentage  (
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Yucatán",
      municipios: "Chicxulub Pueblo",
      beneficiarios: "55",
      inversion: "\$2,095,477.91"
),
   const TrenMayaPercentage (
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Yucatán",
      municipios: "Chikindzonot",
      beneficiarios: "827",
      inversion: "\$39,417,446.36"
),
   const TrenMayaPercentage (
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Yucatán",
      municipios: "Chocholá",
      beneficiarios: "113",
      inversion: "\$3,998,700.71"
),
   const TrenMayaPercentage (
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Yucatán",
      municipios: "Conkal",
      beneficiarios: "149",
      inversion: "\$4,860,355.06"
),
   const TrenMayaPercentage (
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Yucatán",
      municipios: "Cuncunul",
      beneficiarios: "122",
      inversion: "\$6,318,529.77"
),
   const TrenMayaPercentage (
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Yucatán",
      municipios: "Cuzamá",
      beneficiarios: "62",
      inversion: "\$3,027,855.12"
),
   const TrenMayaPercentage (
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Yucatán",
      municipios: "Dzemul",
      beneficiarios: "114",
      inversion: "\$4,412,308.84"
),
   const TrenMayaPercentage (
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Yucatán",
      municipios: "Dzidzantún",
      beneficiarios: "223",
      inversion: "\$8,341,452.27"
),
    const TrenMayaPercentage(
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Yucatán",
      municipios: "Dzilam de Bravo",
      beneficiarios: "365",
      inversion: "\$15,830,474.40"
),
   const TrenMayaPercentage (
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Yucatán",
      municipios: "Dzilam González",
      beneficiarios: "357",
      inversion: "\$13,521,300.53"
),
    const TrenMayaPercentage(
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Yucatán",
      municipios: "Dzitás",
      beneficiarios: "80",
      inversion: "\$4,747,265.05"
),
   const TrenMayaPercentage (
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Yucatán",
      municipios: "Dzoncauich",
      beneficiarios: "114",
      inversion: "\$4,488,729.49"
),
   const TrenMayaPercentage (
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Yucatán",
      municipios: "Espita",
      beneficiarios: "344",
      inversion: "\$13,525,570.02"
),
   const TrenMayaPercentage (
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Yucatán",
      municipios: "Halachó",
      beneficiarios: "460",
      inversion: "\$20,093,899.54"
),
   const TrenMayaPercentage (
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Yucatán",
      municipios: "Hocabá",
      beneficiarios: "28",
      inversion: "\$1,296,417.75"
),
   const TrenMayaPercentage (
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Yucatán",
      municipios: "Hoctún",
      beneficiarios: "105",
      inversion: "\$3,701,572.55"
),
    const TrenMayaPercentage(
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Yucatán",
      municipios: "Homún",
      beneficiarios: "104",
      inversion: "\$3,749,255.65"
),
   const TrenMayaPercentage (
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Yucatán",
      municipios: "Huhí",
      beneficiarios: "82",
      inversion: "\$2,668,876.45"
),
   const TrenMayaPercentage (
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Yucatán",
      municipios: "Hunucmá",
      beneficiarios: "1,908",
      inversion: "\$69,868,440.52"
),
   const TrenMayaPercentage (
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Yucatán",
      municipios: "Ixil",
      beneficiarios: "104",
      inversion: "\$3,769,150.83"
),
    const TrenMayaPercentage(
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Yucatán",
      municipios: "Izamal",
      beneficiarios: "1,243",
      inversion: "\$46,604,082.81"
),
   const TrenMayaPercentage (
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Yucatán",
      municipios: "Kanasín",
      beneficiarios: "1,189",
      inversion: "\$40,266,041.84"
),
   const TrenMayaPercentage (
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Yucatán",
      municipios: "Kantunil",
      beneficiarios: "82",
      inversion: "\$3,840,378.04"
),
   const TrenMayaPercentage (
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Yucatán",
      municipios: "Kaua",
      beneficiarios: "608",
      inversion: "\$25,828,327.65"
),
   const TrenMayaPercentage (
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Yucatán",
      municipios: "Kinchil",
      beneficiarios: "299",
      inversion: "\$10,210,721.63"
),
   const TrenMayaPercentage (
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Yucatán",
      municipios: "Kopomá",
      beneficiarios: "53",
      inversion: "\$2,201,150.28"
),
   const TrenMayaPercentage (
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Yucatán",
      municipios: "Maxcanú",
      beneficiarios: "998",
      inversion: "\$36,618,896.29"
),
   const TrenMayaPercentage (
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Yucatán",
      municipios: "Mérida",
      beneficiarios: "16,085",
      inversion: "\$553,519,103.96"
),
   const TrenMayaPercentage (
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Yucatán",
      municipios: "Mocochá",
      beneficiarios: "42",
      inversion: "\$1,514,198.37"
),
   const TrenMayaPercentage (
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Yucatán",
      municipios: "Motul",
      beneficiarios: "740",
      inversion: "\$29,773,787.57"
),
   const TrenMayaPercentage (
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Yucatán",
      municipios: "Muna",
      beneficiarios: "433",
      inversion: "\$15,615,032.75"
),
   const TrenMayaPercentage (
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Yucatán",
      municipios: "Muxupip",
      beneficiarios: "71",
      inversion: "\$2,651,540.00"
),
   const TrenMayaPercentage (
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Yucatán",
      municipios: "Opichén",
      beneficiarios: "174",
      inversion: "\$6,291,017.00"
),
   const TrenMayaPercentage (
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Yucatán",
      municipios: "Panabá",
      beneficiarios: "983",
      inversion: "\$41,251,198.44"
),
   const TrenMayaPercentage (
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Yucatán",
      municipios: "Progreso",
      beneficiarios: "1,949",
      inversion: "\$66,926,723.48"
),
    const TrenMayaPercentage(
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Yucatán",
      municipios: "Quintana Roo",
      beneficiarios: "67",
      inversion: "\$3,823,281.15"
),
    const TrenMayaPercentage(
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Yucatán",
      municipios: "Río Lagartos",
      beneficiarios: "177",
      inversion: "\$6,096,781.13"
),
   const TrenMayaPercentage (
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Yucatán",
      municipios: "Sacalum",
      beneficiarios: "364",
      inversion: "\$14,903,064.03"
),
    const TrenMayaPercentage(
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Yucatán",
      municipios: "Samahil",
      beneficiarios: "239",
      inversion: "\$8,092,697.26"
),
   const TrenMayaPercentage (
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Yucatán",
      municipios: "Sanahcat",
      beneficiarios: "22",
      inversion: "\$1,018,885.13"
),
   const TrenMayaPercentage (
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Yucatán",
      municipios: "San Felipe",
      beneficiarios: "385",
      inversion: "\$15,497,934.11"
),
   const TrenMayaPercentage (
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Yucatán",
      municipios: "Santa Elena",
      beneficiarios: "985",
      inversion: "\$39,229,983.84"
),
   const TrenMayaPercentage (
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Yucatán",
      municipios: "Seyé",
      beneficiarios: "101",
      inversion: "\$3,721,628.00"
),
   const TrenMayaPercentage (
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Yucatán",
      municipios: "Sinanché",
      beneficiarios: "35",
      inversion: "\$1,979,513.76"
),
   const TrenMayaPercentage (
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Yucatán",
      municipios: "Sotuta",
      beneficiarios: "42",
      inversion: "\$1,985,341.39"
),
   const TrenMayaPercentage (
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Yucatán",
      municipios: "Sucilá",
      beneficiarios: "231",
      inversion: "\$9,080,028.80"
),
   const TrenMayaPercentage (
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Yucatán",
      municipios: "Sudzal",
      beneficiarios: "175",
      inversion: "\$7,835,431.19"
),
    const TrenMayaPercentage(
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Yucatán",
      municipios: "Suma",
      beneficiarios: "102",
      inversion: "\$4,282,506.93"
),
   const TrenMayaPercentage (
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Yucatán",
      municipios: "Tahmek",
      beneficiarios: "78",
      inversion: "\$3,173,030.29"
),
  const TrenMayaPercentage  (
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Yucatán",
      municipios: "Tecoh",
      beneficiarios: "211",
      inversion: "\$7,828,957.77"
),
   const TrenMayaPercentage (
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Yucatán",
      municipios: "Tekal de Venegas",
      beneficiarios: "303",
      inversion: "\$11,343,121.17"
),
   const TrenMayaPercentage (
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Yucatán",
      municipios: "Tekantó",
      beneficiarios: "230",
      inversion: "\$10,695,138.57"
),
   const TrenMayaPercentage (
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Yucatán",
      municipios: "Tekit",
      beneficiarios: "206",
      inversion: "\$7,602,745.22"
),
   const TrenMayaPercentage (
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Yucatán",
      municipios: "Tekom",
      beneficiarios: "121",
      inversion: "\$5,388,784.00"
),
   const TrenMayaPercentage (
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Yucatán",
      municipios: "Telchac Pueblo",
      beneficiarios: "68",
      inversion: "\$2,625,115.73"
),
  const TrenMayaPercentage  (
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Yucatán",
      municipios: "Telchac Puerto",
      beneficiarios: "52",
      inversion: "\$1,653,855.51"
),
  const TrenMayaPercentage  (
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Yucatán",
      municipios: "Temax",
      beneficiarios: "193",
      inversion: "\$7,265,266.27"
),
   const TrenMayaPercentage (
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Yucatán",
      municipios: "Temozón",
      beneficiarios: "879",
      inversion: "\$37,756,568.94"
),
   const TrenMayaPercentage (
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Yucatán",
      municipios: "Tepakán",
      beneficiarios: "107",
      inversion: "\$4,695,743.28"
),
   const TrenMayaPercentage (
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Yucatán",
      municipios: "Tetiz",
      beneficiarios: "233",
      inversion: "\$8,591,283.48"
),
   const TrenMayaPercentage (
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Yucatán",
      municipios: "Teya",
      beneficiarios: "60",
      inversion: "\$1,836,562.48"
),
   const TrenMayaPercentage (
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Yucatán",
      municipios: "Ticul",
      beneficiarios: "2,636",
      inversion: "\$102,695,969.61"
),
   const TrenMayaPercentage (
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Yucatán",
      municipios: "Timucuy",
      beneficiarios: "27",
      inversion: "\$1,151,222.32"
),
   const TrenMayaPercentage (
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Yucatán",
      municipios: "Tinum",
      beneficiarios: "330",
      inversion: "\$12,902,387.52"
),
    const TrenMayaPercentage(
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Yucatán",
      municipios: "Tixcacalcupul",
      beneficiarios: "687",
      inversion: "\$30,667,515.75"
),
   const TrenMayaPercentage (
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Yucatán",
      municipios: "Tixkokob",
      beneficiarios: "607",
      inversion: "\$22,952,816.64"
),
  const TrenMayaPercentage  (
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Yucatán",
      municipios: "Tixpéhual",
      beneficiarios: "46",
      inversion: "\$1,315,588.50"
),
   const TrenMayaPercentage (
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Yucatán",
      municipios: "Tizimín",
      beneficiarios: "1,621",
      inversion: "\$67,260,019.73"
),
   const TrenMayaPercentage (
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Yucatán",
      municipios: "Tunkás",
      beneficiarios: "111",
      inversion: "\$6,553,521.62"
),
   const TrenMayaPercentage (
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Yucatán",
      municipios: "Uayma",
      beneficiarios: "153",
      inversion: "\$6,345,395.34"
),
  const TrenMayaPercentage  (
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Yucatán",
      municipios: "Ucú",
      beneficiarios: "568",
      inversion: "\$20,323,565.49"
),
   const TrenMayaPercentage (
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Yucatán",
      municipios: "Umán",
      beneficiarios: "1,459",
      inversion: "\$47,368,043.04"
),
  const TrenMayaPercentage  (
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Yucatán",
      municipios: "Valladolid",
      beneficiarios: "1,738",
      inversion: "\$68,083,929.90"
),
   const TrenMayaPercentage (
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Yucatán",
      municipios: "Xocchel",
      beneficiarios: "18",
      inversion: "\$834,402.71"
),
   const TrenMayaPercentage (
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Yucatán",
      municipios: "Yaxcabá",
      beneficiarios: "860",
      inversion: "\$34,980,659.76"
),
   const TrenMayaPercentage (
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Yucatán",
      municipios: "Yaxkukul",
      beneficiarios: "63",
      inversion: "\$1,852,474.41"
),
   const TrenMayaPercentage (
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Yucatán",
      municipios: "Yobaín",
      beneficiarios: "57",
      inversion: "\$1,758,709.94"
) ,

];