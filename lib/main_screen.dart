import 'package:flutter/material.dart';
import 'package:miniproject/menu_list.dart';
import 'package:miniproject/done_menu_list.dart';
import 'package:miniproject/model/menu.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>{
  final List<MenuList> DoneMenMenList = [];


  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 223, 166, 123),
        title: const Text('Food & Beverage',
          style:  TextStyle(
            fontSize: 20.0,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w900,
          ),
        ),
        centerTitle: true,
        actions: <Widget> [
          IconButton(
              icon: const Icon(Icons.emoji_food_beverage),
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context){
                    return DoneMenuList(
                      DoneMenMenList: DoneMenMenList
                    );
                  })
                );
              }
          )
        ],
      ),
    body: MenMen(DoneMenMenList: DoneMenMenList),
    );
  }
}