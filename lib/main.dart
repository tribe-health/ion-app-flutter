import 'package:flutter/material.dart';
import 'package:ion/helper/ion_helper.dart';
import 'package:ion/page/settings_page.dart';
import 'package:ion/page/login_page.dart';
import 'package:ion/page/meeting_page.dart';
import 'package:ion/utils/utils.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final IonHelper _helper = IonHelper();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: mDefaultTheme,
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(_helper),
        '/meeting': (context) => MeetingPage(_helper),
        '/settings': (context) => SettingsPage(),
      },
    );
  }
}

final ThemeData mDefaultTheme = ThemeData(
  primaryColor: string2Color('#0a0a0a'),
);
