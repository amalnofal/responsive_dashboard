import 'package:flutter/widgets.dart';
import 'package:responsive_dashboard/widgets/all_expenses.dart';
import 'package:responsive_dashboard/widgets/custom_drawer.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(
          child: Column(children: [Expanded(flex: 2, child: AllExpenses())]),
        ),
      ],
    );
  }
}
