import 'package:material_ui/material_ui.dart';
import 'package:responsive_dashboard/models/item_details_model.dart';
import 'package:responsive_dashboard/utils/app_style.dart';

class ItemDetails extends StatelessWidget {
  const new({super.key, required this.itemDetails});

  final ItemDetailsModel itemDetails;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          color: itemDetails.color,
          shape: OvalBorder(),
        ),
      ),
      title: Text(itemDetails.title, style: AppStyles.styleRegular16(context)),
      trailing: Text(
        itemDetails.value,
        style: AppStyles.styleMedium16(context),
      ),
    );
  }
}
