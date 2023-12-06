import 'package:data/Screens/responsive.dart';
import 'package:flutter/material.dart';
import 'zonas_info_card.dart';
import 'package:data/model/zonasmodel.dart';
import '../../constants.dart';

class ZonasChart extends StatelessWidget {
  const ZonasChart({
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
              "Zonas",
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ],
        ),

        SizedBox(height: defaultPadding),
        Responsive(
          mobile: ZonasInfoCardGridView(
            crossAxisCount: _size.width < 650 ? 2 : 3,
            childAspectRatio: _size.width < 650 ? 1.3 : 1,
          ),
          tablet: ZonasInfoCardGridView(),
          desktop: ZonasInfoCardGridView(
            childAspectRatio: _size.width < 1400 ? 1 : 1,
          ),
        ),
        SizedBox(height: defaultPadding),
      ],
    );
  }
}

class ZonasInfoCardGridView extends StatelessWidget {
  const ZonasInfoCardGridView({
    Key? key,
    this.crossAxisCount = 2,
    this.childAspectRatio = 1,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: demoZona.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
        childAspectRatio: childAspectRatio,
      ),
      itemBuilder: (context, index) => ZonaInfoCard(info: demoZona[index]),
    );
  }
}
