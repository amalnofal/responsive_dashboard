import 'package:material_ui/material_ui.dart';
import 'package:responsive_dashboard/widgets/custom_button.dart';
import 'package:responsive_dashboard/widgets/custom_container.dart';
import 'package:responsive_dashboard/widgets/income_chart.dart';
import 'package:responsive_dashboard/widgets/income_details.dart';
import 'package:responsive_dashboard/widgets/income_header.dart';

class IncomeSection extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Column(
        children: [
          IncomeHeader(),
          SizedBox(height: 16),
          Row(
            children: [
              Expanded(child: IncomeChart()),
              SizedBox(width: 40),
              Expanded(child: IncomeDetails()),
            ],
          ),
          Divider(height: 48, color: Color(0xffF1F1F1)),
          CustomButton(
            text: "See detail",
            bgColor: Colors.transparent,
            textColor: Color(0xff4EB7F2),
          ),
        ],
      ),
    );
  }
}
