import 'package:flutter/widgets.dart';
import 'package:responsive_dashboard/models/all_expenses_item_model.dart';
import 'package:responsive_dashboard/utils/app_icons.dart';
import 'package:responsive_dashboard/widgets/all_expenses_item.dart';

class AllExpensesRow extends StatefulWidget {
  const new({super.key});

  @override
  State<AllExpensesRow> createState() => _AllExpensesRowState();
}

class _AllExpensesRowState extends State<AllExpensesRow> {
  static final List<AllExpensesItemModel> items = [
    AllExpensesItemModel(
      icon: Assets.iconsIncome,
      title: "Income",
      date: "April 2022",
      balance: 20.129,
    ),
    AllExpensesItemModel(
      icon: Assets.iconsBalance,
      title: "Balance",
      date: "April 2022",
      balance: 20.129,
    ),
    AllExpensesItemModel(
      icon: Assets.iconsExpenses,
      title: "Expenses",
      date: "April 2022",
      balance: 20.129,
    ),
  ];

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 12,
      children: items.asMap().entries.map((e) {
        final index = e.key;
        final item = e.value;

        return Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: AllExpensesItem(
              isSelected: selectedIndex == index,
              itemModel: item,
            ),
          ),
        );
      }).toList(),
    );
  }
}
