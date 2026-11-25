import 'package:material_ui/material_ui.dart';
import 'package:svg_flutter/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const new({
    super.key,
    required this.icon,
    this.iconColor,
    this.iconBackground,
  });
  final String icon;
  final Color? iconColor, iconBackground;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: iconBackground ?? Color(0xffFAFAFA),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset(
              icon,
              colorFilter: ColorFilter.mode(
                iconColor ?? Color(0xff4EB7F2),
                BlendMode.srcIn,
              ),
            ),
          ),
        ),
        Spacer(),
        Icon(Icons.arrow_forward_ios, color: iconColor ?? Color(0xff064061)),
      ],
    );
  }
}
