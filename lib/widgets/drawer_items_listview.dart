import 'package:flutter/widgets.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/utils/app_icons.dart';
import 'package:responsive_dashboard/widgets/drawer_item.dart';

class DrawerItemsListview extends StatefulWidget {
  const new({super.key});

  @override
  State<DrawerItemsListview> createState() => _DrawerItemsListviewState();
}

class _DrawerItemsListviewState extends State<DrawerItemsListview> {
  int activeIndex = 0;

  final List<DrawerItemModel> items = [
    DrawerItemModel(icon: Assets.iconsDashboard, title: 'Dashboard'),
    DrawerItemModel(icon: Assets.iconsMyTransctions, title: 'My Transaction'),
    DrawerItemModel(icon: Assets.iconsStatistics, title: 'Statistics'),
    DrawerItemModel(icon: Assets.iconsWalletAccount, title: 'Wallet Account'),
    DrawerItemModel(icon: Assets.iconsMyInvestments, title: 'My Investments'),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: items.length,
      itemBuilder: (context, index) => GestureDetector(
        onTap: () {
          if (activeIndex != index) {
            setState(() {
              activeIndex = index;
            });
          }
        },
        child: Padding(
          padding: const EdgeInsets.only(top: 16),
          child: DrawerItem(
            drawerItemModel: items[index],
            isActive: activeIndex == index,
          ),
        ),
      ),
    );
  }
}
