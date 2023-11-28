import 'package:data/Screens/responsive.dart';
import 'package:data/Screens/dashboard/components/escolaridad_fields.dart';
import 'package:flutter/material.dart';
import 'package:data/Screens/dashboard/components/progress_chart.dart';

import '../constants.dart';
import '../dashboard/components/header.dart';
import '../dashboard/components/recent_files.dart';
import '../dashboard/components/storage_details.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            Header(),
            SizedBox(height: defaultPadding),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      CircleProgressChart(),
                      SizedBox(height: defaultPadding),
                      Escolaridad(),
                      SizedBox(height: defaultPadding),
                      StarageDetails(),
                      if (Responsive.isMobile(context))
                        SizedBox(height: defaultPadding),
                      if (Responsive.isMobile(context)) RecentFiles(),
                    ],
                  ),
                ),
                if (!Responsive.isMobile(context))
                  SizedBox(width: defaultPadding),
                // On Mobile means if the screen is less than 850 we dont want to show it
                if (!Responsive.isMobile(context))
                  Expanded(
                    flex: 2,
                    child: StarageDetails(),
                  ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
