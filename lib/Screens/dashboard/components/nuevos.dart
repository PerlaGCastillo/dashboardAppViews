import 'package:data/Screens/dashboard/components/nuevos_info_card.dart';
import 'package:data/Screens/responsive.dart';
import 'package:flutter/material.dart';
import 'nuevos_info_card.dart';
import 'package:data/model/nuevosmodel.dart';
import '../../constants.dart';

class Nuevos extends StatelessWidget {
  const Nuevos({
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
              "Nuevos Beneficiarios",
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ],
        ),

        SizedBox(height: defaultPadding),
        Responsive(
          mobile: NuevosInfoCardGridView(
            crossAxisCount: _size.width < 650 ? 3 : 10,
            childAspectRatio: _size.width < 650 ? 1 : 3,
          ),
          tablet: NuevosInfoCardGridView(),
          desktop: NuevosInfoCardGridView(
            childAspectRatio: _size.width < 1400 ? 1.1 : 1.3,
          ),
        ),
      ],
    );
  }
}

class NuevosInfoCardGridView extends StatelessWidget {
  const NuevosInfoCardGridView({
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
      itemCount: demoNuevos.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
        childAspectRatio: childAspectRatio,
      ),
      itemBuilder: (context, index) => NuevosInfoCard(info: demoNuevos[index]),
    );
  }
}
