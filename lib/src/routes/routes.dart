
import 'package:flutter/cupertino.dart';

//pages
import '../pages/login_page.dart';
import '../pages/welcome_page.dart';

final routes = <String, WidgetBuilder>{

  'welcome' : (BuildContext context) => WelcomePage(),
  'login' : (BuildContext context) => LoginPage(),

};