import 'package:data/Screens/responsive.dart';
import 'package:flutter/material.dart';
import 'centros_info_card.dart';
import 'package:data/model/centrosmodel.dart';
import '../../constants.dart';

class Centro extends StatelessWidget {
  const Centro({
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
              "Centros de Trabajo",
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ],
        ),
        SizedBox(height: defaultPadding),
        Responsive(
          mobile: CentroInfoCardGridView(
            crossAxisCount: _size.width < 650 ? 2 : 2,
            childAspectRatio: _size.width < 650 ? 1.3 : 3,
          ),
          tablet: CentroInfoCardGridView(),
          desktop: CentroInfoCardGridView(
            childAspectRatio: _size.width < 1400 ? 1.1 : 1.3,
          ),
        ),
      ],
    );
  }
}

class CentroInfoCardGridView extends StatelessWidget {
  const CentroInfoCardGridView({
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
      itemCount: demoCentro.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
        childAspectRatio: childAspectRatio,
      ),
      itemBuilder: (context, index) => CentroInfoCard(info: demoCentro[index]),
    );
  }
}
