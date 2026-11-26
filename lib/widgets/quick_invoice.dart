import 'package:material_ui/material_ui.dart';
import 'package:responsive_dashboard/widgets/custom_container.dart';
import 'package:responsive_dashboard/widgets/latest_transaction.dart';
import 'package:responsive_dashboard/widgets/quick_invoice_header.dart';
import 'package:responsive_dashboard/widgets/quick_invoice_form.dart';

class QuickInvoice extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Column(
        children: [
          QuickInvoiceHeader(),
          SizedBox(height: 24),
          LatestTransaction(),
          Divider(height: 48, color: Color(0xffF1F1F1)),
          QuickInvoiceForm(),
        ],
      ),
    );
  }
}
