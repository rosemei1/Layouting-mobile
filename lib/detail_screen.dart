import 'package:flutter/material.dart';
import 'package:miniproject/model/menu.dart';

class DetailScreen extends StatelessWidget{
  const DetailScreen({Key? key,required this.menu}) : super(key: key);

  final MenuList menu;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar : AppBar(
        backgroundColor: Color.fromARGB(255, 223, 166, 123),
        title: Text(menu.name,
          style: const TextStyle(
              fontSize: 20.0,
              fontFamily: 'Poppins',
            fontWeight: FontWeight.w900
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget> [
                Image.asset(menu.imageAsset),
                Container(
                  margin: EdgeInsets.only(top: 16.0),
                  child: Text(
                    menu.name,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Alcantera',
                    ),
                  ),
                ),//title
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  child: Divider(
                    height: 20,
                    thickness: 3,
                    indent: 20,
                    endIndent: 16,
                    color: Colors.black.withOpacity(0.5),
                  ),
                ),
                SizedBox(height: 15,),
                Container(
                  child: const Text(
                    "Ingredients",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Alcantera',
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    menu.bahan,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 16.0,
                        fontFamily: 'Poppins'),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  child: Divider(
                    height: 20,
                    thickness: 3,
                    indent: 20,
                    endIndent: 16,
                    color: Colors.black.withOpacity(0.5),
                  ),
                ),
                SizedBox(height: 15,),
                Container(
                  child: const Text(
                    "Step",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Alcantera',
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    menu.cara,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 16.0,
                        fontFamily: 'Poppins'),
                  ),
                ),//desc//desc
              ],
            ),
          ),
        ),
      ),
    );
  }
}
