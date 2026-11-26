import 'package:material_ui/material_ui.dart';
import 'package:responsive_dashboard/widgets/custom_button.dart';
import 'package:responsive_dashboard/widgets/title_text_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                title: "Customer Name",
                hint: "Type customer name",
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: TitleTextField(
                title: "Customer Email",
                hint: "Type customer email",
              ),
            ),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(
              child: TitleTextField(title: "Item name", hint: "Type item name"),
            ),
            SizedBox(width: 16),
            Expanded(
              child: TitleTextField(title: "Item mount", hint: "USD"),
            ),
          ],
        ),

        Row(
          children: [
            Expanded(
              child: CustomButton(
                text: 'Add more details',
                bgColor: Colors.transparent,
                textColor: Color(0xff4EB7F2),
              ),
            ),
            SizedBox(width: 24),
            Expanded(child: CustomButton(text: 'Send Money')),
          ],
        ),
      ],
    );
  }
}
