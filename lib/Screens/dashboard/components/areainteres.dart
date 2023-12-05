import 'package:data/model/areainteresmodel.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';

class AreaInteres extends StatelessWidget {
  const AreaInteres({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: Theme.of(context).canvasColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Área Interés",
            style: Theme.of(context).textTheme.subtitle1,
          ),
          SizedBox(
            width: double.infinity,
            child: DataTable(
              columnSpacing: defaultPadding,
              //minWidth: 600,
              columns: [
                DataColumn(
                  label: Text("Periodo"),
                ),
                DataColumn(
                  label: Text("Área"),
                ),
                DataColumn(
                  label: Text("Mujeres"),
                ),
                DataColumn(
                  label: Text("Hombres"),
                ),
                DataColumn(
                  label: Text("Total"),
                ),
              ],
              rows: List.generate(
                demoAreaInteres.length,
                (index) => recentFileDataRow(demoAreaInteres[index]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

DataRow recentFileDataRow(AreaInteresModel fileInfo) {
  return DataRow(
    cells: [
      DataCell(
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Text(fileInfo.date!),
            ),
          ],
        ),
      ),
      DataCell(Text(fileInfo.area!)),
      DataCell(Text(fileInfo.women!)),
      DataCell(Text(fileInfo.men!)),
      DataCell(Text(fileInfo.total!)),
    ],
  );
}
