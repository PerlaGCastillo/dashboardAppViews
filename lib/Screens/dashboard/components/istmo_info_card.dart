import 'package:flutter/material.dart';
import '../../constants.dart';

class IstmoInfoCard extends StatelessWidget {
  const IstmoInfoCard({
    Key? key,
    required this.periodo,
    required this.estado,
    required this.beneficiarios,
    required this. municipios,
    required this. inversion,
  }) : super(key: key);

  final String periodo, estado, beneficiarios, municipios, inversion;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: defaultPadding),
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        //border: Border.all(width: 2, color: primaryColor.withOpacity(0.15)),
        color: creamColor,
        borderRadius: const BorderRadius.all(Radius.circular(defaultPadding),),
      ),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(estado, style: TextStyle(fontSize: 15.0),),
                  Text(municipios,style: TextStyle(fontSize: 14.0),),
                  Text(inversion,style: TextStyle(fontSize: 16.0),),
                  Text(periodo,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 12.0),
                  ),
                ],
              ),
            ),
          ),
          Text(beneficiarios,
            style: TextStyle(fontSize: 17),)
        ],
      ),
    );
  }
}
