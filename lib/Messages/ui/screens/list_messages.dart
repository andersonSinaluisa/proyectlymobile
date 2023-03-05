import 'package:flutter/material.dart';
import 'package:proyectly/widgets/colors.dart';

class ListMessagesScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ListMessagesScreen();
  }
}

class _ListMessagesScreen extends State<ListMessagesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: Container(
            child: ListView(
            children: [

              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20, top: 20),
                    child: Text(
                      "Messages",
                      style: TextStyle(
                          color: ColorsApp.color3,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Gilroy'),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20, top: 20),
                    child: Icon(
                      Icons.message_outlined,
                      size: 30,
                      color: ColorsApp.color3,
                    ),
                  ),
                ],
              
              ),
              Container(
                margin: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 10.0),
                      child: CircleAvatar(
                        radius: 30.0,
                        backgroundImage: NetworkImage(
                            "https://www.w3schools.com/howto/img_avatar.png"),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "User Name",
                          style:
                              TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Last message",
                          style: TextStyle(
                              fontSize: 15.0, fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                    Spacer(),
                    Text(
                      "Date",
                      style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
              ),
            ],
          ))));
  }
}
