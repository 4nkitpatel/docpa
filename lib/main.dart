import 'package:docpa/colors.dart';
import 'package:docpa/screens/dashboard.dart';
import 'package:docpa/screens/dashboard_2.dart';
import 'package:docpa/screens/googlemap.dart';
import 'package:docpa/screens/location_finder.dart';
import 'package:docpa/screens/notification_body.dart';
import 'package:docpa/screens/onboard/login.dart';
import 'package:docpa/screens/onboard/signup_page.dart';
import 'package:docpa/screens/onboard/welcome.dart';
import 'package:docpa/screens/scheduler.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'docpa',
      defaultTransition: Transition.downToUp,
      transitionDuration: Duration(milliseconds: 500),
      theme: ThemeData(
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Colors.white),
          bodyText2: TextStyle(),
        ),
        primaryColor: Coolors.bgColorT,
        accentColor: Coolors.appBar,
        unselectedWidgetColor: Colors.white,
      ),
      home: WelcomePage(),
      // initialRoute: '/',
      getPages: [
        // GetPage(name: '/', page: () => WelcomePage()),
        GetPage(name: '/signup', page: () => SignUpPage()),
        GetPage(name: '/login', page: () => LoginPage()),
        // GetPage(name: '/expenditure', page: () => ExpenditurePage()),
        GetPage(name: '/dashboard', page: () => DashboardPage()),
        GetPage(name: '/dashboard_2', page: () => HomePage()),
        GetPage(name: '/location', page: () => NearLocation()),
        GetPage(name: '/scheduler', page: () => SchedulerPage()),
        GetPage(name: '/googlemap', page: () => GoogleMapScreen()),
        GetPage(name: '/notification', page: () => NotificationBody()),
        // GetPage(name: '/advice', page: () => AdvicePage()),
        // GetPage(name: '/patientDetails', page: () => PatientDetailsPage()),
        // GetPage(name: '/symptoms', page: () => SymptomsPage()),
        // GetPage(
        //     name: '/expenditureDetails', page: () => ExpenditureDetailsPage()),
        // GetPage(name: '/patients', page: () => PatientsPage()),
        // GetPage(
        //   name: '/schedule',
        //   page: () => SchedulePage(),
        //   transitionDuration: Duration(milliseconds: 500),
        //   transition: Transition.rightToLeft,
        // )
      ],
      // routes: {
      //   '/signup': (context) => SignUpPage(),
      //   '/login': (context) => LoginPage(),
      //   '/firstvisit': (context) => FirstVisit(),
      //   '/expenditure': (context) => ExpenditurePage(),
      //   '/dashboard': (context) => DashboardPage(),
      //   '/advice': (context) => AdvicePage(),
      //   '/patientDetails': (context) => PatientDetailsPage(),
      //   '/symptoms': (context) => SymptomsPage(),
      //   '/expenditureDetails': (context) => ExpenditureDetailsPage(),
      //   '/patients': (context) => PatientsPage(),
      //   '/schedule': (context) => SchedulePage(),
      // },
    );
  }
}
