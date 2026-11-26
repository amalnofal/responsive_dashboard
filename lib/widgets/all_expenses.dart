import 'package:material_ui/material_ui.dart';
import 'package:responsive_dashboard/widgets/all_expenses_header.dart';
import 'package:responsive_dashboard/widgets/all_expenses_row.dart';
import 'package:responsive_dashboard/widgets/custom_container.dart';

class AllExpenses extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
      child: Column(
        children: [AllExpensesHeader(), SizedBox(height: 16), AllExpensesRow()],
      ),
    );
  }
}
