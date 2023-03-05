
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:proyectly/User/bloc/bloc_user.dart';
import 'package:proyectly/widgets/colors.dart';

import '../../../widgets/blur.dart';
import 'login.dart';

class RegisterScreen extends StatefulWidget {
  static const String routeName = "/register";

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  late UserBloc userBloc;

  String email = "";
  String password = "";
  String confirmPassword = "";
  @override
  Widget build(BuildContext context) {

    userBloc = BlocProvider.of(context);
    
    return Scaffold(
      backgroundColor: new Color(0xFFF6F6F6),
      body: Container(
        margin: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
        
        child: ListView(children: <Widget>[
          
          Container(
            margin: const EdgeInsets.only(top: 85.0),
            child: const Text(
              "Join us and transform your projects into reality.",
              style: TextStyle(
                  fontSize: 25.0,
                  color: ColorsApp.color3,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Gilroy'),
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 35.0),
            child: TextField(
              onChanged: (value) => email = value,
              decoration: InputDecoration(
                hintText: "Enter Email",
                labelText: "Email",
                filled: true,
                fillColor: Colors.white,
                labelStyle: TextStyle(color: ColorsApp.color3),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: const BorderSide(color: ColorsApp.color3, width: 1.0),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: const BorderSide(color: Colors.white, width: 1.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: const BorderSide(color: Colors.white, width: 1.0),
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 35.0),
            child: TextField(
              onChanged: (value) => password = value,
              obscureText: true,
              decoration: InputDecoration(
                labelStyle: TextStyle(color: ColorsApp.color3),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: const BorderSide(color: ColorsApp.color3, width: 1.0),
                ),
                filled: true,
                fillColor: Colors.white,
                hintText: "",
                labelText: "Password",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: const BorderSide(color: Colors.white, width: 1.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: const BorderSide(color: Colors.white, width: 1.0),
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 35.0),
            child: TextField(
              obscureText: true,
              onChanged: (value) => confirmPassword = value,
              decoration: InputDecoration(
                labelStyle: TextStyle(color: ColorsApp.color3),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: const BorderSide(color: ColorsApp.color3, width: 1.0),
                ),
                filled: true,
                fillColor: Colors.white,
                hintText: "",
                labelText: "Password",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: const BorderSide(color: Colors.white, width: 1.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: const BorderSide(color: Colors.white, width: 1.0),
                ),
              ),
            ),
          ),
          Container(
              margin: const EdgeInsets.only(top: 25.0),
              child: OutlinedButton(
                onPressed: () {
                  print("email: $email" + " password: $password");
                  userBloc.signUp(email, password).then((value) => print(value));
                },
                style: OutlinedButton.styleFrom(
                  backgroundColor: ColorsApp.color3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  padding: const EdgeInsets.only(
                      top: 12.0, bottom: 12.0, left: 100.0, right: 100.0),
                ),
                child: const Text(
                  "Sign Up",
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.left,
                ),
              )),
            Container(
              margin: const EdgeInsets.only(top: 50.0),
              child: Column(
                children: <Widget>[
                  const Text(
                    "if you have account you can ",
                    style: TextStyle(
                        fontSize: 15.0,
                        fontFamily: 'Gilroy',
                        color: Colors.black),
                    textAlign: TextAlign.left,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 20.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                      },
                      child: Text(
                      "Log In here!",
                      style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: ColorsApp.color3,
                          fontFamily: 'Gilroy'),
                      textAlign: TextAlign.left,
                      
                      
                    ),
                    )
                  ),
                ],
              ),
            ),
        ]),
      ),
    );
  }
}
