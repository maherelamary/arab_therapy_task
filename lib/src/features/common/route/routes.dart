import 'package:arab_therapy_task/src/features/common/view/page/unknown_route_page.dart';
import 'package:arab_therapy_task/src/features/presentation/view/home/home_page.dart';
import 'package:arab_therapy_task/src/features/presentation/view/named_items/named_items_page.dart';
import 'package:flutter/material.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case HomePage.routeName:
        return MaterialPageRoute(builder: (_) => const HomePage());
      case NamedItemsPage.routeName:
        return MaterialPageRoute(builder: (_) => const NamedItemsPage());
      default:
        return MaterialPageRoute(builder: (_) => const UnknownRoutePage());
    }
  }
}
