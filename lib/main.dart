// ignore_for_file: prefer_const_constructors

import 'package:arcore_flutter_plugin/arcore_flutter_plugin.dart';
import 'package:arcorev2/view/ar/arcore.dart';
import 'package:arcorev2/view/auth/login.dart';
import 'package:arcorev2/view/home.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  bool isAvailable = await ArCoreController.checkArCoreAvailability();
  bool isInstalled = await ArCoreController.checkIsArCoreInstalled();

  // if (!isAvailable || !isInstalled) {
  //  runApp(ErrorApp());
  //} else {
  runApp(Main());
  //}
}

class Main extends StatelessWidget {
  Main({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    var w = screenWidth * 0.5;
    var h = screenHeight * 0.09;
    ;
    var h1 = screenHeight * 0.04;
    ;
    var r = screenWidth * 0.05;
    return MaterialApp(
      theme: ThemeData(
        //fontcolor

        primarySwatch: Colors.blue,
        // appbar theme
        appBarTheme: AppBarTheme(
          centerTitle: true,
          color: Color.fromRGBO(0, 170, 159, 1),
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.white),
        ),
        // textbutton theme
        textSelectionTheme: TextSelectionThemeData(
          cursorColor: Color.fromRGBO(0, 170, 159, 1),
        ),
        // textfromfield theme
        inputDecorationTheme: InputDecorationTheme(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color.fromRGBO(
                  0, 170, 159, 1), // Set your desired focus color here
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(r),
          ),
          contentPadding: EdgeInsets.symmetric(
            horizontal: w * 0.05,
            vertical: h * 0.05,
          ),
          labelStyle: TextStyle(
            fontSize: h1 * 0.6,
            fontFamily: 'Roboto', // Set the font family to Roboto
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            textStyle: TextStyle(
              fontSize: h1 * 0.9,
              fontFamily: 'Roboto', // Set the font family to Roboto
            ),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: Color.fromRGBO(0, 170, 159, 1),
            onPrimary: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(r),
            ),
            fixedSize: Size(w, h),
            textStyle: TextStyle(
              fontSize: h1 * 0.9,
              fontFamily: 'Roboto', // Set the font family to Roboto
            ),
          ),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => Login(),
        '/home': (context) => Home(),
        '/arcore': (context) => Arcore(),
      },
    );
  }
}

class ErrorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(child: Text("ARCore not available or not installed")),
      ),
    );
  }
}
