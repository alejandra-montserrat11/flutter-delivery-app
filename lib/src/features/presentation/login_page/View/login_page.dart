
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../colors/colors.dart';
import '../../widgets/back_button.dart';

class LoginPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(
      //Cambio de color de la barra de hora y notificaciones en dispositivo
      SystemUiOverlayStyle.light.copyWith(
        //configuracion de color de hora y notificaciones
        statusBarColor: Colors.white
      )
    );

    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image(
                width: double.infinity,
                height: 350,
                fit: BoxFit.cover,
                  image: NetworkImage('https://plus.unsplash.com/premium_photo-1675252369719-dd52bc69c3df?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D')
              ),

              Container(
                margin: EdgeInsets.only(top: 50.0),
                child: backButton(context, Colors.white),
              )
            ],
          ),

          Transform.translate(
         offset: Offset(0.0, -20.0),

         child:  Container(
           width: double.infinity,
            height: 500,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.0)
            ),

            child: Padding(
                padding: EdgeInsets.all(20.0),
              child: Center(
                child: Column(
                  children: [
                    Text("Welcome Back",
                    style: TextStyle(color: Theme.of(context).primaryColor,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold)),

                    Text("Login to your account",
                        style: TextStyle(color: gris,
                            fontSize: 15.0,
                            fontWeight: FontWeight.w500)),

                    _emailInput(),
                    _passwordInput(),
                    _buttonLogin(context),

                    Container(
                      margin: EdgeInsets.only(top: 20.0),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.pushNamed(context, 'forgotPassword');
                        },
                      child: Text("Forgot your password?",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 17.0),
                    ),
                    ),
                    ),

                    Container(
                      margin: EdgeInsets.only(top: 30.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have an account?",
                        style: TextStyle(
                            color: gris,
                            fontWeight: FontWeight.w500,
                            fontSize: 15.0),
                      ),

                        GestureDetector(
                          onTap: (){
                            Navigator.pushNamed(context, 'signUp');
                          },
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            child: Text("Sign up",
                              style: TextStyle(
                                  color: Theme.of(context).hintColor,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15.0),
                            ),
                          ),
                        )


                      ],
                    ),
                    ),

                  ]
                ),
              ),
            ),

          ),
          ),
        ],
      ),
      );
  }

  Widget _emailInput(){
    return Container(
      margin: EdgeInsets.only(top: 40.0),
      padding: EdgeInsets.only(left: 20.0),

      decoration: BoxDecoration(
        color: grisClaro,
        borderRadius: BorderRadius.circular(30.0),
      ),

      child: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          hintText: 'Email',
          border: OutlineInputBorder(
            borderSide: BorderSide.none
          )
      ),
      ),
    );
  }

  Widget _passwordInput(){
    return Container(
      margin: EdgeInsets.only(top: 10.0),
      padding: EdgeInsets.only(left: 20.0),

      decoration: BoxDecoration(
        color: grisClaro,
        borderRadius: BorderRadius.circular(30.0),
      ),

      child: TextField(
        obscureText: true,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            hintText: 'Password',
            border: OutlineInputBorder(
                borderSide: BorderSide.none
            )
        ),
      ),
    );
  }

  Widget _buttonLogin(BuildContext context){
    return Container(
      width: 350,
      height: 45,
      margin: EdgeInsets.only(top: 30.0),

      child: ElevatedButton(
          onPressed: () => Navigator.pushNamed(context, 'tabs'),
          style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
              backgroundColor: MaterialStateProperty.all(Theme.of(context).hintColor)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  margin: EdgeInsets.only(left: 10.0),
                  child: Text('Log in',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold
                      )
                  )
              )
            ],
          )
      ),

    );
  }
  
}