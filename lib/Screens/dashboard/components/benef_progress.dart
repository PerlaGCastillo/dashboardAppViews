import 'package:data/model/benef_percentage.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

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
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: percnt.length,
        itemBuilder: (context, index) {
          final percentList = percnt[index];
          return Container(
            margin: const EdgeInsets.only(right: 10),
            width: 85,
            decoration: BoxDecoration(
              color: Colors.grey.shade900,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 6,
                ),
                CircularPercentIndicator(
                  radius: 25,
                  lineWidth: 5,
                  percent: percentList.percent / 100,
                  backgroundColor: Colors.pink.shade200,
                  progressColor: Colors.purple,
                  backgroundWidth: 1,
                  center: Text(
                    "${percentList.percent}%",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  "${percentList.concept}",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 11,
                  ),
                ),
                Text(
                  "\$${percentList.quantity}",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                  ),
                ),
                Text(
                  "${percentList.date}",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
