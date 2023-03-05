import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../widgets/colors.dart';

class ProfileBanner extends StatefulWidget {


  String username;
  String email;
  Function LogOut = () {};

  ProfileBanner({required this.username, required this.email, required this.LogOut});

  @override
  State<StatefulWidget> createState() {
    return _ProfileBanner();
  }
}

class _ProfileBanner extends State<ProfileBanner> {

  //get params from parent
  String get username => widget.username;
  String get email => widget.email;
  Function get LogOut => widget.LogOut;

  
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200,
        decoration: BoxDecoration(
          //gradient
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              ColorsApp.color4,
              ColorsApp.color3,
            ],
          ),
        ),
        alignment: Alignment.bottomCenter,
        //avatar
        child: Row(children: [
          Container(
              margin: EdgeInsets.only(left: 20.0, right: 35),
              child: const CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                    'https://www.w3schools.com/howto/img_avatar.png'),
              )),
          Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 60.0),
                alignment: Alignment.topCenter,
                child:  Text(
                  username,
                  style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Gilroy'),
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                child:  Text(
                  email,
                  style: TextStyle(
                      fontSize: 15.0,
                      fontFamily: 'Gilroy',
                      color: Colors.white),
                  textAlign: TextAlign.left,
                ),
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 45),
                    alignment: Alignment.topCenter,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(50),
                      onTap: () {},
                      child: Icon(
                        Icons.edit,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    //logout
                    margin: const EdgeInsets.only(left: 25, top: 45),
                    alignment: Alignment.topCenter,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(50),
                      onTap: () {
                        LogOut();
                      },
                      child: Icon(
                        Icons.logout,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ]));
  }
}
