import 'package:material_ui/material_ui.dart';
import 'package:responsive_dashboard/utils/app_style.dart';
import 'package:svg_flutter/svg_flutter.dart';

class UserInfoListTile extends StatelessWidget {
  const new({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });
  final String image, title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xffFAFAFA),
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: ListTile(
        leading: SvgPicture.asset(image),
        title: Text(title, style: AppStyles.styleSemiBold16(context)),
        subtitle: Text(subtitle, style: AppStyles.styleRegular12(context)),
      ),
    );
  }
}
