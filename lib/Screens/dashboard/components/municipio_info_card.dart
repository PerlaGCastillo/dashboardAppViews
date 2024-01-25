import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants.dart';

class MunicipioInfoCard extends StatelessWidget {
  const MunicipioInfoCard({
    Key? key,
    required this.concept,
    required this.total,
    required this.detail,
  }) : super(key: key);

  final String concept, total, detail;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: defaultPadding),
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: snowColor,
        //border: Border.all(width: 2, color: primaryColor.withOpacity(0.15)),
        borderRadius: const BorderRadius.all(
          Radius.circular(defaultPadding),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(concept,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 16.0),
                  ),
                  Text(detail, style: Theme.of(context).textTheme.bodyMedium,),
                ],
              ),
            ),
          ),
          Text(total, style: Theme.of(context).textTheme.bodyLarge,)
        ],
      ),
    );
  }
}
