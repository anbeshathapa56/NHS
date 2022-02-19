import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:nhs/screens/navigation_drawer.dart';

import 'package:nhs/shared/custom_appbar.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({Key? key}) : super(key: key);

  final user = FirebaseAuth.instance.currentUser!;
  final navigationKey = GlobalKey<CurvedNavigationBarState>();
  final int _selectedPage = 4;

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
      backgroundColor: Colors.white,
      drawer:
          const NavigationDrawerWidget(), //endDrawer takes the drawer to the right side
      appBar: CustomAppBar(),
      body: Builder(
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
                    style: TextButton.styleFrom(
                      primary: Colors.white,
                    ),
                  ),
                  Text(
                    'Profile',
                    style: TextStyle(
                      color: Colors.blue[900],
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                child: Row(
                  children: [
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 35.0,
                          backgroundImage: NetworkImage(user.photoURL!),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 20.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          user.displayName!,
                          style: const TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          user.email!,
                          style: const TextStyle(
                            fontSize: 17.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Before you quit, think why you started.',
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue[900]),
                    ),
                  ],
                ),
              ),
              const Divider(
                color: Color(0xFFF5F5F5),
                height: 30,
                thickness: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  color: const Color(0xFFFFFFFF),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'ACCOUNT',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF616161),
                        ),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.settings,
                          color: Color(0xFF424242),
                        ),
                        label: const Text(
                          'Account Settings',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF424242),
                          ),
                        ),
                      ),
                      TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(
                          FontAwesome.bell,
                          color: Color(0xFF424242),
                        ),
                        label: const Text(
                          'Notification Settings',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF424242),
                          ),
                        ),
                      ),
                      TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(
                         Feather.repeat,
                          color: Color(0xFF424242),
                        ),
                        label: const Text(
                          'Update Goals',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF424242),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Divider(
                color: Color(0xFFF5F5F5),
                height: 30,
                thickness: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  color: const Color(0xFFFFFFFF),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'HELP AND LEGAL',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF616161),
                        ),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(
                          MaterialIcons.quick_contacts_mail,
                          size: 25.0,
                          color: Color(0xFF424242),
                        ),
                        label: const Text(
                          'Contact Us',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF424242),
                          ),
                        ),
                      ),
                      TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(
                          Feather.info,
                          color: Color(0xFF424242),
                        ),
                        label: const Text(
                          'About Us',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF424242),
                          ),
                        ),
                      ),
                      TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(
                          MaterialCommunityIcons.file_certificate,
                          size: 30,
                          color: Color(0xFF424242),
                        ),
                        label: const Text(
                          'Terms & Policies',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF424242),
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        color: const Color(0xFFF5F5F5),
                        child: const Center(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Version 1.0.5',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF424242),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
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
