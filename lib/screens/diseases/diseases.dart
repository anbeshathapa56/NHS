import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:nhs/screens/navigation_drawer.dart';
import 'package:nhs/shared/custom_appbar.dart';
import 'package:nhs/shared/constants.dart';

class Diseases extends StatefulWidget {
  const Diseases({Key? key}) : super(key: key);

  @override
  _DiseasesState createState() => _DiseasesState();
}

class _DiseasesState extends State<Diseases> {
  final navigationKey = GlobalKey<CurvedNavigationBarState>();
  final int _selectedPage = 2;

  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      const Icon(
        Icons.home,
        size: 30,
      ),
      const Icon(
        Icons.book,
        size: 30,
      ),
      const Icon(
        Icons.health_and_safety_sharp,
        size: 30,
      ),
      const Icon(
        Icons.run_circle_sharp,
        size: 30,
      ),
      const Icon(
        Icons.person,
        size: 30,
      ),
    ];
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.white,
      drawer:
          const NavigationDrawerWidget(), //endDrawer takes the drawer to the right side
      appBar:  CustomAppBar(),
      body: //screens[index],
          Builder(
        builder: (context) => Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextButton.icon(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: Icon(
                    Icons.dehaze,
                    color: Colors.blue[900],
                  ),
                  label: const Text(
                    '',
                  ),
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                  ),
                ),
                Text('Diseases',
                    style: TextStyle(
                      color: Colors.blue[900],
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    )),
              ],
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 75.0),
                    child: TextFormField(
                      decoration: textInputDecoration.copyWith(
                        hintText: 'Type a message...',
                        hintStyle: const TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context)
            .copyWith(iconTheme: const IconThemeData(color: Colors.white)),
        child: CurvedNavigationBar(
          key: navigationKey,
          backgroundColor: Colors.transparent,
          color: const Color(0xFF0D47A1),
          buttonBackgroundColor: const Color(0xFF2196F3),
          items: items,
          height: 60,
          animationDuration: const Duration(milliseconds: 300),
          index: _selectedPage,
          onTap: (index) {
            switch (index) {
              case 0:
                Navigator.pushNamed(context, '/homepage');
                break;
              case 1:
                Navigator.pushNamed(context, '/diary');
                break;
              case 2:
                Navigator.pushNamed(context, '/diseases');
                break;
              case 3:
                Navigator.pushNamed(context, '/steptrackerpage');
                break;
              case 4:
                Navigator.pushNamed(context, '/profilepage');
                break;
            }
          },
        ),
      ),
    );
  }
}
