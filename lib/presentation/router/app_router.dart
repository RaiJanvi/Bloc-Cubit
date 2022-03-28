import 'package:flutter/material.dart';
import 'package:untitled/presentation/screens/home_screen.dart';
import 'package:untitled/presentation/screens/second_screen.dart';
import 'package:untitled/presentation/screens/third_screen.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings routeSettings){
    switch(routeSettings.name){
      case '/' :
        return MaterialPageRoute(builder: (_) => const HomeScreen(title: "First Screen", color: Colors.blueAccent));
        break;
      case '/second' :
        return MaterialPageRoute(builder: (_) => const SecondScreen(title: "Second Screen", color: Colors.redAccent));
        break;
      case '/third' :
        return MaterialPageRoute(builder: (_) => const ThirdScreen(title: "Third Screen", color: Colors.greenAccent));
        break;
      default:
        return null;
    }
  }
}