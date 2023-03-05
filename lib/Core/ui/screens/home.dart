import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:proyectly/Core/ui/screens/notifications.dart';
import 'package:proyectly/Core/ui/screens/stats.dart';
import 'package:proyectly/Messages/bloc/bloc_messages.dart';
import 'package:proyectly/Project/bloc/bloc_projetcs.dart';
import 'package:proyectly/User/bloc/bloc_user.dart';
import 'package:proyectly/User/ui/screens/profile.dart';
import 'package:proyectly/widgets/bg_gradient.dart';
import 'package:proyectly/widgets/colors.dart';

import '../../../Messages/ui/screens/list_messages.dart';
import '../../../Project/ui/screens/projects.dart';
import '../../bloc/bloc_stats.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Home();
  }
}

class _Home extends State<Home> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    //with bootom navigation bar
    final List<Widget> _children = [
      BlocProvider(child: StatsScreen(), bloc: StatsBloc()),
      BlocProvider(child: ProjectsScreen(), bloc: ProjectsBloc()),
      BlocProvider(child: ListMessagesScreen(), bloc: MessagesBloc()),
      NotificationsScreen(),
      BlocProvider(child: ProfileScreen(), bloc: UserBloc())
    ];

    return Scaffold(
      backgroundColor: new Color(0xFFF6F6F6),
      body: Container(
          child: Stack(children: <Widget>[
        //gradient
        _children[currentIndex],
      ])),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: currentIndex,
        showElevation: true,
        itemCornerRadius: 24,
        curve: Curves.easeIn,
        onItemSelected: (index) => setState(() => currentIndex = index),
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            icon: Icon(Icons.home_filled),
            title: Text('Home'),
            activeColor: ColorsApp.color3,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.view_kanban_outlined),
            title: Text('Projects'),
            activeColor: ColorsApp.color3,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.message_sharp),
            title: Text('Messages'),
            activeColor: ColorsApp.color3,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.notifications),
            title: Text(
              'Notifications',
            ),
            activeColor: ColorsApp.color3,
            textAlign: TextAlign.center,
          
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.person),
            title: Text(
              'Profile',
            ),
            activeColor: ColorsApp.color3,
            textAlign: TextAlign.center,
          ),
       
        ],
      ),
    );
  }
}
