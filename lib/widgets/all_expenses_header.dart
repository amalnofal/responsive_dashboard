import 'package:material_ui/material_ui.dart';
import 'package:responsive_dashboard/utils/app_style.dart';
import 'package:responsive_dashboard/widgets/range_options.dart';

class AllExpensesHeader extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("All Expenses", style: AppStyles.styleSemiBold20(context)),
        Spacer(),
        RangeOptions(),
      ],
    );
  }
}
