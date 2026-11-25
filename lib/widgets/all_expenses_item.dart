import 'package:material_ui/material_ui.dart';
import 'package:responsive_dashboard/models/all_expenses_item_model.dart';
import 'package:responsive_dashboard/utils/app_style.dart';
import 'package:responsive_dashboard/widgets/all_expenses_item_header.dart';

class AllExpensesItem extends StatelessWidget {
  const new({super.key, required this.itemModel, required this.isSelected});
  final AllExpensesItemModel itemModel;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: isSelected ? Color(0xff4EB7F2) : Color(0xfFFFFFFF),

        border: BoxBorder.all(
          width: 1,
          color: isSelected ? Color(0xff4EB7F2) : Color(0xffF1F1F1),
        ),
      ),
      duration: const Duration(milliseconds: 250),
      curve: Curves.easeInOut,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            icon: itemModel.icon,
            iconColor: isSelected ? Colors.white : null,
            iconBackground: isSelected
                ? Colors.white.withValues(alpha: 0.1)
                : null,
          ),

          SizedBox(height: 24),
          Text(
            itemModel.title,
            style: isSelected
                ? AppStyles.styleSemiBold16(context)
                      .copyWith(color: Colors.white)
                : AppStyles.styleSemiBold16(context),
          ),
          SizedBox(height: 8),
          Text(
            itemModel.date,
            style: isSelected
                ? AppStyles.styleRegular14(context)
                      .copyWith(color: Color(0xffFAFAFA))
                : AppStyles.styleRegular14(context),
          ),
          SizedBox(height: 16),
          Text(
            r"$" + itemModel.balance.toString(),
            style: isSelected
                ? AppStyles.styleSemiBold24(context)
                      .copyWith(color: Colors.white)
                : AppStyles.styleSemiBold24(context),
          ),
        ],
      ),
    );
  }
}
