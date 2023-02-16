import 'package:flutter/material.dart';
import 'package:prm_project_kittoo/components/my_button.dart';
import 'package:prm_project_kittoo/components/my_textfield.dart';
import 'package:prm_project_kittoo/components/square_tile.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final repasswordController = TextEditingController();
  final fullnameController = TextEditingController();
  final emailController = TextEditingController();

  void signUpUser() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.fromLTRB(45, 10, 45, 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Create an account',
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 5),

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Let’s create your account',
                      style: TextStyle(
                        color: Colors.grey[500],
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 10),

                //password texfield
                MyTextField(
                    controller: usernameController,
                    hintText: 'Enter your username',
                    obscureText: false),

                const SizedBox(height: 10),

                //password texfield
                MyTextField(
                    controller: passwordController,
                    hintText: 'Enter your password',
                    obscureText: true),

                const SizedBox(height: 10),

                //re-password texfield
                MyTextField(
                    controller: repasswordController,
                    hintText: 'Enter your re-password',
                    obscureText: true),

                const SizedBox(height: 10),

                //fullname textfield
                MyTextField(
                    controller: fullnameController,
                    hintText: 'Enter your full name',
                    obscureText: false),

                const SizedBox(height: 10),

                //email textfield
                MyTextField(
                    controller: emailController,
                    hintText: 'Enter your email address',
                    obscureText: false),

                const SizedBox(height: 10),

                MyButton(
                  text: "Sign up",
                  onTap: signUpUser,
                ),

                const SizedBox(height: 10),

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

                const SizedBox(height: 10),

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
                        'Sign up with Google',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 50),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already a member?',
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                    const SizedBox(width: 4),
                    const Text(
                      'Login',
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold),
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
