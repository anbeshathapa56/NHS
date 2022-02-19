import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:nhs/shared/custom_appbar.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../navigation_drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final navigationKey = GlobalKey<CurvedNavigationBarState>();
  final int _selectedPage = 0;

  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      const Icon(
        Icons.home,
        size: 40,
      ),
      const Icon(
        Icons.book,
        size: 40,
      ),
      const Icon(
        Icons.health_and_safety_sharp,
        size: 40,
      ),
      const Icon(
        Icons.run_circle_sharp,
        size: 40,
      ),
      const Icon(
        Icons.person,
        size: 30,
      ),
    ];
    return Scaffold(
      extendBody: false,
      backgroundColor: Colors.white,
      drawer:
          const NavigationDrawerWidget(), //endDrawer takes the drawer to the right side
      appBar: CustomAppBar(),
      body: //screens[index],
          Builder(
        builder: (context) => SingleChildScrollView(
          child: Column(
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
                  Text('Home',
                      style: TextStyle(
                        color: Colors.blue[900],
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      )),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
                child: Container(
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xFFD8DDE9),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircularPercentIndicator(
                      radius: 170.0,
                      lineWidth: 13.0,
                      animation: true,
                      percent: 0.55,
                      center: const Text(
                        "5550/10000",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20.0),
                      ),
                      footer: const Text(
                        'Steps',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                      circularStrokeCap: CircularStrokeCap.round,
                      progressColor: Colors.blue[900],
                      backgroundColor: const Color(0xFFBDBDBD),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
                child: Container(
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xFFD8DDE9),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 35,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: const Color(0xFF0D47A1),
                          ),
                          child: TextButton.icon(
                            onPressed: () {
                              Navigator.pushNamed(context, '/nhsform');
                            },
                            icon: const Icon(
                              Ionicons.calculator_sharp,
                              size: 16,
                              color: Color(0xFFFFFFFF),
                            ),
                            label: const Text(
                              'Calorie Counter',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 35,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: const Color(0xFF0D47A1),
                          ),
                          child: TextButton.icon(
                            onPressed: () {
                              Navigator.pushNamed(context, '/inputpagebmi');
                            },
                            icon: const Icon(
                              Ionicons.ios_speedometer,
                              size: 16,
                              color: Color(0xFFFFFFFF),
                            ),
                            label: const Text(
                              'BMI Calculator',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                child: Container(
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xFFD8DDE9),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              'Calories Remaining',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0,
                              ),
                            ),
                            Text(
                              'BMI Result',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '2500 - 500 = 2000',
                              style: TextStyle(
                                color: Colors.blue[900],
                                fontSize: 15.0,
                                letterSpacing: 1.0,
                              ),
                            ),
                            Text(
                              '18.5',
                              style: TextStyle(
                                color: Colors.blue[900],
                                fontSize: 15.0,
                                letterSpacing: 1.0,
                              ),
                            ),
                          ],
                        ),
                        const Divider(
                          color: Colors.grey,
                          thickness: 2.0,
                        ),
                        Stack(
                          children: [
                            Image.asset(
                              'assets/workout.jpg',
                            ),
                            TextButton(
                              child: const Text(
                                'Workouts',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              onPressed: () {
                                Navigator.pushNamed(context, '/workoutspage');
                              },
                              style: TextButton.styleFrom(
                                primary: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        const Divider(
                          color: Colors.grey,
                          thickness: 2.0,
                        ),
                        Stack(
                          children: [
                            Image.asset(
                              'assets/meditation.jpg',
                            ),
                            TextButton(
                              child: const Text(
                                'Meditation',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              onPressed: () {
                                Navigator.pushNamed(context, '/meditationpage');
                              },
                              style: TextButton.styleFrom(
                                primary: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
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
                Navigator.pushNamed(context, '/home');
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
