import 'package:flutter/material.dart';
import 'package:repository_viewer/home/models/repository_list.dart';
import 'package:repository_viewer/home/view/home_screen.dart';
import 'package:repository_viewer/repository_detail/view/repository_detail_screen.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case HomeScreen.id:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const HomeScreen(),
      );
    case RepositoryDetailScreen.id:
      var data = routeSettings.arguments as Items;
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => RepositoryDetailScreen(repositoryItem: data),
      );
    default:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const Scaffold(
          body: Center(
            child: Text('Screen does not exist..'),
          ),
        ),
      );
  }
}
