import 'package:material_ui/material_ui.dart';
import 'package:responsive_dashboard/models/transaction_model.dart';
import 'package:responsive_dashboard/utils/app_style.dart';

class TransactionItem extends StatelessWidget {
  const new({super.key, required this.transactionModel});

  final TransactionModel transactionModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xffFAFAFA),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        title: Text(
          transactionModel.title,
          style: AppStyles.styleSemiBold16(context),
        ),
        subtitle: Text(
          transactionModel.date,
          style: AppStyles.styleRegular16(context)
              .copyWith(color: Color(0xffAAAAAA)),
        ),
        trailing: Text(
          '\$${transactionModel.amount}',
          style: AppStyles.styleSemiBold20(context).copyWith(
            color: transactionModel.isWithdrawal
                ? Color(0xffF3735E)
                : Color(0xff7DD97B),
          ),
        ),
      ),
    );
  }
}
