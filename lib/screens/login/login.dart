import 'package:flutter/material.dart';
import 'package:flutterchallenge1/components/app_button/app_button.dart';
import 'package:flutterchallenge1/components/app_text_field/app_text_field.dart';
import 'package:flutterchallenge1/screens/signup/signup.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.zero,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.grey.shade300, width: 5)),
              child: Icon(
                Icons.person,
                size: 90,
                color: Colors.grey.shade300,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text('Welcome Back',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32)),
            const Text('Sign to continue'),
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
              labelText: 'PASSWORD',
              obscureText: true,
              prefixIcon: Icon(Icons.lock_outlined),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('Forgot Password?',
                    style: TextStyle(color: Colors.green[400]))
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const AppButton(text: 'LOGIN'),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Don\'t have an account?'),
                const SizedBox(width: 5),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignupScreen()));
                    },
                    child: Text('Create a new account',
                        style: TextStyle(
                            color: Colors.green[400],
                            fontWeight: FontWeight.w600)))
              ],
            )
          ],
        ),
      ),
    ));
  }
}
