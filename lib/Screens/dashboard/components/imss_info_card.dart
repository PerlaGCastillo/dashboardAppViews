import 'package:flutter/material.dart';
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
    return SingleChildScrollView(
      child: Container(
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
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 16.0),
                    ),
                    Text( date, style: Theme.of(context).textTheme.bodyMedium,),
                  ],
                ),
              ),
            ),
            Text(people,
              style: TextStyle(fontSize: 16.0),)
          ],
        ),
      ),
    );
  }
}
