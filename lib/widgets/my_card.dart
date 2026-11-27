import 'package:material_ui/material_ui.dart';
import 'package:responsive_dashboard/utils/app_icons.dart';
import 'package:responsive_dashboard/utils/app_style.dart';
import 'package:svg_flutter/svg.dart';

class MyCard extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        padding: EdgeInsets.all(24),
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(Assets.iconsCardBackground)),
          color: Color(0xff4EB7F2),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                "Name card",
                style: AppStyles.styleRegular16(context)
                    .copyWith(color: Colors.white),
              ),
              subtitle: Text(
                "Syah Bandi",
                style: AppStyles.styleMedium20(context),
              ),
              trailing: SvgPicture.asset(Assets.iconsGallery),
            ),
            Spacer(),
            Text(
              "0918 8124 0042 8129",
              style: AppStyles.styleSemiBold24(context)
                  .copyWith(color: Colors.white),
            ),
            Text(
              "12/20 - 124",
              style: AppStyles.styleRegular16(context)
                  .copyWith(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
