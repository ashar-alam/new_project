import 'package:flutter/material.dart';
import 'package:new_project/utils/route_manager.dart';
import 'package:new_project/utils/routes.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(debugShowCheckedModeBanner: false,
    onGenerateRoute: RoutesManager.generateRoute,
    initialRoute: Routes.homeScreen,
    );
  }
}