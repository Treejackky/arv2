import 'package:arcorev2/widget/custom_padding.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: PaddingWidget(
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      '\nยินดีต้อนรับ\nเข้าสู่ระบบ ICIT ACCOUNT\nโปรดลงชื่อเข้าใช้งาน',
                      style: TextStyle(
                          fontSize:
                              MediaQuery.of(context).size.height * 0.035)),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.09),
                  Text(
                    'ICIT Account',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.025,
                      color: Color.fromRGBO(152, 149, 165, 1),
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  Text(
                    'รหัสผ่าน',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.025,
                      color: Color.fromRGBO(152, 149, 165, 1),
                    ),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                    obscureText: true,
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.1),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/home');
                },
                child: Text('เข้าสู่ระบบ'),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.04),
              TextButton(
                onPressed: () {},
                child: Text('ลืมรหัสผ่าน ICIT ACCOUNT',
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.025)),
              ),
              TextButton(
                onPressed: () {},
                child: Text('เปิดบัญชี ICIT ACCOUNT',
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.025)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
