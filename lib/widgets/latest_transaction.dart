import 'package:flutter/widgets.dart';
import 'package:responsive_dashboard/utils/app_style.dart';
import 'package:responsive_dashboard/widgets/latest_transaction_listview.dart';

class LatestTransaction extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Last Transaction", style: AppStyles.styleMedium16(context)),
        SizedBox(height: 12),
        LatestTransactionListview(),
      ],
    );
  }
}
