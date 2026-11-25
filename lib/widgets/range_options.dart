
import 'package:material_ui/material_ui.dart';
import 'package:responsive_dashboard/utils/app_style.dart';

class RangeOptions extends StatelessWidget {
  const new({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: BoxBorder.all(width: 1, color: Color(0xffF1F1F1)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          children: [
            Text("Monthly", style: AppStyles.styleMedium16(context)),
            SizedBox(width: 8),
            Icon(Icons.keyboard_arrow_down, color: Color(0xff064061)),
          ],
        ),
      ),
    );
  }
}
