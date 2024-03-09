import 'package:flutter/material.dart';
import 'package:foods/Config/theme/appColor.dart';

class AuthSecrean extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
      child: Stack(
        children: [
          
          Container(
            width: size.width,
            height: size.height,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/bg.jpg'),
                    fit: BoxFit.cover)),
          ),
          Container(
            padding: EdgeInsets.only(left: 16, right: 16, bottom: 32),
            width: size.width,
            height: size.height,
            decoration: BoxDecoration(gradient: AppColor.bottomGreenShadow),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          bottom: 16, top: size.height * 40 / 100),
                      child: const Text('Hungry?',
                          style: TextStyle(
                              fontFamily: 'inter',
                              fontWeight: FontWeight.w700,
                              fontSize: 32,
                              color: Colors.white)),
                    ),
                    const Text("Help you when you're hungry",
                        style: TextStyle(color: Colors.white)),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Get Started Button
                    SizedBox(
                      width: size.width,
                      height: 60,
                      child: ElevatedButton(
                        onPressed: () {


                            Navigator.pushNamed(context, '/signUp');

                          /* showModalBottomSheet(
                            context: context,
                            backgroundColor: Colors.white,
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20))),
                            isScrollControlled: true,
                            builder: (context) {
                              return RegisterPage();
                            },
                          ); */
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          primary: AppColor.primarySoft,
                        ),
                        child: Text('Get Started',
                            style: TextStyle(
                                color: AppColor.secondaryOne,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'inter')),
                      ),
                    ),
                    const SizedBox(height: 16),
                    // Log in Button
                    SizedBox(
                      width: size.width,
                      height: 60,
                      child: OutlinedButton(
                        onPressed: () {
                            Navigator.pushNamed(context, '/signIn');

                         /*  showModalBottomSheet(
                            context: context,
                            backgroundColor: Colors.white,
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20))),
                            isScrollControlled: true,
                            builder: (context) {
                              return SignInPage();
                            },
                          ); */
                        },
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          side: BorderSide(
                              color: AppColor.secondaryOne.withOpacity(0.5),
                              width: 1),
                          primary: Colors.white,
                        ),
                        child: Text('Log in',
                            style: TextStyle(
                                color: AppColor.secondaryOne,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'inter')),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      margin: EdgeInsets.only(top: 32),
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          text: 'By joining Hungry, you agree to our ',
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.6),
                              height: 150 / 100),
                          children: [
                            TextSpan(
                              text: 'Terms of service ',
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.6),
                                  fontWeight: FontWeight.w700,
                                  height: 150 / 100),
                            ),
                            TextSpan(
                              text: 'and ',
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.6),
                                  height: 150 / 100),
                            ),
                            TextSpan(
                              text: 'Privacy policy.',
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.6),
                                  fontWeight: FontWeight.w700,
                                  height: 150 / 100),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
