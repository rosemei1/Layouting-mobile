import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'model/menu.dart';

class ListItem extends StatelessWidget {
  final MenuList menu;
  final bool isDone;
  final Function(bool? value) onCheckboxClick;

  const ListItem({
    required this.menu,
    required this.isDone,
    required this.onCheckboxClick,
  });

  @override
  Widget build(BuildContext context) {
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
            Positioned(
              top: 10,
              right: 10,
              child: Checkbox(
                checkColor: Colors.white,
                value: isDone,
                onChanged: onCheckboxClick,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                  side: BorderSide(
                    color: Colors.red,
                    width: 2,
                  ),
                ),
              ),
            ),

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
  }
}
