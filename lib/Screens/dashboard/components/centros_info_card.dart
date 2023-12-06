import 'package:data/model/centrosmodel.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';

class CentroInfoCard extends StatelessWidget {
  const CentroInfoCard({
    Key? key,
    required this.info,
  }) : super(key: key);

  final CentroStorage info;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color:creamColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "${info.people}",
                style: TextStyle(fontSize: 16.0),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                info.concept!,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 14.0),
              ),

            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                info.date!,
                style: Theme.of(context)
                    .textTheme
                    .caption,
              ),
            ],
          ),
  ]
    ),
    );
  }
}