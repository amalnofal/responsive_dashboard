import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dashboard/widgets/my_card.dart';

class MyCardsPageView extends StatelessWidget {
  const new({super.key, required this.pageController});

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
      controller: pageController,
      scrollDirection: Axis.horizontal,
      children: List.generate(
        3,
        (index) => const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: MyCard(),
        ),
      ),
    );
  }
}
