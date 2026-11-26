import 'package:flutter/widgets.dart';
import 'package:responsive_dashboard/models/user_info_model.dart';
import 'package:responsive_dashboard/utils/app_icons.dart';
import 'package:responsive_dashboard/widgets/user_info_list_tile.dart';

class LatestTransactionListview extends StatelessWidget {
  const new({super.key});
  static const List items = [
    UserInfoModel(
      image: Assets.iconsAvatar1,
      title: 'Madrani Andi',
      subtitle: 'Madraniadi20@gmail',
    ),
    UserInfoModel(
      image: Assets.iconsAvatar2,
      title: 'Josua Nunito',
      subtitle: 'Josh Nunito@gmail.com',
    ),
    UserInfoModel(
      image: Assets.iconsAvatar1,
      title: 'Madrani Andi',
      subtitle: 'Madraniadi20@gmail',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 75,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: ((context, index) =>
            IntrinsicWidth(child: UserInfoListTile(userInfo: items[index]))),
      ),
    );
  }
}
