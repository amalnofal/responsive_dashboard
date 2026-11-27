import 'package:flutter/widgets.dart';
import 'package:responsive_dashboard/models/transaction_model.dart';
import 'package:responsive_dashboard/widgets/transaction_item.dart';

class TransactionListView extends StatelessWidget {
  const new({super.key});

  static final List<TransactionModel> items = [
    TransactionModel(
      title: 'Cash Withdrawal',
      date: '13 Apr, 2022',
      amount: 20.129,
      isWithdrawal: true,
    ),
    TransactionModel(
      title: 'Landing Page project',
      date: '13 Apr, 2022 at 3:30 PM',
      amount: 2000,
      isWithdrawal: false,
    ),
    TransactionModel(
      title: 'Juni Mobile App project',
      date: '13 Apr, 2022 at 3:30 PM',
      amount: 20.129,
      isWithdrawal: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: items.length,
      itemBuilder: ((context, index) => Padding(
        padding: const EdgeInsets.only(top: 12),
        child: TransactionItem(transactionModel: items[index]),
      )),
    );
  }
}
