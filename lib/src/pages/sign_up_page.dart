import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../colors/colors.dart';
import '../widgets/back_button.dart';

class SignUpPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

     SystemChrome.setSystemUIOverlayStyle(
      //Cambio de color de la barra de hora y notificaciones en dispositivo
        SystemUiOverlayStyle.dark.copyWith(
          //configuracion de color de hora y notificaciones
            statusBarColor: Colors.white
        )
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: Builder(
            builder: (BuildContext context){
              return backButton(context, Colors.black);
            }
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            padding: EdgeInsets.all(30.0),
            child: Column(
              children: [
                Text("Create an account",
                    style: TextStyle(color: Theme.of(context).primaryColor,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold),
                ),

                _textInput(context, 1),
                _textInput(context, 2),
                _textInput(context, 3),
                _textInput(context, 4),
                _textInput(context, 5),

                _buttonSignUp(context),

                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                  margin: EdgeInsets.only(top: 30.0),
                  child: Text("By clicking Sign Up, you agree to the following",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black,
                          fontSize: 15.0,
                          fontWeight: FontWeight.w400)),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.pushNamed(context, 'signUp');
                        },
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          child: Text("Terms and Conditions",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0),
                          ),
                        ),
                      ),

                      Text("wihout reservation",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 15.0),
                      ),

                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  //Widgets
  Widget _textInput(BuildContext context, int tipo){
    return Container(
      margin: EdgeInsets.only(top: 20.0),
      padding: EdgeInsets.only(left: 20.0),

      decoration: BoxDecoration(
        color: grisClaro,
        borderRadius: BorderRadius.circular(30.0),
      ),

      child: switch (tipo) {
        1 => TextField(
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            hintText: 'Username',
            border: OutlineInputBorder(borderSide: BorderSide.none),
          ),
        ),
      2 => TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          hintText: 'Email',
          border: OutlineInputBorder(borderSide: BorderSide.none),
        ),
      ),
        3 => TextField(
          keyboardType: TextInputType.phone,
          decoration: InputDecoration(
            hintText: 'Phone',
            border: OutlineInputBorder(borderSide: BorderSide.none),
          ),
        ),
        4 => TextField(
          keyboardType: TextInputType.datetime,
          decoration: InputDecoration(
            hintText: 'Date of birth',
            border: OutlineInputBorder(borderSide: BorderSide.none),
          ),
        ),
        5 => TextField(
          keyboardType: TextInputType.visiblePassword,
          obscureText: true,
          decoration: InputDecoration(
            hintText: 'Password',
            border: OutlineInputBorder(borderSide: BorderSide.none),
          ),
        ),
         // default
        // TODO: Handle this case.
        int() => throw UnimplementedError(),
      },

    );
  }

  Widget _buttonSignUp(BuildContext context){
    return Container(
      width: 350,
      height: 45,
      margin: EdgeInsets.only(top: 30.0),

      child: ElevatedButton(
          onPressed: () => Navigator.pushNamed(context, 'login'),
          //onPressed: () => showAlerta(context),
          style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
              backgroundColor: MaterialStateProperty.all(Theme.of(context).hintColor)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  margin: EdgeInsets.only(left: 10.0),
                  child: Text('Sign up',
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
