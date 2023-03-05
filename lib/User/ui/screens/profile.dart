import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:proyectly/User/bloc/bloc_user.dart';
import 'package:proyectly/User/ui/widgets/profile_banner.dart';
import 'package:proyectly/widgets/colors.dart';

class ProfileScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ProfileScreen();
  }
}

class _ProfileScreen extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    UserBloc userBloc = BlocProvider.of(context);

    return Scaffold(
      body: Container(
          child: ListView(
        children: [
          //imagen de portada

          Container(
              child: ProfileBanner(
                LogOut: (){
                  userBloc.SignOut();
                  },
                email: userBloc.user?.email ?? "email",
                username: "username",
              ),
          ),
          //info de usuario

          //card with number of projects
          Container(
            margin: const EdgeInsets.only(top: 20.0),
            child: Container(
              alignment: Alignment.center,
              child: Container(
                alignment: Alignment.center,
                height: 100,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 25, top: 20.0),
                          child: const Icon(
                            Icons.folder,
                            color: ColorsApp.color3,
                            size: 25.0,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 20.0),
                          child: const Text(
                            "Projects",
                            style: TextStyle(
                                fontSize: 15.0,
                                color: ColorsApp.color3,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Gilroy'),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 20.0),
                          child: const Text(
                            "0",
                            style: TextStyle(
                                fontSize: 15.0,
                                color: ColorsApp.color3,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Gilroy'),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 25, top: 20.0),
                          child: const Icon(
                            Icons.group_outlined,
                            color: ColorsApp.color3,
                            size: 25.0,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 20.0),
                          child: const Text(
                            "Teams",
                            style: TextStyle(
                                fontSize: 15.0,
                                color: ColorsApp.color3,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Gilroy'),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 20.0),
                          child: const Text(
                            "0",
                            style: TextStyle(
                                fontSize: 15.0,
                                color: ColorsApp.color3,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Gilroy'),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),

          //post item with text user image and date
        ]),
      )
    );
  }
}
