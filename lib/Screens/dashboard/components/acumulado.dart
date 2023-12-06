import 'package:data/Screens/responsive.dart';
import 'package:flutter/material.dart';
import 'acumulado_info_card.dart';
import 'package:data/model/acumuladomodel.dart';
import '../../constants.dart';

class Acumulado extends StatelessWidget {
  const Acumulado({
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
              "Acumulado",
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ],
        ),

        SizedBox(height: defaultPadding),
        Responsive(
          mobile: AcumuladoInfoCardGridView(
            crossAxisCount: _size.width < 650 ? 3 : 2,
            childAspectRatio: _size.width < 650 ? 1 : 1,
          ),
          tablet: AcumuladoInfoCardGridView(),
          desktop: AcumuladoInfoCardGridView(
            childAspectRatio: _size.width < 1400 ? 1 : 1,
          ),
        ),
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
      itemCount: demoAcumulado.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
        childAspectRatio: childAspectRatio,
      ),
      itemBuilder: (context, index) => FileInfoCard(info: demoAcumulado[index]),
    );
  }
}
