import 'package:material_ui/material_ui.dart';
import 'package:responsive_dashboard/utils/app_style.dart';

class CustomTextField extends StatelessWidget {
  const new({super.key, required this.hint});
  final String hint;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: AppStyles.styleRegular16(context)
            .copyWith(color: Color(0xffAAAAAA)),
        filled: true,
        fillColor: Color(0xffFAFAFA),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(),
      ),
    );
  }
}

OutlineInputBorder buildBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(12),
    borderSide: const BorderSide(color: Color(0xffFAFAFA)),
  );
}
