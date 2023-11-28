import 'package:data/model/nuevosmodel.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';

class NuevosInfoCard extends StatelessWidget {
  const NuevosInfoCard({
    Key? key,
    required this.info,
  }) : super(key: key);

  final NuevosStorage info;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: creamColor,
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
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge,
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
                style: Theme.of(context)
                    .textTheme
                    .bodySmall,
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
                    .bodySmall,
              ),
            ],
          ),
  ]
    ),
    );
  }
}