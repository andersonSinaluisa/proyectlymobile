import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:proyectly/User/bloc/bloc_user.dart';
import 'package:proyectly/User/ui/screens/register.dart';
import 'package:proyectly/widgets/bg_gradient.dart';
import 'package:proyectly/widgets/colors.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../Core/ui/screens/home.dart';
import '../../../widgets/input_field.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginScreen();
  }
}

class _LoginScreen extends State<LoginScreen> {
  late UserBloc userBloc;
  String email = "";
  String password = "";
  @override
  Widget build(BuildContext context) {
    userBloc = BlocProvider.of(context);

    return StreamBuilder(
        stream: userBloc.authSubscription,
        builder: (context, snapshot) {
          if (snapshot.data?.event ==AuthChangeEvent.signedOut || !snapshot.hasData) {
            return Login();
          }
          if (snapshot.data?.event ==AuthChangeEvent.signedIn) {
            return Home();
          }
          return Center(child: CircularProgressIndicator());
        }
    );
  }

  Widget Login() {
    return Scaffold(
      backgroundColor: new Color(0xFFF6F6F6),
      body: Container(
        margin: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
        child: ListView(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top: 85.0),
              child: const Text(
                "Take your projects to the next level: log in now. ",
                style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: ColorsApp.color3,
                    fontFamily: 'Gilroy'),
                textAlign: TextAlign.left,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 35.0),
              child: InputField(
                hintText: "",
                labelText: "Email",
                obscureText: false,
                inputType: TextInputType.emailAddress,
                onChanged: (value) => email = value,
              
              )
              
              ),
            Container(
              margin: const EdgeInsets.only(top: 35.0),
              child: InputField(
                hintText: "",
                labelText: "Password",
                obscureText: true,
                inputType: TextInputType.text,
                onChanged: (value) => password = value,
              ),
            ),
            Container(
                margin: const EdgeInsets.only(top: 25.0),
                child: OutlinedButton(
                  onPressed: () {
                    print(email+password);
                    userBloc
                        .signIn(email, password)
                        .then((value) => print(value.user?.email));
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
                    "Sign In",
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.left,
                  ),
                )),
            Container(
                margin: const EdgeInsets.only(top: 25.0),
                child: InkWell(
                    onTap: (() => {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (builder) => RegisterScreen()))
                        }),
                    child: Text(
                      "or Signup",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'Gilroy',
                          fontWeight: FontWeight.bold),
                    ))),
            Container(
              margin: EdgeInsets.only(top: 25.0),
              alignment: Alignment.center,
              child: Row(
                children: [
                  Card(
                    margin: EdgeInsets.all(25),
                    elevation: 5,
                    child: InkWell(
                      splashColor: ColorsApp.color3,
                      onTap: () {
                        userBloc
                            .signUpWithGoogle()
                            .then((value) => print(value?.user?.email));
                      },
                      child: SizedBox(
                          width: 70,
                          height: 70,
                          child: Image.asset('assets/images/google.png')),
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.all(25),
                    elevation: 5,
                    child: InkWell(
                      splashColor: ColorsApp.color3,
                      onTap: null,
                      child: SizedBox(
                          width: 70,
                          height: 70,
                          child: Image.asset('assets/images/fb.png')),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 50.0),
              child: Column(
                children: <Widget>[
                  const Text(
                    "if you don’t an account you can ",
                    style: TextStyle(
                        fontSize: 15.0,
                        fontFamily: 'Gilroy',
                        color: Colors.black),
                    textAlign: TextAlign.left,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 20.0),
                    child: const Text(
                      "Register here!",
                      style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: ColorsApp.color3,
                          fontFamily: 'Gilroy'),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
