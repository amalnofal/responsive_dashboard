import 'package:flutter/widgets.dart';
import 'package:responsive_dashboard/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/widgets/second_section.dart';
import 'package:responsive_dashboard/widgets/third_section.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.only(top: 40),
            child: SecondSection(),
          ),
        ),
        SizedBox(width: 24),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top: 40, right: 32),
            child: ThirdSection(),
          ),
        ),
      ],
    );
  }
}
