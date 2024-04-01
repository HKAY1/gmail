import 'package:flutter/material.dart';
import 'package:gmail/theme/theme.dart';

import 'view/appBar/home/homepage.dart';

final GlobalKey<NavigatorState> navigationKey = GlobalKey();
void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gmail Demo',
      navigatorKey: navigationKey,
      theme: AppTheme.appTheme,
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
