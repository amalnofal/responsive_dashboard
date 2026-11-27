class TransactionModel {
  final String title, date;
  final num amount;
  final bool isWithdrawal;

  new({
    required this.title,
    required this.date,
    required this.amount,
    required this.isWithdrawal,
  });
}
