import 'package:flutter/material.dart';

import 'invoice_Generator/home.dart';



class AppRoutes {

  static Map<String, Widget Function(BuildContext)> routes =
  {
    '/': (context) => HomeScreen(),
  };
}