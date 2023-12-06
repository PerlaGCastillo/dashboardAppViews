import 'package:flutter/material.dart';

class IstmoPercentage {
  final String?   periodo, estado, municipios, beneficiarios, inversion ;

  const IstmoPercentage({
    required this.periodo,
    required this.estado,
    required this.municipios,
    required this.beneficiarios,
    required this.inversion,
  });
}

final IstmoPercentageList = [
    const IstmoPercentage(
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Oaxaca",
      municipios: "Asunción Ixtaltepec",
      beneficiarios: "368",
      inversion: "\$17,564,410.13"
    ),
    const IstmoPercentage(
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Oaxaca",
      municipios: "El Barrio de la Soledad",
      beneficiarios: "144",
      inversion: "\$6,186,710.17"
    ),
    const IstmoPercentage(
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Oaxaca",
      municipios: "Ciudad Ixtepec",
      beneficiarios: "1,589",
      inversion: "\$59,706,822.21"
    ),
    const IstmoPercentage(
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Oaxaca",
      municipios: "Chahuites",
      beneficiarios: "258",
      inversion: "\$10,015,975.50"
    ),
    const IstmoPercentage(
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Oaxaca",
      municipios: "El Espinal",
      beneficiarios: "253",
      inversion: "\$8,897,697.26"
    ),
    const IstmoPercentage(
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Oaxaca",
      municipios: "Guevea de Humboldt",
      beneficiarios: "692",
      inversion: "\$32,696,594.07"
    ),
    const IstmoPercentage(
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Oaxaca",
      municipios: "Heroica Ciudad de Juchitán de Zaragoza",
      beneficiarios: "6,566",
      inversion: "\$236,430,757.34"
    ),
    const IstmoPercentage(
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Oaxaca",
      municipios: "Magdalena Tequisistlán",
      beneficiarios: "197",
      inversion: "\$11,328,522.19"
    ),
    const IstmoPercentage(
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Oaxaca",
      municipios: "Magdalena Tlacotepec",
      beneficiarios: "54",
      inversion: "\$2,644,088.61"
    ),
    const IstmoPercentage(
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Oaxaca",
      municipios: "Matías Romero Avendaño",
      beneficiarios: "1,503",
      inversion: "\$57,523,571.77"
    ),
    const IstmoPercentage(
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Oaxaca",
      municipios: "Santiago Niltepec",
      beneficiarios: "651",
      inversion: "\$26,665,608.64"
    ),
    const IstmoPercentage(
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Oaxaca",
      municipios: "Reforma de Pineda",
      beneficiarios: "478",
      inversion: "\$19,255,001.56"
    ),
    const IstmoPercentage(
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Oaxaca",
      municipios: "Salina Cruz",
      beneficiarios: "2,067",
      inversion: "\$67,354,637.96"
    ),
    const IstmoPercentage(
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Oaxaca",
      municipios: "San Blas Atempa",
      beneficiarios: "539",
      inversion: "\$19,768,565.36"
    ),
    const IstmoPercentage(
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Oaxaca",
      municipios: "San Dionisio del Mar",
      beneficiarios: "395",
      inversion: "\$16,111,695.65"
    ),
    const IstmoPercentage(
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Oaxaca",
      municipios: "San Francisco del Mar",
      beneficiarios: "1,241",
      inversion: "\$47,995,773.57"
    ),
    const IstmoPercentage(
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Oaxaca",
      municipios: "San Francisco Ixhuatán",
      beneficiarios: "1,151",
      inversion: "\$49,692,919.11"
    ),
    const IstmoPercentage(
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Oaxaca",
      municipios: "San Juan Cotzocón",
      beneficiarios: "451",
      inversion: "\$21,443,331.39"
    ),
    const IstmoPercentage(
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Oaxaca",
      municipios: "San Juan Guichicovi",
      beneficiarios: "532",
      inversion: "\$28,548,563.67"
    ),
    const IstmoPercentage(
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Oaxaca",
      municipios: "San Juan Mazatlán",
      beneficiarios: "790",
      inversion: "\$37,887,549.48"
    ),
    const IstmoPercentage(
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Oaxaca",
      municipios: "San Lucas Camotlán",
      beneficiarios: "8",
      inversion: "\$442,336.26"
    ),
    const IstmoPercentage(
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Oaxaca",
      municipios: "San Mateo del Mar",
      beneficiarios: "106",
      inversion: "\$4,632,956.87"
    ),
    const IstmoPercentage(
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Oaxaca",
      municipios: "San Miguel Chimalapa",
      beneficiarios: "196",
      inversion: "\$11,952,549.28"
    ),
    const IstmoPercentage(
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Oaxaca",
      municipios: "San Miguel Tenango",
      beneficiarios: "29",
      inversion: "\$2,129,621.06"
    ),
    const IstmoPercentage(
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Oaxaca",
      municipios: "San Pedro Comitancillo",
      beneficiarios: "129",
      inversion: "\$5,190,555.01"
    ),
    const IstmoPercentage(
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Oaxaca",
      municipios: "San Pedro Huamelula",
      beneficiarios: "471",
      inversion: "\$19,968,702.27"
    ),
    const IstmoPercentage(
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Oaxaca",
      municipios: "San Pedro Huilotepec",
      beneficiarios: "102",
      inversion: "\$3,367,631.13"
    ),
    const IstmoPercentage(
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Oaxaca",
      municipios: "San Pedro Tapanatepec",
      beneficiarios: "722",
      inversion: "\$29,371,012.67"
    ),
    const IstmoPercentage(
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Oaxaca",
      municipios: "Santa María Chimalapa",
      beneficiarios: "221",
      inversion: "\$16,337,547.26"
    ),
    const IstmoPercentage(
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Oaxaca",
      municipios: "Santa María Guienagati",
      beneficiarios: "445",
      inversion: "\$18,440,629.58"
    ),
    const IstmoPercentage(
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Oaxaca",
      municipios: "Santa María Jalapa del Marqués",
      beneficiarios: "724",
      inversion: "\$28,844,756.45"
    ),
    const IstmoPercentage(
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Oaxaca",
      municipios: "Santa María Mixtequilla",
      beneficiarios: "243",
      inversion: "\$10,047,206.72"
    ),
    const IstmoPercentage(
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Oaxaca",
      municipios: "Santa María Petapa",
      beneficiarios: "345",
      inversion: "\$13,778,123.13"
    ),
    const IstmoPercentage(
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Oaxaca",
      municipios: "Santa María Totolapilla",
      beneficiarios: "10",
      inversion: "\$539,080.34"
    ),
    const IstmoPercentage(
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Oaxaca",
      municipios: "Santa María Xadani",
      beneficiarios: "354",
      inversion: "\$12,257,662.20"
    ),
    const IstmoPercentage(
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Oaxaca",
      municipios: "Santiago Astata",
      beneficiarios: "196",
      inversion: "\$7,977,986.42"
    ),
    const IstmoPercentage(
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Oaxaca",
      municipios: "Santiago Ixcuintepec",
      beneficiarios: "12",
      inversion: "\$514,737.38"
    ),
    const IstmoPercentage(
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Oaxaca",
      municipios: "Santiago Lachiguiri",
      beneficiarios: "240",
      inversion: "\$12,560,252.40"
    ),
    const IstmoPercentage(
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Oaxaca",
      municipios: "Santiago Laollaga",
      beneficiarios: "245",
      inversion: "\$11,733,233.73"
    ),
    const IstmoPercentage(
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Oaxaca",
      municipios: "Santiago Yaveo",
      beneficiarios: "268",
      inversion: "\$10,502,099.94"
    ),
    const IstmoPercentage(
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Oaxaca",
      municipios: "Santo Domingo Ingenio",
      beneficiarios: "252",
      inversion: "\$8,586,190.53"
    ),
    const IstmoPercentage(
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Oaxaca",
      municipios: "Santo Domingo Chihuitán",
      beneficiarios: "50",
      inversion: "\$2,697,939.71"
    ),
    const IstmoPercentage(
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Oaxaca",
      municipios: "Santo Domingo Petapa",
      beneficiarios: "262",
      inversion: "\$13,357,588.05"
    ),
    const IstmoPercentage(
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Oaxaca",
      municipios: "Santo Domingo Tehuantepec",
      beneficiarios: "3,688",
      inversion: "\$138,586,199.37"
    ),
    const IstmoPercentage(
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Oaxaca",
      municipios: "Santo Domingo Zanatepec",
      beneficiarios: "1,953",
      inversion: "\$79,555,013.94"
    ),
    const IstmoPercentage(
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Oaxaca",
      municipios: "Unión Hidalgo",
      beneficiarios: "1,146",
      inversion: "\$39,223,125.80"
    ),
    const IstmoPercentage(
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Veracruz",
      municipios: "Acayucan",
      beneficiarios: "2,710",
      inversion: "\$112,787,196.71"
    ),
    const IstmoPercentage(
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Veracruz",
      municipios: "Angel R. Cabada",
      beneficiarios: "1,174",
      inversion: "\$46,423,884.54"
    ),
    const IstmoPercentage(
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Veracruz",
      municipios: "Catemaco",
      beneficiarios: "1,258",
      inversion: "\$54,974,289.15"
    ),
    const IstmoPercentage(
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Veracruz",
      municipios: "Coatzacoalcos",
      beneficiarios: "6,525",
      inversion: "\$216,471,799.88"
    ),
    const IstmoPercentage(
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Veracruz",
      municipios: "Cosoleacaque",
      beneficiarios: "2,444",
      inversion: "\$92,950,478.75"
    ),
    const IstmoPercentage(
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Veracruz",
      municipios: "Chinameca",
      beneficiarios: "486",
      inversion: "\$22,071,791.78"
    ),
    const IstmoPercentage(
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Veracruz",
      municipios: "Las Choapas",
      beneficiarios: "1,478",
      inversion: "\$69,674,198.66"
    ),
    const IstmoPercentage(
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Veracruz",
      municipios: "Hidalgotitlán",
      beneficiarios: "1,728",
      inversion: "\$78,464,409.27"
    ),
    const IstmoPercentage(
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Veracruz",
      municipios: "Hueyapan de Ocampo",
      beneficiarios: "923",
      inversion: "\$45,901,840.79"
    ),
    const IstmoPercentage(
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Veracruz",
      municipios: "Isla",
      beneficiarios: "1,904",
      inversion: "\$76,920,035.47"
    ),
    const IstmoPercentage(
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Veracruz",
      municipios: "Ixhuatlán del Sureste",
      beneficiarios: "259",
      inversion: "\$10,087,889.21"
    ),
    const IstmoPercentage(
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Veracruz",
      municipios: "Jáltipan",
      beneficiarios: "1,442",
      inversion: "\$61,062,961.31"
    ),
    const IstmoPercentage(
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Veracruz",
      municipios: "Jesús Carranza",
      beneficiarios: "1,152",
      inversion: "\$48,224,998.44"
    ),
    const IstmoPercentage(
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Veracruz",
      municipios: "Juan Rodríguez Clara",
      beneficiarios: "706",
      inversion: "\$36,469,511.48"
    ),
    const IstmoPercentage(
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Veracruz",
      municipios: "Mecayapan",
      beneficiarios: "3,292",
      inversion: "\$133,283,534.21"
    ),
    const IstmoPercentage(
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Veracruz",
      municipios: "Minatitlán",
      beneficiarios: "4,262",
      inversion: "\$165,269,162.43"
    ),
    const IstmoPercentage(
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Veracruz",
      municipios: "Moloacán",
      beneficiarios: "229",
      inversion: "\$9,947,538.89"
    ),
    const IstmoPercentage(
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Veracruz",
      municipios: "Oluta",
      beneficiarios: "593",
      inversion: "\$23,997,545.40"
    ),
    const IstmoPercentage(
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Veracruz",
      municipios: "Oteapan",
      beneficiarios: "893",
      inversion: "\$37,144,931.34"
    ),
    const IstmoPercentage(
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Veracruz",
      municipios: "Pajapan",
      beneficiarios: "1,942",
      inversion: "\$85,096,225.28"
    ),
    const IstmoPercentage(
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Veracruz",
      municipios: "Playa Vicente",
      beneficiarios: "3,322",
      inversion: "\$134,083,281.87"
    ),
    const IstmoPercentage(
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Veracruz",
      municipios: "San Andrés Tuxtla",
      beneficiarios: "2,707",
      inversion: "\$114,995,092.73"
    ),
    const IstmoPercentage(
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Veracruz",
      municipios: "San Juan Evangelista",
      beneficiarios: "593",
      inversion: "\$32,547,589.78"
    ),
    const IstmoPercentage(
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Veracruz",
      municipios: "Santiago Tuxtla",
      beneficiarios: "1,251",
      inversion: "\$54,603,746.96"
    ),
    const IstmoPercentage(
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Veracruz",
      municipios: "Sayula de Alemán",
      beneficiarios: "990",
      inversion: "\$48,602,776.47"
    ),
    const IstmoPercentage(
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Veracruz",
      municipios: "Soconusco",
      beneficiarios: "401",
      inversion: "\$17,734,901.25"
    ),
    const IstmoPercentage(
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Veracruz",
      municipios: "Soteapan",
      beneficiarios: "3,144",
      inversion: "\$138,361,502.99"
    ),
    const IstmoPercentage(
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Veracruz",
      municipios: "Texistepec",
      beneficiarios: "1,029",
      inversion: "\$49,669,238.87"
    ),
    const IstmoPercentage(
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Veracruz",
      municipios: "Zaragoza",
      beneficiarios: "777",
      inversion: "\$32,283,341.47"
    ),
    const IstmoPercentage(
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Veracruz",
      municipios: "Agua Dulce",
      beneficiarios: "554",
      inversion: "\$23,169,340.88"
    ),
    const IstmoPercentage(
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Veracruz",
      municipios: "Nanchital de Lázaro Cárdenas del Río",
      beneficiarios: "361",
      inversion: "\$12,137,301.54"
    ),
    const IstmoPercentage(
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Veracruz",
      municipios: "Tatahuicapan de Juárez",
      beneficiarios: "1,428",
      inversion: "\$67,140,704.03"
    ),
    const IstmoPercentage(
      periodo: "01/01/2019 - 31/12/2022",
      estado: "Veracruz",
      municipios: "Uxpanapa",
      beneficiarios: "1,142",
      inversion: "\$58,077,953.15"
    ),
];
//26.5
//27.2
//22.5
//23.5
//24.4
//34.4
//21.7
//19.4
