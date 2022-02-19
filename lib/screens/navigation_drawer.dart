import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class NavigationDrawerWidget extends StatelessWidget {
  const NavigationDrawerWidget({Key? key}) : super(key: key);
  final padding = const EdgeInsets.symmetric(horizontal: 20);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        //color: Color.fromRGBO(50, 75, 205, 1),
        color: Colors.white,
        child: ListView(
          padding: padding,
          children: [
            DrawerHeader(
              child: Image.asset(
                'assets/logo.png',
              ),
            ),
            buildMenuItem(
              text: 'Home',
              icon: Icons.home,
              onClicked: () => selectedItem(context, 0),
            ),
            const Divider(
              color: Colors.black,
            ),
            buildMenuItem(
              text: 'Diary',
              icon: Icons.book,
              onClicked: () => selectedItem(context, 1),
            ),
            const Divider(
              color: Colors.black,
            ),
            buildMenuItem(
              text: 'Steps',
              icon: Icons.run_circle_sharp,
              onClicked: () => selectedItem(context, 2),
            ),
            const Divider(
              color: Colors.black,
            ),
            buildMenuItem(
              text: 'Workouts',
              icon: Icons.fitness_center,
              onClicked: () => selectedItem(context, 3),
            ),
            const Divider(
              color: Colors.black,
            ),
            buildMenuItem(
              text: 'Meditation',
              icon: MaterialCommunityIcons.meditation,
              onClicked: () => selectedItem(context, 4),
            ),
            const Divider(
              color: Colors.black,
            ),
            buildMenuItem(
              text: 'Diseases',
              icon: Icons.health_and_safety_sharp,
              onClicked: () => selectedItem(context, 5),
            ),
            const Divider(
              color: Colors.black,
            ),
            buildMenuItem(
              text: 'Profile',
              icon: Icons.person,
              onClicked: () => selectedItem(context, 6),
            ),
           
        
          ],
        ),
      ),
    );
  }

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    const color = Colors.black;
    const hoverColor = Colors.grey;

    return ListTile(
      leading: Icon(
        icon,
        color: color,
      ),
      title: Text(
        text,
        style: const TextStyle(color: color),
      ),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();

    switch (index) {
      case 0:
        Navigator.pushNamed(context, '/homepage');
        break;
      case 1:
        Navigator.pushNamed(context, '/diary');
        break;
      case 2:
        Navigator.pushNamed(context, '/steptrackerpage');
        break;
      case 3:
        Navigator.pushNamed(context, '/workoutspage');
        break;
      case 4:
        Navigator.pushNamed(context, '/meditation');
        break;
      case 5:
        Navigator.pushNamed(context, '/diseases');
        break;
      case 6:
        Navigator.pushNamed(context, '/profilepage');
        break;
      
    }
  }
}
