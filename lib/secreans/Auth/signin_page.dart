import 'package:flutter/material.dart';
import 'package:foods/Config/theme/appColor.dart';
import 'package:foods/secreans/widget/custom_text_field.dart';
import 'package:foods/Config/provider/authentication_service.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Wrap(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 85 / 100,
            padding:
                const EdgeInsets.only(left: 16, right: 16, bottom: 32, top: 16),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            child: ListView(
              shrinkWrap: true,
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              physics: const BouncingScrollPhysics(),
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 35 / 100,
                    margin: const EdgeInsets.only(bottom: 20),
                    height: 6,
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
                // header
                Container(
                  margin: const EdgeInsets.only(bottom: 24),
                  child: const Text(
                    'Login',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'inter'),
                  ),
                ),
                // Form
                CustomTextField(
                  title: 'Email',
                  hint: 'youremail@email.com',
                  controller: emailController,
                  margin: const EdgeInsets.all(0),
                  padding: const EdgeInsets.all(0),
                ),
                CustomTextField(
                    controller: passwordController,
                    title: 'Password',
                    hint: '**********',
                    obsecureText: true,
                    padding: const EdgeInsets.all(0),
                    margin: const EdgeInsets.only(top: 16)),
                // Log in Button
                Container(
                  margin: const EdgeInsets.only(top: 32, bottom: 6),
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {
                      context.read<AuthenticationService>().signIn(
                            email: emailController.text.trim(),
                            password: passwordController.text.trim(),
                          );
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      primary: AppColor.primarySoft,
                    ),
                    child: Text('Login',
                        style: TextStyle(
                            color: AppColor.secondaryOne,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'inter')),
                  ),
                ),

                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                  ),
                  child: RichText(
                    text: TextSpan(
                      text: 'Forgot your password? ',
                      style: const TextStyle(color: Colors.grey),
                      children: [
                        TextSpan(
                            style: TextStyle(
                              color: AppColor.primary,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'inter',
                            ),
                            text: 'Reset')
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
