import 'package:flutter/material.dart';
import '../../constants.dart';

class ColoniasInfoCard extends StatelessWidget {
  const ColoniasInfoCard({
    Key? key,
    required this.title,
    required this.people,
  }) : super(key: key);

  final String title,people;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: defaultPadding),
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        //border: Border.all(width: 2, color: primaryColor.withOpacity(0.15)),
        color: snowColor,
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
                  Text(title,
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 15.0),
                  ),
                ],
              ),
            ),
          ),
          Text(people,
            style: TextStyle(fontSize: 17),)
        ],
      ),
    );
  }
}
