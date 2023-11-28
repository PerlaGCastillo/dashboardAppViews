import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants.dart';

class ImssInfoCard extends StatelessWidget {
  const ImssInfoCard({
    Key? key,
    required this.title,
    required this.date,
    required this.people,
  }) : super(key: key);

  final String title, date, people;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: defaultPadding),
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        border: Border.all(width: 2, color: primaryColor.withOpacity(0.15)),
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
                  Text(title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text( date, style: Theme.of(context).textTheme.caption,),
                ],
              ),
            ),
          ),
          Text(people, style: Theme.of(context).textTheme.bodyText1,)
        ],
      ),
    );
  }
}
