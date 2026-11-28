import 'package:flutter/widgets.dart';
import 'package:responsive_dashboard/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/widgets/income_section.dart';
import 'package:responsive_dashboard/widgets/second_section.dart';
import 'package:responsive_dashboard/widgets/third_section.dart';

class DashboardTabletLayout extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawer()),
        Expanded(
          flex: 3,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(32),
              child: Column(
                children: [
                  SecondSection(),
                  SizedBox(height: 24),
                  ThirdSection(),
                  SizedBox(height: 24),
                  IncomeSection(),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
