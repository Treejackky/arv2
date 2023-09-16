// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:arcorev2/widget/custom_padding.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text('Home'),
          centerTitle: true,
          actions: [
            IconButton(
              icon: Icon(Icons.logout),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/');
              },
            ),
          ],
          leading: Icon(Icons.flag),
        ),
        body: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: PaddingWidget(
            child: Column(
              children: [
                //card text
                Card(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: MediaQuery.of(context).size.height * 0.2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.now_widgets_outlined,
                            size: MediaQuery.of(context).size.height * 0.08),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.03),
                        Text(
                          'ผนัง',
                          style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.height * 0.025,
                            color: Color.fromRGBO(152, 149, 165, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: MediaQuery.of(context).size.height * 0.2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.my_library_add_rounded,
                            size: MediaQuery.of(context).size.height * 0.08),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.03),
                        Text(
                          'พื้น',
                          style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.height * 0.025,
                            color: Color.fromRGBO(152, 149, 165, 1),
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
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'ประวัติการวัด',
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.camera_alt),
              label: 'วัดขนาด',
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: 'ข้อมูลเพิ่มเติม',
              backgroundColor: Colors.blue,
            ),
          ],
        ));
  }
}
