import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:proyectly/Core/bloc/bloc_stats.dart';
import 'package:proyectly/Core/ui/widgets/stats_task.dart';
import 'package:proyectly/widgets/colors.dart';

import '../widgets/stats_status_task.dart';

class StatsScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _StatsScreen();
  }
}

class _StatsScreen extends State<StatsScreen> {
  @override
  Widget build(BuildContext context) {

    StatsBloc statsBloc = BlocProvider.of<StatsBloc>(context);

    return Scaffold(
        body: Container(
      child: ListView(
        children: [
          //create fl_chart
          Row(
            children: [
              //avatar
              Container(
                margin: const EdgeInsets.only(top: 20.0, left: 20.0),
                child: CircleAvatar(
                  radius: 30.0,
                  backgroundImage: NetworkImage(
                      "https://www.w3schools.com/howto/img_avatar.png"),
                ),
              ),
              //name
              Container(
                  margin: const EdgeInsets.only(top: 20.0, left: 20.0),
                  child: Column(
                    children: [
                      Text(
                        "Good morning,",
                        style: TextStyle(
                            fontSize: 15.0,
                            fontFamily: 'Gilroy',
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                      Text(
                        "John Doe",
                        style: TextStyle(
                            fontSize: 15.0,
                            fontFamily: 'Gilroy',
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      )
                    ],
                  )),
              InkWell(
                onTap: () {
                  print("tap");
                },
                child: Container(
                  margin: const EdgeInsets.only(top: 10.0, left: 20.0),
                  child: Icon(
                    Icons.search_sharp,
                    color: Colors.grey,
                  ),
                  //corner radius
                ),
              ),
              InkWell(
                onTap: () {
                  print("tap");
                },
                child: Container(
                  margin: const EdgeInsets.only(top: 10.0, left: 20.0),
                  child: Icon(
                    Icons.notifications,
                    color: Colors.grey,
                  ),
                ),
              )
            ],
          ),

          Container(
            margin: const EdgeInsets.only(top: 20.0, left: 20.0),
            child: Text(
              "Create and manage your projects",
              style: TextStyle(
                  fontFamily: 'Gilroy',
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: ColorsApp.color3),
            ),
          ),
          //horizontal list
          Container(
            margin: const EdgeInsets.only(top: 20.0),
            height: 100.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 20.0),
                  child: Card(
                    child: Container(
                      width: 100.0,
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 10.0),
                            child: Icon(
                              Icons.add,
                              color: Colors.grey,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 10.0),
                            child: Text(
                              "Create new",
                              style: TextStyle(
                                  fontFamily: 'Gilroy',
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20.0),
                  child: Card(
                    child: Container(
                      width: 100.0,
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 10.0),
                            child: Icon(
                              Icons.add,
                              color: Colors.grey,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 10.0),
                            child: Text(
                              "Create new",
                              style: TextStyle(
                                  fontFamily: 'Gilroy',
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20.0),
                  child: Card(
                    child: Container(
                      width: 100.0,
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 10.0),
                            child: Icon(
                              Icons.add,
                              color: Colors.grey,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 10.0),
                            child: Text(
                              "Create new",
                              style: TextStyle(
                                  fontFamily: 'Gilroy',
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20.0),
                  child: Card(
                    child: Container(
                      width: 100.0,
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.topRight,
                            margin: const EdgeInsets.only(top: 10.0),
                            child: Icon(
                              Icons.add,
                              color: Colors.grey,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 10.0),
                            child: Text(
                              "Create new",
                              style: TextStyle(
                                  fontFamily: 'Gilroy',
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          Container(
              margin: const EdgeInsets.all(20.0),
              child: Card(
                child: Container(
                    width: 400.0,
                    height: 150.0,
                    child: Row(
                      children: [
                        Column(children: [
                          Container(
                            margin:
                                const EdgeInsets.only(top: 20.0, left: 20.0),
                            child: Row(
                              children: [
                                Text(
                                  "Date : 12/12/2020",
                                  style: TextStyle(
                                      fontFamily: 'Gilroy',
                                      fontSize: 10.0,
                                      color: Colors.blueGrey),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin:
                                const EdgeInsets.only(top: 20.0, left: 20.0),
                            child: Row(
                              children: [
                                Text(
                                  "Project UI",
                                  style: TextStyle(
                                      fontFamily: 'Gilroy',
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                              top: 20.0,
                            ),
                            child: Row(
                              children: [
                                Text(
                                  "Project UI",
                                  style: TextStyle(
                                      fontFamily: 'Gilroy',
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold,
                                      color: ColorsApp.color3),
                                ),
                              ],
                            ),
                          ),
                        ]),
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.all(20.0),
                              alignment: Alignment.centerLeft,
                              child: CircularPercentIndicator(
                                radius: 40.0,
                                lineWidth: 5.0,
                                animation: true,
                                percent: .5,
                                animationDuration: 2500,
                                animateFromLastPercent: true,
                                center: const Text(
                                  "50.0%",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0),
                                ),
                                circularStrokeCap: CircularStrokeCap.round,
                                progressColor: ColorsApp.color3,
                              ),
                            ),
                          ],
                          //progress circle here
                        )
                      ],
                    )),
              )),

          Container(
              margin: const EdgeInsets.only(top: 20.0, left: 20.0),
              child: Row(children: [
                const Text(
                  "My Tasks",
                  style: TextStyle(
                      fontFamily: 'Gilroy',
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                //see all
                Container(
                  margin: const EdgeInsets.only(left: 150),
                  child: const Text(
                    "See all",
                    style: TextStyle(
                        fontFamily: 'Gilroy',
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  ),
                )
              ])),

          //horizontal list
          Container(
            margin: const EdgeInsets.all(20.0),
            height: 100.0,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
              Container(
                child: Card(
                    child: Container(
                  margin: EdgeInsets.all(20),
                  alignment: Alignment.center,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          CircularPercentIndicator(
                            radius: 40.0,
                            lineWidth: 5.0,
                            animation: true,
                            percent: .5,
                            animationDuration: 2500,
                            animateFromLastPercent: true,
                            center: const Text(
                              "50.0%",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20.0),
                            ),
                            circularStrokeCap: CircularStrokeCap.round,
                            progressColor: ColorsApp.color3,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 70,
                      ),
                      Column(
                        children: [
                          Text(
                            "Monday 12/12/2020",
                            style: TextStyle(
                                fontFamily: 'Gilroy',
                                fontSize: 10.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.blueGrey),
                          ),
                          Text(
                            "Review the project",
                            style: TextStyle(
                                fontFamily: 'Gilroy',
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.blueGrey),
                          ),
                        ],
                      )
                    ],
                  ),
                )),
              )
            ]),
          )
        ],
      ),
    ));
  }
}
