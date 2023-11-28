import 'package:data/model/benef_percentage.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:data/Screens/constants.dart';

class BenefProgressChart extends StatefulWidget {
  const BenefProgressChart({Key? key}) : super(key: key);
  @override
  State<BenefProgressChart> createState() => _BenefProgressChartState();
}

class _BenefProgressChartState extends State<BenefProgressChart> {
  final List<HistoricalBenefPercentage> percnt = HistoricalBenefPercentageList;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height/4,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: percnt.length,
        itemBuilder: (context, index) {
          final percentList = percnt[index];
          return Container(
            margin: const EdgeInsets.all(10.0),
            width: MediaQuery.of(context).size.width/2.3,
            decoration: BoxDecoration(
              color: creamColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 13,
                ),
                Text(
                  "${percentList.date}",
                  style: const TextStyle(
                    //color: Colors.white,
                    fontSize: 22,
                  ),
                ),
                const SizedBox(
                  height: 9,
                ),
                Text(
                  "\$${percentList.quantity}",
                  style: const TextStyle(
                    color: greenColor,
                    fontSize: 17,
                  ),
                ),
                const SizedBox(
                  height: 9,
                ),
                CircularPercentIndicator(
                  radius: 25,
                  lineWidth: 5,
                  percent: percentList.percent / 100,
                  backgroundColor: grColor,
                  progressColor: greenColor,
                  backgroundWidth: 1,
                  center: Text(
                    "${percentList.percent}%",
                    style: const TextStyle(
                      color: greenColor,
                      fontSize: 14,
                    ),
                  ),
                ),

                const SizedBox(
                  height: 9,
                ),
                Text(
                  "${percentList.concept}",
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 13,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
