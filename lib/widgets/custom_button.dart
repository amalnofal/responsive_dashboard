import 'package:material_ui/material_ui.dart';
import 'package:responsive_dashboard/utils/app_style.dart';

class CustomButton extends StatelessWidget {
  const new({super.key, required this.text, this.textColor, this.bgColor});
  final String text;
  final Color? textColor, bgColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: bgColor ?? Color(0xff4EB7F2),
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Text(
          text,
          style: AppStyles.styleSemiBold18(context).copyWith(color: textColor),
        ),
      ),
    );
  }
}
