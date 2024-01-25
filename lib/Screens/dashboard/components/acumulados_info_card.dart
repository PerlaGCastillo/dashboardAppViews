import 'package:flutter/material.dart';
import '../../constants.dart';

class AcumuladoInfoCard extends StatelessWidget {
  const AcumuladoInfoCard({
    Key? key,
    required this.description,
    required this.people,
    required this.amount,
  }) : super(key: key);

  final String description, people, amount;

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
                    Text(people,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    Text(description, style: Theme.of(context).textTheme.bodyMedium,),
                    Text("\$ ${amount} ", style: Theme.of(context).textTheme.bodyMedium,),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
