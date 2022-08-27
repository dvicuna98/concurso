import 'package:flutter/material.dart';
import 'package:consurso/models/models.dart';
import 'package:consurso/screens/screens.dart';

class AppRoutes {

  static const initialRoute = 'login';

  static final menuOptions = <MenuOption>[

    ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes(){
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home':(BuildContext context)=>const HomePage()});
    appRoutes.addAll({'login':(BuildContext context)=>const LoginScreen()});
    appRoutes.addAll({'register':(BuildContext context)=>const RegisterScreen()});
    appRoutes.addAll({'review':(BuildContext context)=>const ReviewPage()});

    for (final option in menuOptions){
      appRoutes.addAll({option.route:(BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings){
    return MaterialPageRoute(
        builder: (context) => const HomePage()
    );
  }

}