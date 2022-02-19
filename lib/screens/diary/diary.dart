import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:nhs/screens/navigation_drawer.dart';
import 'package:nhs/shared/custom_appbar.dart';

class Diary extends StatefulWidget {
  const Diary({Key? key}) : super(key: key);

  @override
  _DiaryState createState() => _DiaryState();
}

class _DiaryState extends State<Diary> {
  final navigationKey = GlobalKey<CurvedNavigationBarState>();
  final int _selectedPage = 1;

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
          SafeArea(
        child: Builder(
          builder: (context) => SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                    ),
                    Text('Diary',
                        style: TextStyle(
                          color: Colors.blue[900],
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        )),
                  ],
                ),
                Container(
                  color: const Color(0xFFD8DDE9),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
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
                          ],
                        ),
                        const SizedBox(
                          height: 15.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              '2500',
                              style: TextStyle(
                                color: Colors.blue[900],
                                fontSize: 15.0,
                                letterSpacing: 1.0,
                              ),
                            ),
                            Text(
                              '-',
                              style: TextStyle(
                                color: Colors.blue[900],
                                fontSize: 15.0,
                              ),
                            ),
                            Text(
                              '500',
                              style: TextStyle(
                                color: Colors.blue[900],
                                fontSize: 15.0,
                                letterSpacing: 1.0,
                              ),
                            ),
                            Text(
                              '=',
                              style: TextStyle(
                                color: Colors.blue[900],
                                fontSize: 15.0,
                              ),
                            ),
                            Text(
                              '2000',
                              style: TextStyle(
                                color: Colors.blue[900],
                                fontSize: 15.0,
                                letterSpacing: 1.0,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                Container(
                  color: const Color(0xFFD8DDE9),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              'Breakfast',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0,
                              ),
                            ),
                            Text(
                              '300',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 30.0,
                        ),
                        RichText(
                          text: TextSpan(
                              text: 'Add Food',
                              style: TextStyle(
                                color: Colors.blue[900],
                                fontSize: 15.0,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  debugPrint('Add Food');
                                }),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                Container(
                  color: const Color(0xFFD8DDE9),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              'Lunch',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0,
                              ),
                            ),
                            Text(
                              '200',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 30.0,
                        ),
                        RichText(
                          text: TextSpan(
                              text: 'Add Food',
                              style: TextStyle(
                                color: Colors.blue[900],
                                fontSize: 15.0,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  debugPrint('Add Food');
                                }),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                Container(
                  color: const Color(0xFFD8DDE9),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              'Dinner',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0,
                              ),
                            ),
                            Text(
                              '0',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 30.0,
                        ),
                        RichText(
                          text: TextSpan(
                              text: 'Add Food',
                              style: TextStyle(
                                color: Colors.blue[900],
                                fontSize: 15.0,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  debugPrint('Add Food');
                                }),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                Container(
                  color: const Color(0xFFD8DDE9),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              'Snacks',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0,
                              ),
                            ),
                            Text(
                              '0',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 30.0,
                        ),
                        RichText(
                          text: TextSpan(
                              text: 'Add Food',
                              style: TextStyle(
                                color: Colors.blue[900],
                                fontSize: 15.0,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  debugPrint('Add Food');
                                }),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
                  child: Container(
                    color: const Color(0xFFD8DDE9),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                'Water',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15.0,
                                ),
                              ),
                              Text(
                                '200',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15.0,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 30.0,
                          ),
                          RichText(
                            text: TextSpan(
                                text: 'Add Water',
                                style: TextStyle(
                                  color: Colors.blue[900],
                                  fontSize: 15.0,
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    debugPrint('Add Water');
                                  }),
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
