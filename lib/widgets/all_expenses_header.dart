import 'package:material_ui/material_ui.dart';
import 'package:responsive_dashboard/utils/app_style.dart';
import 'package:responsive_dashboard/widgets/custom_dropdown.dart';

class AllExpensesHeader extends StatefulWidget {
  const new({super.key});

  @override
  State<AllExpensesHeader> createState() => _AllExpensesHeaderState();
}

class _AllExpensesHeaderState extends State<AllExpensesHeader> {
  String period = 'Monthly';

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("All Expenses", style: AppStyles.styleSemiBold20(context)),
        IntrinsicWidth(
          child: CustomDropdown(
            items: const ['Monthly', 'Weekly', 'Yearly'],
            value: period,
            onChanged: (v) => setState(() => period = v),
          ),
        ),
      ],
    );
  }
}
