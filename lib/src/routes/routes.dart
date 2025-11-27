
import 'package:flutter/cupertino.dart';
import 'package:flutter_delivery_app/src/pages/forgot_password_page.dart';

//pages
import '../pages/login_page.dart';
import '../pages/welcome_page.dart';

final routes = <String, WidgetBuilder>{

  'welcome' : (BuildContext context) => WelcomePage(),
  'login' : (BuildContext context) => LoginPage(),
  'forgotPassword' : (BuildContext context) => ForgotPasswordPage(),

};