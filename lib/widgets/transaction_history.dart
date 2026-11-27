import 'package:flutter/widgets.dart';
import 'package:responsive_dashboard/utils/app_style.dart';
import 'package:responsive_dashboard/widgets/transaction_history_header.dart';
import 'package:responsive_dashboard/widgets/transaction_list_view.dart';

class TransactionHistory extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TransactionHistoryHeader(),
          SizedBox(height: 20),
          Text(
            "13 April 2022",
            style: AppStyles.styleMedium16(context)
                .copyWith(color: Color(0xffAAAAAA)),
          ),
          TransactionListView()
        ],
      ),
    );
  }
}
