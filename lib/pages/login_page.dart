import 'package:flutter/material.dart';
import 'package:prm_project_kittoo/components/my_button.dart';
import 'package:prm_project_kittoo/components/my_textfield.dart';
import 'package:prm_project_kittoo/components/square_tile.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  //text editing
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  //sign user
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        resizeToAvoidBottomInset: false,
        body: Container(
          padding: const EdgeInsets.fromLTRB(45, 0, 45, 10),
          child: SafeArea(
              child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 10),

                //logo
                Image.asset(
                  'lib/images/logo.png',
                  height: 200,
                ),

                const SizedBox(height: 10),

                Text(
                  'Welcome back you\'ve been missed!',
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 16,
                  ),
                ),

                const SizedBox(height: 20),

                //username textfield
                MyTextField(
                    controller: usernameController,
                    hintText: 'Username',
                    obscureText: false),

                const SizedBox(height: 10),

                //password texfield
                MyTextField(
                    controller: passwordController,
                    hintText: 'Password',
                    obscureText: true),

                const SizedBox(height: 10),

                //Forgot password
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Forgot Password?',
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 15),

                MyButton(
                  text: "Sign n",
                  onTap: signUserIn,
                ),

                const SizedBox(height: 15),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          'Or',
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 15),

                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade400),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SquareTile(imagePath: 'lib/images/google.png'),
                      Text(
                        'Login with Google',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 25),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Not a member?',
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                    const SizedBox(width: 4),
                    const Text(
                      'Register now',
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold),
                    ),
                  ],
                )
              ],
            ),
          )),
        ));
  }
}
