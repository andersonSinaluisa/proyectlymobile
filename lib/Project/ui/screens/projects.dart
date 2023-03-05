import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:proyectly/Project/bloc/bloc_projetcs.dart';
import 'package:proyectly/widgets/colors.dart';

import 'new_project.dart';

class ProjectsScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ProjectsScreen();
  }
}

class _ProjectsScreen extends State<ProjectsScreen> {
  @override
  Widget build(BuildContext context) {
    ProjectsBloc projectsBloc = BlocProvider.of(context);

    // TODO: implement build
    return Scaffold(
      body: Container(
        child: ListView(
          //hacer un listview con las tarjetas de los proyectos horizontal

          children: [
            //tarjeta con titulo y avatares de los miembros del proyecto
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20, top: 20),
                  child: Text(
                    "Projects",
                    style: TextStyle(
                        color: ColorsApp.color3,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Gilroy'),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, top: 20),
                  child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BlocProvider(
                                      child: NewProjectScreen(),
                                      bloc: projectsBloc,
                                    )));
                      },
                      child: Icon(
                        Icons.add_circle_outline,
                        size: 30,
                        color: ColorsApp.color3,
                      )),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(
                      Icons.star_rate_sharp,
                      size: 100,
                      color: ColorsApp.color3,
                    ),
                    const ListTile(
                      title: Text('Project 1',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Gilroy',
                          )),
                      subtitle:
                          Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
                    ),
                    //avatar de los miembros del proyecto
                    Container(
                        margin: EdgeInsets.only(left: 20, right: 20),
                        child: Row(
                          children: [
                            Container(
                              child: CircleAvatar(
                                backgroundImage: NetworkImage(
                                    "https://www.woolha.com/media/2020/03/eevee.png"),
                              ),
                            ),
                            Container(
                              child: CircleAvatar(
                                backgroundImage: NetworkImage(
                                    "https://www.woolha.com/media/2020/03/eevee.png"),
                              ),
                            ),
                            Container(
                              child: CircleAvatar(
                                backgroundImage: NetworkImage(
                                    "https://www.woolha.com/media/2020/03/eevee.png"),
                              ),
                            ),
                            Container(
                              child: CircleAvatar(
                                backgroundImage: NetworkImage(
                                    "https://www.woolha.com/media/2020/03/eevee.png"),
                              ),
                            ),
                          ],
                        )),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        TextButton(
                          child: const Text('EDIT'),
                          onPressed: () {/* ... */},
                        ),
                        const SizedBox(width: 8),
                        TextButton(
                          child: const Text('DELETE'),
                          onPressed: () {/* ... */},
                        ),
                        const SizedBox(width: 8),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
