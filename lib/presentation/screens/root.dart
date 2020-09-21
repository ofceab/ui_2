import 'package:flutter/material.dart';
import 'package:help_other/utils/appTheme.dart';

import 'profile/profile.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        accentColor: AppTheme.accentColor,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/':(context)=>Profile()
      },
    );
  }
}