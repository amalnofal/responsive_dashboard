import 'package:material_ui/material_ui.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/models/user_info_model.dart';
import 'package:responsive_dashboard/utils/app_icons.dart';
import 'package:responsive_dashboard/widgets/drawer_items_listview.dart';
import 'package:responsive_dashboard/widgets/inactive_drawer_item.dart';
import 'package:responsive_dashboard/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              userInfo: UserInfoModel(
                image: Assets.iconsAvatar3,
                title: "Amal Nofal",
                subtitle: "amal@gmail.com",
              ),
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 8)),
          DrawerItemsListview(),

          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const SizedBox(height: 20),
                InActiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                    icon: Assets.iconsSettings,
                    title: "Settings",
                  ),
                ),
                InActiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                    icon: Assets.iconsLogout,
                    title: "Logout",
                  ),
                ),
                SizedBox(height: 48),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
