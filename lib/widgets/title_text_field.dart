import 'package:flutter/widgets.dart';
import 'package:responsive_dashboard/utils/app_style.dart';
import 'package:responsive_dashboard/widgets/custom_text_field.dart';

class TitleTextField extends StatelessWidget {
  const new({super.key, required this.title, required this.hint});
  final String title, hint;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: AppStyles.styleMedium16(context)),
        SizedBox(height: 12),
        CustomTextField(hint: hint),
      ],
    );
  }
}
