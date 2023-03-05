import 'package:flutter/material.dart';
import 'package:proyectly/User/ui/screens/login.dart';

import '../../../widgets/bg_gradient.dart';

class SplashScreen extends StatefulWidget {

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState  extends State<SplashScreen> {



  //redigir a la pantalla de login
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _performAction();
  }

   _performAction() async {
    await Future.delayed(Duration(seconds: 5)).then((value) => {
      Navigator.push(context,  MaterialPageRoute(builder: (context) => LoginScreen())),
    });
    // Aquí puedes escribir la función que deseas ejecutar después de 5 segundos.
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
          children: [
            const BgGradient(),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Proyectly",
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Gilroy',
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  const CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                  ),
                ],
              ),
            ),
          ],
      )
    );

  }

}  