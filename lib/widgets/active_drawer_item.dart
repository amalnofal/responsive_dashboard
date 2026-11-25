import 'package:material_ui/material_ui.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/utils/app_style.dart';
import 'package:svg_flutter/svg.dart';

class ActiveDrawerItem extends StatelessWidget {
  const new({super.key, required this.drawerItemModel});
  final DrawerItemModel drawerItemModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItemModel.icon),
      title: Text(drawerItemModel.title, style: AppStyles.styleBold16(context)),
      trailing: Container(color: Color(0xff4EB7F2), width: 3.5),
    );
  }
}
