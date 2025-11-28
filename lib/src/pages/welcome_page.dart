import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class WelcomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?q=80&w=1981&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
              )
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
              child: Container(
                color: Color.fromRGBO(0, 0, 0, 0.3),
              ),
            ),
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 50.0),
                child: Text('DELIVERED FAST FOOD TO YOUR DOOR',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 45.0,
                  fontWeight: FontWeight.bold,
                ),),
              ),

              Container(
                padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 30.0),
                child: Text('Set exact location to find the right restaurants near you.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17.0,
                    fontWeight: FontWeight.w400,
                  ),),
              ),

              Container(
                  width: 350,
                  height: 45,
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

              ),

              Container(
                width: 350,
                height: 45,
                margin: EdgeInsets.only(top: 30.0),

                child: ElevatedButton(
                    onPressed: () {},
                    style: Theme.of(context).elevatedButtonTheme.style,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FaIcon(
                          FontAwesomeIcons.facebook,
                          color: Colors.white,
                          size: 20,
                        ),
                        Container(

                            margin: EdgeInsets.only(left: 10.0),
                            child: Text('Connect with facebook',
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

              )
            ],
          )
        ],
      ),
    );
  }
}
