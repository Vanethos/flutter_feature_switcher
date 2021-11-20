import 'package:feature_switcher/notifiers/features_notifier.dart';
import 'package:feature_switcher/ui/app.dart';
import 'package:feature_switcher/ui/widgets/feature_builder.dart';
import 'package:flutter/material.dart';

enum PageEnum {
  home,
  basic,
  premium,
  diamond,
}

class BottomBar extends StatelessWidget {
  final PageEnum page;
  const BottomBar({required this.page, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FeatureBuilder(builder: (context, features) {
      return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: page.index,
        onTap: (index) {
          switch (index) {
            case 0:
              Navigator.of(context).pushNamed(routeHome);
              break;
            case 1:
              Navigator.of(context).pushNamed(routeBasic);
              break;
            case 2:
              Navigator.of(context).pushNamed(routePremium);
              break;
            case 3:
              Navigator.of(context).pushNamed(routeDiamond);
              break;
          }
        },
        items: [
          const BottomNavigationBarItem(
              icon: Icon(Icons.home), label: "Welcome"),
          const BottomNavigationBarItem(
              icon: Icon(Icons.person), label: "Basic"),
          if (features.contains(FeatureEnum.premium))
            const BottomNavigationBarItem(
                icon: Icon(Icons.attach_money_outlined), label: "Premium"),
          if (features.contains(FeatureEnum.diamond))
            const BottomNavigationBarItem(
                icon: Icon(Icons.ac_unit), label: "Diamond"),
        ],
      );
    });
  }
}
