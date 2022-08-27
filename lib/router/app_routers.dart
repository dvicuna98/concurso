import 'package:flutter/material.dart';
import 'package:consurso/models/models.dart';
import 'package:consurso/screens/screens.dart';

class AppRoutes {

  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
      MenuOption(route: 'basicLogin', icon: Icons.stairs_outlined, name: 'Logica Basica', screen: const ReviewPage()),
    
    ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes(){
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home':(BuildContext context)=>const HomePage()});

    for (final option in menuOptions){
      appRoutes.addAll({option.route:(BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  static Map<String, Widget Function(BuildContext)> routes = {
    'home': (BuildContext context) => const HomePage()
  };

  static Route<dynamic> onGenerateRoute(RouteSettings settings){
    return MaterialPageRoute(
        builder: (context) => const HomePage()
    );
  }

}