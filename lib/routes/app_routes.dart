import 'package:fl_components/models/menu_option.dart';
import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static final MenuOptions = <MenuOption>[
    MenuOption(
        route: 'home',
        icon: Icons.holiday_village,
        name: 'Home Screen',
        screen: const HomeScreen()),
    MenuOption(
        route: 'listview1',
        icon: Icons.accessibility,
        name: 'list view 1',
        screen: const Listview1Screen()),
    MenuOption(
        route: 'listview2',
        icon: Icons.add_circle,
        name: 'List view 2',
        screen: const Listview2Screen()),
    MenuOption(
        route: 'alert',
        icon: Icons.alarm,
        name: 'alert',
        screen: const AlertScreen()),
    MenuOption(
        route: 'card',
        icon: Icons.card_giftcard,
        name: 'Card',
        screen: const CardScreen()),
    MenuOption(
      route: 'avatar', 
      icon: Icons.person, 
      name: 'Avatar', 
      screen: const AvatarScreen()
      ),
      MenuOption(
        route: 'animated', 
        icon: Icons.image, 
        name: 'Animated', 
        screen: const AnimatedScreen()
        )
  ];
  static const initialRoute = 'home';
  static Map<String, Widget Function(BuildContext)> getAppRoutes(){
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (final option in MenuOptions) {
      appRoutes.addAll({option.route : (BuildContext context) => option.screen});
    }
    return appRoutes;
  }
  static Route<dynamic> onGenerateRoute(RouteSettings) {
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}
