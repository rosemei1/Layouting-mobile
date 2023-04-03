import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:miniproject/list_item.dart';
import 'package:miniproject/model/menu.dart';


import 'detail_screen.dart';

class MenMen extends StatefulWidget{
  final List<MenuList> DoneMenMenList;

  const MenMen({
    Key? key,
    required this.DoneMenMenList
  }) : super(key: key);
  @override
  _MenulistState createState() => _MenulistState(DoneMenMenList);
}

class _MenulistState extends State<MenMen>{
  final List<MenuList> DoneMenMenList;
  final List<MenuList> menuMenuList = [
    MenuList(name: "Cinnamon Milk", tema: "Drink", imageAsset: "assets/images/cinammilk.jpg", bahan: "-Cinnamon\n-Whole Milk\n-Brown Sugar", cara: "-Put all of the ingredients into a saucepan on medium heat and whisk until it starts to boil (about 5 minutes)\n-Then, pour into mugs."),
    MenuList(name: "London Fog Latte", tema: "Drink", imageAsset: "assets/images/londonfog.jpg", bahan: "-Earl Grey Tea\n-Dried Lavender\n-Honey\n-Vanilla Extract\n-Plain Milk", cara: "-Brew the tea\n-Froth the Milk\n-Strain\n-Add Milk\n-Add Honey and Vanilla Extract\n-Serve"),
    MenuList(name: "Hot Chocolate", tema: "Drink", imageAsset: "assets/images/hotchoco.jpg", bahan: "-Cocoa powder\n-Sugar\n-Chocolate\n-Milk\n-Vanilla extract", cara: "-In a saucepan, whisk together the sugar and cocoa powder. Add milk, chocolate chunks, and vanilla.\n-Place over medium heat until steaming, whisking constantly to avoid burning the chocolate.\n-Cool to desired serving temperature and serve with your favorite toppings."),
    MenuList(
        name: "Grilled Cheese Sandwich",
        tema: "Food",
        imageAsset: "assets/images/cheese.jpg",
        bahan: "-Bread\n-Butter\n-Cheese",
        cara: "-Butter the toast\n-Heat skilletk\n-Add cheese\n-Brown the toast\n-Serve"),
    MenuList(
        name: "Baked Potato",
        tema: "Food",
        imageAsset: "assets/images/pot.jpg",
        bahan: "-Potato\n-Olive Oil\n-Kosher Salt",
        cara: "-Preheat the oven to 425, and line a baking sheet with parchment paper.\n-Prep the potatoes. Scrub the potatoes well and pat them dry with a kitchen towel. Then, poke the potatoes with a fork a few times to create small holes across their surfaces.\n-Season the potatoes. Place them on the baking sheet and rub them all over with olive oil. Sprinkle them liberally with sea or kosher salt, and transfer them to the hot oven to bake.\n-Bake for 45 to 60 minutes\n-Serve"),
    MenuList(
        name: "Creamy Tomato Soup",
        tema: "Food",
        imageAsset: "assets/images/soup.jpg",
        bahan: "-2 tablespoons unsalted butter\n-2 tablespoons extra-virgin olive oil\n-1 medium onion, very thinly sliced\n-3 garlic cloves, smashed\n-5 cups canned whole tomatoes in their juice (from three 14-ounce cans)\n-1 cup water\n-2/3 cup heavy cream\n-1 tablespoon sugar\n-1/4 teaspoon crushed red pepper\n-1/4 teaspoon celery seed\n-1/4 teaspoon dried oregano\n-Salt and freshly ground pepper\n-Four 3/4-inch-thick slices of white country bread, crusts trimmed, bread cut into 3/4-inch dice",
        cara: "-Prepare the ingredients\n-In a large saucepan, melt 1 tablespoon of the butter in 1 tablespoon of the olive oil. Add the sliced onion and smashed garlic and cook over moderate heat, stirring occasionally, until softened, about 5 minutes\n-Add the tomatoes and their juice, the water, heavy cream, sugar, crushed red pepper, celery seed and oregano and season with salt and pepper. Bring the soup to a boil over high heat, breaking up the tomatoes with the back of a spoon. Reduce the heat to moderate and simmer for 10 minutes\n-Working in batches, transfer the tomato soup to a blender and puree until smooth\n-Meanwhile, in a small skillet, cook the remaining 1 tablespoon of butter over moderately high heat until it begins to brown, about 1 minute. Scrape the browned butter into a medium bowl. Add the olive oil to the skillet. Add the diced bread and cook over moderately high heat, stirring occasionally, until it is slightly browned, about 6 minutes. Transfer the bread to the browned butter and toss well\n-Return the soup to a clean pot and rewarm the soup if necessary. Season the soup with salt and pepper. Ladle the soup into bowls and serve with the croutons"),
  ];

  _MenulistState(this.DoneMenMenList);

  @override
  Widget build(BuildContext context){
      return ListView.builder(
        itemBuilder: (context, index){
          final MenuList menu = menuMenuList[index];
          return InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return DetailScreen(menu: menu);
              }));
            },
            child: ListItem(
              menu: menu,
              isDone: DoneMenMenList.contains(menu),
            onCheckboxClick: (bool? value){
                setState(() {
                  if(value!=null){
                    value
                        ? DoneMenMenList.add(menu)
                        : DoneMenMenList.remove(menu);
                  }
                });
            }
            ),
          );
        },
        itemCount: menuMenuList.length,
      );
  }
}