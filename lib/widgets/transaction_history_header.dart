import 'package:flutter/widgets.dart';
import 'package:responsive_dashboard/utils/app_style.dart';

class TransactionHistoryHeader extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Transaction History", style: AppStyles.styleSemiBold20(context)),
        Text(
          "See All",
          style: AppStyles.styleMedium16(context)
              .copyWith(color: Color(0xff4EB7F2)),
        ),
      ],
    );
  }
}
