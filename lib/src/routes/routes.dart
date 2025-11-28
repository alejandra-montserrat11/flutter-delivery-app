
import 'package:flutter/cupertino.dart';
import 'package:flutter_delivery_app/src/features/presentation/forgot_password_page/View/forgot_password_page.dart';
import 'package:flutter_delivery_app/src/features/presentation/sign_up_page/View/sign_up_page.dart';
import 'package:flutter_delivery_app/src/features/presentation/tabs/tabs_page.dart';

//pages
import '../features/presentation/login_page/View/login_page.dart';
import '../features/presentation/welcome_page/view/welcome_page.dart';

final routes = <String, WidgetBuilder>{

  'welcome' : (BuildContext context) => WelcomePage(),
  'login' : (BuildContext context) => LoginPage(),
  'forgotPassword' : (BuildContext context) => ForgotPasswordPage(),
  'signUp' : (BuildContext context) => SignUpPage(),
  'tabs' : (BuildContext context) => TabsPage(),

};