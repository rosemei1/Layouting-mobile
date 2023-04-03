import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:miniproject/model/menu.dart';

class DoneMenuList extends StatelessWidget{
  final List<MenuList> DoneMenMenList;
  const DoneMenuList({
    Key? key,
    required this.DoneMenMenList
  }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar : AppBar(
        backgroundColor: Color.fromARGB(255, 223, 166, 123),
        title: const Text('Saved',
          style:  TextStyle(
            fontSize: 20.0,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w900,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemBuilder: (context, index){
            final MenuList menu = DoneMenMenList[index];
            return Card(
              child: SizedBox(
                height: 200, // Set the height of the card here
                child: Stack(
                  children: [
                    // Image
                    Positioned.fill(
                      child: Image.asset(
                        menu.imageAsset,
                        fit: BoxFit.cover,
                      ),
                    ),

                    // Check box

                    // Name and tema
                    Positioned(
                      bottom: 10,
                      left: 10,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4), // Add some padding to the container
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.7), // Set the desired color here
                              borderRadius: BorderRadius.circular(4), // Add some border radius to the container
                            ),
                            child: Text(
                              menu.name,
                              style: const TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.black54,
                                  fontFamily: 'Poppins'
                              ),
                            ),
                          ),
                          SizedBox(height: 4), // Add some spacing between the two Text widgets
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4), // Add some padding to the container
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.7), // Set the desired color here
                              borderRadius: BorderRadius.circular(4), // Add some border radius to the container
                            ),
                            child: Text(
                              menu.tema,
                              style: const TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.black54,
                                  fontFamily: 'Poppins'
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        itemCount: DoneMenMenList.length,
      ),
    );
  }
}