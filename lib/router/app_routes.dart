import 'package:flutter/material.dart';
import 'package:flutter_components/models/models.dart';
import 'package:flutter_components/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    MenuOption(
        route: 'listvie1',
        icon: Icons.list,
        name: 'List view screen',
        screen: const ListViewScreen()),
    MenuOption(
        route: 'listvie2',
        icon: Icons.list_outlined,
        name: 'List view 2',
        screen: const ListView2Screen()),
    MenuOption(
        route: 'card',
        icon: Icons.credit_card_rounded,
        name: 'card',
        screen: const CardScreen()),
    MenuOption(
        route: 'alert',
        icon: Icons.add_alert,
        name: 'Alert',
        screen: const AlertScreen()),
    MenuOption(
        route: 'avatar',
        icon: Icons.supervised_user_circle,
        name: 'Circle Avatar',
        screen: const AvatarScreen()),
    MenuOption(
        route: 'animated',
        icon: Icons.play_circle,
        name: 'Animated container',
        screen: const AnimatedScreen()),
    MenuOption(
        route: 'input',
        icon: Icons.input_rounded,
        name: 'Input Screen',
        screen: const InputsScreen()),
    MenuOption(
        route: 'slider and checks',
        icon: Icons.play_lesson_sharp,
        name: 'Slider',
        screen: const SliderScreen()),
    MenuOption(
        route: 'ListViewBuilder',
        icon: Icons.add_photo_alternate_rounded,
        name: 'Infinite Scroll',
        screen: const ListViewBuilderScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  // Metodo de navegacion 1//
  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (BuildContext context) => const HomeScreen(),
  //   'listvie1': (BuildContext context) => const ListViewScreen(),
  //   'listvie2': (BuildContext context) => const ListView2Screen(),
  //   'alert': (BuildContext context) => const AlertScreen(),
  //   'card': (BuildContext context) => const CardScreen(),
  // };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
