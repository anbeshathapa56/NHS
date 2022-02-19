import 'package:flutter/material.dart';
import 'package:nhs/services/auth.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final AuthService _auth = AuthService();
  CustomAppBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(90.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      backgroundColor: Colors.white,
      automaticallyImplyLeading: false,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            'assets/logo.png',
            fit: BoxFit.contain,
            height: 120.0,
          ),
          TextButton.icon(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return Dialog(
                      child: Container(
                        color: Colors.white,
                        height: 129,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              Row(
                                children: const [
                                  Text(
                                    'Are you sure you want to Logout?',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20.0,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  TextButton(
                                    child: const Text(
                                      'Yes',
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                      ),
                                    ),
                                    onPressed: () async {
                                      await _auth.signOut();
                                      Navigator.pop(context);
                                    },
                                  ),
                                  TextButton(
                                    child: const Text(
                                      'No',
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  });
            },
            icon: Icon(
              Icons.person,
              color: Colors.blue[900],
            ),
            label: Text(
              'Logout',
              style: TextStyle(
                color: Colors.blue[900],
              ),
            ),
            style: TextButton.styleFrom(
              primary: Colors.white,
            ),
          ),
        ],
      ),
      toolbarHeight: 90.0,
    );
  }
}
