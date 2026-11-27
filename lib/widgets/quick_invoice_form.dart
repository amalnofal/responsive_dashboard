import 'package:material_ui/material_ui.dart';
import 'package:responsive_dashboard/utils/app_style.dart';
import 'package:responsive_dashboard/widgets/custom_button.dart';
import 'package:responsive_dashboard/widgets/custom_dropdown.dart';
import 'package:responsive_dashboard/widgets/title_text_field.dart';

class QuickInvoiceForm extends StatefulWidget {
  const new({super.key});

  @override
  State<QuickInvoiceForm> createState() => _QuickInvoiceFormState();
}

class _QuickInvoiceFormState extends State<QuickInvoiceForm> {
  String currency = 'USD';

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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Item Mount", style: AppStyles.styleMedium16(context)),
                  SizedBox(height: 12),
                  CustomDropdown(
                    items: const ['USD', 'EGP', 'EUR'],
                    value: currency,
                    fillColor: const Color(0xffFAFAFA),
                    onChanged: (v) => setState(() => currency = v),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 24),
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
