import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nhs/screens/navigation_drawer.dart';
import 'package:nhs/shared/custom_appbar.dart';
import 'package:nhs/shared/constants.dart';

class NHSForm extends StatefulWidget {
  const NHSForm({Key? key}) : super(key: key);

  @override
  State<NHSForm> createState() => _NHSFormState();
}

class _NHSFormState extends State<NHSForm> {
  //int _value = 1;
  late String valueChooseWG;
  late String valueChooseMF;
  List listItemWG = [
    'Select Weekly Goal',
    'Lose 2 pounds per week',
    'Lose 1.5 pounds per week',
    'Lose 1 pounds per week',
    'Lose 0.5 pounds per week',
    'Maintain my current weight',
    'Gain 0.5 pounds per week',
    'Gain 1 pounds per week',
  ];
  List listItemMF = [
    'Select Gender',
    'Male',
    'Female',
  ];
  @override
  void initState() {
    super.initState();
    valueChooseWG = listItemWG[0];
    valueChooseMF = listItemMF[0];
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.white,
      drawer:
          const NavigationDrawerWidget(), //endDrawer takes the drawer to the right side
      appBar:  CustomAppBar(),
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
                  Text('Form',
                      style: TextStyle(
                        color: Colors.blue[900],
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      )),
                ],
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                    vertical: 20.0, horizontal: 50.0),
                child: Form(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10.0,
                      ),
                      TextFormField(
                        style: const TextStyle(
                          height: 1.0,
                        ),
                        decoration:
                            textInputDecoration.copyWith(hintText: 'FullName'),
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(
                              RegExp(r"[a-zA-Z]+|\s")),
                        ],
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      TextFormField(
                        style: const TextStyle(
                          height: 1.0,
                        ),
                        decoration:
                            textInputDecoration.copyWith(hintText: 'Age'),
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(
                              RegExp(r"[0-9]+|\s")),
                        ],
                        keyboardType: TextInputType.number,
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      TextFormField(
                        style: const TextStyle(
                          height: 1.0,
                        ),
                        decoration: textInputDecoration.copyWith(
                            hintText: 'Height (cm)'),
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(
                              RegExp(r"[0-9.]+|\s")),
                        ],
                        keyboardType: TextInputType.number,
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      TextFormField(
                        style: const TextStyle(
                          height: 1.0,
                        ),
                        decoration: textInputDecoration.copyWith(
                            hintText: 'Starting Weight (pounds)'),
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(
                              RegExp(r"[0-9.]+|\s")),
                        ],
                        keyboardType: TextInputType.number,
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      TextFormField(
                        style: const TextStyle(
                          height: 1.0,
                        ),
                        decoration: textInputDecoration.copyWith(
                            hintText: 'Current Weight (pounds)'),
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(
                              RegExp(r"[0-9.]+|\s")),
                        ],
                        keyboardType: TextInputType.number,
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      TextFormField(
                        style: const TextStyle(
                          height: 1.0,
                        ),
                        decoration: textInputDecoration.copyWith(
                            hintText: 'Goal Weight (pounds)'),
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(
                              RegExp(r"[0-9.]+|\s")),
                        ],
                        keyboardType: TextInputType.number,
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      TextFormField(
                        style: const TextStyle(
                          height: 1.0,
                        ),
                        decoration: textInputDecoration.copyWith(
                            hintText: 'Activity Level'),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        padding: const EdgeInsets.only(
                          left: 10.0,
                          right: 10.0,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Container(
                          color: const Color(0xFFD8DDE9),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton(
                              isExpanded: true,
                              alignment: Alignment.center,
                              dropdownColor: const Color(0xFFD8DDE9),
                              icon: const Icon(Icons.arrow_drop_down),
                              iconSize: 30.0,
                              value: valueChooseWG,
                              onChanged: (newValue) {
                                setState(() {
                                  valueChooseWG = newValue as String;
                                });
                              },
                              items: listItemWG.map((valueItemWG) {
                                return DropdownMenuItem(
                                  value: valueItemWG,
                                  child: Center(
                                    child: Text(
                                      valueItemWG,
                                    ),
                                  ),
                                );
                              }).toList(),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        padding: const EdgeInsets.only(
                          left: 10.0,
                          right: 10.0,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Container(
                          color: const Color(0xFFD8DDE9),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton(
                              isExpanded: true,
                              alignment: Alignment.center,
                              dropdownColor: const Color(0xFFD8DDE9),
                              icon: const Icon(Icons.arrow_drop_down),
                              iconSize: 30.0,
                              value: valueChooseMF,
                              onChanged: (newValue) {
                                setState(() {
                                  valueChooseMF = newValue as String;
                                });
                              },
                              items: listItemMF.map((valueItemMF) {
                                return DropdownMenuItem(
                                  value: valueItemMF,
                                  child: Center(
                                    child: Text(
                                      valueItemMF,
                                    ),
                                  ),
                                );
                              }).toList(),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          debugPrint('Form Submitted');
                        },
                        child: const Text(
                          'Proceed',
                          style: TextStyle(color: Colors.white),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blue[900],
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
    );
  }
}
