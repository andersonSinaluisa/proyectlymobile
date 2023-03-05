import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:proyectly/Core/model/catalog.dart';
import 'package:proyectly/Project/model/project.dart';
import 'package:proyectly/widgets/input_field.dart';

import '../../../widgets/colors.dart';
import '../../bloc/bloc_projetcs.dart';

class NewProjectScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _NewProjectScreen();
  }
}

class _NewProjectScreen extends State<NewProjectScreen> {
  String dropdownvalue = 'Item 1';

  // List of items in our dropdown menu
  List<DropdownMenuItem<Catalog>> items = [];
  late ProjectsBloc projectBloc ;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    projectBloc = BlocProvider.of(context);
    return Scaffold(
      backgroundColor: new Color(0xFFF6F6F6),
      body: Container(
        child: ListView(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 85.0, left: 20),
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
              margin: EdgeInsets.symmetric(horizontal: 20.0,vertical: 15),
                child: InputField(
                  hintText: "Project name",
                  inputType: TextInputType.text,
                  labelText: "Project name",
                  obscureText: false,
                  onChanged: (value) => print(value),
                  key: Key("projectName"),
                )),
            //select
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0,vertical: 15),
                child: InputField(
                  hintText: "Project description",
                  inputType: TextInputType.text,
                  labelText: "Project description",
                  obscureText: false,
                  onChanged: (value) => print(value),
                  key: Key("projectDescription"),
                )),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0,vertical: 15),
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: Colors.white,
                border: Border.all(
                    color: ColorsApp.color3,
                    style: BorderStyle.solid,
                    width: 0.80),
              ),
              child: DropdownButton(
                // Initial Value
                value: dropdownvalue,
                hint: Text('Select a Category'),
                // Dropdown Button Style

                dropdownColor: Colors.white,
                style: const TextStyle(
                  color: ColorsApp.color3,
                  fontSize: 15,
                ),
                // Down Arrow Icon
                icon: const Icon(Icons.keyboard_arrow_down),

                // Array list of items
                items: items, onChanged: (Object? value) {  },
                // After selecting the desired option,it will
                // change button value to selected value
                
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0,vertical: 15),
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: Colors.white,
                border: Border.all(
                    color: ColorsApp.color3,
                    style: BorderStyle.solid,
                    width: 0.80),
              ),
              child: DropdownButton(
                // Initial Value
                value: dropdownvalue,

                // Dropdown Button Style
                hint: Text('Select a Category'),

                dropdownColor: Colors.white,
                style: const TextStyle(
                  color: ColorsApp.color3,
                  fontSize: 15,
                ),
                // Down Arrow Icon
                icon: const Icon(Icons.keyboard_arrow_down),

                // Array list of items
                items: items,
                // After selecting the desired option,it will
                // change button value to selected value
                onChanged: (Object? value) {  },
              ),
            ),
            //DropDownButton outline
          ],
        ),
      ),
    );
  }
}
