import 'package:data/Screens/dashboard/components/benef_progress.dart';
import 'package:data/Screens/responsive.dart';
import 'package:flutter/material.dart';
import 'benefhistoric_info_card.dart';
import 'package:data/model/beneficiarioshistoricomodel.dart';
import '../../constants.dart';

class HistoricalChart extends StatelessWidget {
  const HistoricalChart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Beneficiarios Histórico",
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ],
        ),
        SizedBox(height: defaultPadding),
        Responsive(
          mobile: AcumuladoInfoCardGridView(
            crossAxisCount: _size.width < 650 ? 2 : 5,
            childAspectRatio: _size.width < 650 ? 1.3 : 1,
          ),
          tablet: AcumuladoInfoCardGridView(),
          desktop: AcumuladoInfoCardGridView(
            childAspectRatio: _size.width < 1400 ? 1.2 : 1.3,
          ),
        ),
        SizedBox(height: defaultPadding),
        BenefProgressChart(),
      ],
    );
  }
}

class AcumuladoInfoCardGridView extends StatelessWidget {
  const AcumuladoInfoCardGridView({
    Key? key,
    this.crossAxisCount = 3,
    this.childAspectRatio = 3,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: demoHistorical.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
        childAspectRatio: childAspectRatio,
      ),
      itemBuilder: (context, index) => FileInfoCard(info: demoHistorical[index]),
    );
  }
}
