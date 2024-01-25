import 'package:data/Screens/dashboard/components/discapacidadR_progress.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';

class DiscapacidadRDetails extends StatelessWidget {
  const DiscapacidadRDetails({
    Key? key,
  }) : super(key: key);

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
        children: [
          Text(
            "Discapacidad",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: defaultPadding),
          DiscapacidadRProgressChart(),
        ],
      ),
    );
  }
}
