import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:nhs/screens/calorie_counting/form.dart';
import 'package:nhs/screens/diary/diary.dart';
import 'package:nhs/screens/diseases/diseases.dart';
import 'package:nhs/screens/meditation/meditation_page.dart';
import 'package:nhs/screens/profile/profile_page.dart';
import 'package:nhs/screens/start_screens/intro_screen.dart';
import 'package:nhs/screens/start_screens/splash.dart';
import 'package:nhs/screens/step_tracker/step_tracker_page.dart';
import 'package:nhs/screens/workouts/workouts_page.dart';
import 'package:nhs/models/theuser.dart';
import 'package:nhs/screens/authenticate/forgot_password.dart';
import 'package:nhs/screens/authenticate/google_sign_in.dart';
import 'package:nhs/screens/authenticate/verify_email.dart';
import 'package:nhs/screens/bmi/input_page_bmi.dart';
import 'package:nhs/screens/home/home_page.dart';
import 'package:nhs/screens/wrapper.dart';
import 'package:nhs/services/auth.dart';
import 'package:provider/provider.dart';

void main() async {
  // These two lines
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  //
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamProvider<TheUser?>.value(
        value: AuthService()
            .user, // instance of authservice and accessing user in it
        initialData: null,
        child: ChangeNotifierProvider(
          create: (context) => GoogleSignInProvider(),
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            initialRoute: '/wrapper',
            routes: {
              '/': (context) => const Splash(),
              '/diary': (context) => const Diary(),
              '/diseases': (context) => const Diseases(),
              '/steptrackerpage': (context) => const StepTrackerPage(),
              '/workoutspage': (context) => const WorkoutsPage(),
              '/meditationpage': (context) => const MeditationPage(),
              '/introscreen': (context) => IntroScreen(),
              '/wrapper': (context) => const Wrapper(),
              '/homepage': (context) => const HomePage(),
              '/nhsform': (context) => const NHSForm(),
              '/inputpagebmi': (context) => const InputPageBmi(),
              '/profilepage': (context) => ProfilePage(),
              '/forgotpassword': (context) => const ForgotPassword(),
              '/verifyemail': (context) => const VerifyEmail(),
            },
          ),
        ));
  }
}
