import 'package:material_ui/material_ui.dart';
import 'package:responsive_dashboard/models/user_info_model.dart';
import 'package:responsive_dashboard/utils/app_style.dart';
import 'package:svg_flutter/svg_flutter.dart';

class UserInfoListTile extends StatelessWidget {
  const new({super.key, required this.userInfo});
  final UserInfoModel userInfo;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xffFAFAFA),
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Center(
        child: ListTile(
          leading: SvgPicture.asset(userInfo.image),
          title: Text(
            userInfo.title,
            style: AppStyles.styleSemiBold16(context),
          ),
          subtitle: Text(
            userInfo.subtitle,
            style: AppStyles.styleRegular12(context),
          ),
        ),
      ),
    );
  }
}
