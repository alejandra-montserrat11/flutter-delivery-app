
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_delivery_app/src/colors/colors.dart';
import 'package:flutter_delivery_app/src/widgets/back_button.dart';

class ForgotPasswordPage extends StatelessWidget{

  Widget build(BuildContext context) {
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
      body: Center(
        child: Container(
          padding: EdgeInsets.all(30.0),
        child: Column(
          children: [
            Text("Forgot password",
                style: TextStyle(color: Theme.of(context).primaryColor,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold)),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              child: Text("Please enter your email adress. You will receive a link to creta a new password via email.",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w400)),
            ),

            _emailInput(),
            _buttonLogin(context),
          ],
        ),
      ),
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
            hintText: 'Your email',
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
          onPressed: () => showAlerta(context),
          style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
              backgroundColor: MaterialStateProperty.all(Theme.of(context).hintColor)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  margin: EdgeInsets.only(left: 10.0),
                  child: Text('Send',
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

  void showAlerta(BuildContext context){
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context){
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0))
            ),
            content: Container(
              //width: 400,
              height: 400,
              child: Column(
                children: [
                  Image(
                      image: AssetImage('assets/images/lock.png'),
                    width: 150,
                    height: 150,
                  ),
                  Container(
                    margin: EdgeInsets.all(15),
                    child: Text("Your password has been reset",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(15),
                    child: Text("You'll receive an email to a code to setupt your new password",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 15.0),
                    ),
                  ),
                  
                  _doneButton(context)
                ],
              ),
            ),
            );
  }
    );
}

Widget _doneButton(BuildContext context){
  return Container(
    width: 350,
    height: 45,
    margin: EdgeInsets.only(top: 30.0),

    child: ElevatedButton(
        onPressed: () => Navigator.pushNamed(context, 'login'),
        style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
            backgroundColor: MaterialStateProperty.all(Theme.of(context).hintColor)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                margin: EdgeInsets.only(left: 10.0),
                child: Text('Done',
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