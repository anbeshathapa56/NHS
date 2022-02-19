import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:nhs/screens/navigation_drawer.dart';
import 'package:nhs/shared/custom_appbar.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class StepTrackerPage extends StatefulWidget {
  const StepTrackerPage({Key? key}) : super(key: key);

  @override
  _StepTrackerPageState createState() => _StepTrackerPageState();
}

class _StepTrackerPageState extends State<StepTrackerPage> {
  final navigationKey = GlobalKey<CurvedNavigationBarState>();
  final int _selectedPage = 3;

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
      appBar: CustomAppBar(),
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
                Text('Step Tracker',
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
              padding: const EdgeInsets.all(20.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xFFD8DDE9),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(50, 15, 50, 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Icon(
                                MaterialCommunityIcons.drag_horizontal,
                                size: 35,
                                color: Colors.blue[900],
                              ),
                              Text(
                                '800',
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18,
                                  color: Colors.blue[900],
                                ),
                              ),
                              Text(
                                'm',
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18,
                                  color: Colors.blue[900],
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Icon(
                                Fontisto.fire,
                                size: 30,
                                color: Colors.blue[900],
                              ),
                              const SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                '81',
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18,
                                  color: Colors.blue[900],
                                ),
                              ),
                              Text(
                                'kcal',
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18,
                                  color: Colors.blue[900],
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Icon(
                                Fontisto.stopwatch,
                                size: 35,
                                color: Colors.blue[900],
                              ),
                              Text(
                                '10',
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18,
                                  color: Colors.blue[900],
                                ),
                              ),
                              Text(
                                'min',
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18,
                                  color: Colors.blue[900],
                                ),
                              ),
                            ],
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
