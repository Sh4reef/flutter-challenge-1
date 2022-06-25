import 'package:flutter/material.dart';
import 'package:flutterchallenge1/components/app_button/app_button.dart';
import 'package:flutterchallenge1/components/app_text_field/app_text_field.dart';
import 'package:flutterchallenge1/screens/login/login.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.green[400],
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        const SizedBox(
          height: 30,
        ),
        const Text('Create Account',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32)),
        const Text('Create a new account'),
        const SizedBox(
          height: 30,
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(children: [
            const AppTextField(
              labelText: 'NAME',
              prefixIcon: Icon(Icons.person_outline),
            ),
            const SizedBox(
              height: 30,
            ),
            const AppTextField(
              labelText: 'EMAIL',
              prefixIcon: Icon(Icons.email_outlined),
            ),
            const SizedBox(
              height: 30,
            ),
            const AppTextField(
                labelText: 'PHONE', prefixIcon: Icon(Icons.phone_iphone)),
            const SizedBox(
              height: 30,
            ),
            const AppTextField(
              labelText: 'PASSWORD',
              obscureText: true,
              prefixIcon: Icon(Icons.lock_outline),
            ),
            const SizedBox(
              height: 30,
            ),
            const AppTextField(
              labelText: 'CONFIRM PASSWORD',
              obscureText: true,
              prefixIcon: Icon(Icons.lock_outline),
            ),
            const SizedBox(
              height: 30,
            ),
            const AppButton(text: 'CREATE ACCOUNT'),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Already have an account?'),
                const SizedBox(width: 5),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => const LoginScreen())));
                    },
                    child: Text('Login',
                        style: TextStyle(
                            color: Colors.green[400],
                            fontWeight: FontWeight.w600)))
              ],
            )
          ]),
        )
      ]),
    );
  }
}
