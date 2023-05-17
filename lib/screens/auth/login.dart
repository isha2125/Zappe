import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:zappe/screens/auth/signup.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Positioned(
          top: -10,
          bottom: -10,
          left: -10,
          right: -10,
          child: SvgPicture.asset(
            "assets/background.svg",
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
        ),
        const Positioned(
          top: 170,
          left: 40,
          child: Text(
            'LOG IN',
            style: TextStyle(
              color: Colors.white,
              fontSize: 42,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          alignment: Alignment.center,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: Container(
              height: 390,
              width: 350,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.55),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Stack(children: <Widget>[
                Positioned(
                  top: 15,
                  left: 120,
                  child: Image.asset(
                    "assets/Zappe_logo.png",
                    height: 39,
                    width: 88,
                  ),
                ),
                Positioned(
                    top: 110,
                    left: 30,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      width: 285,
                      height: 35,
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'phone no/email id',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: BorderSide.none,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: BorderSide.none,
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 20.0),
                        ),
                      ),
                    )),
                Positioned(
                    top: 160,
                    left: 30,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      width: 285,
                      height: 35,
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'password',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: BorderSide.none,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: BorderSide.none,
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 20.0),
                        ),
                      ),
                    )),
                Positioned(
                  top: 260,
                  left: 159,
                  child: MaterialButton(
                    onPressed: () {
                      Get.toNamed('/location');
                    },
                    color: const Color.fromARGB(255, 69, 131, 154),
                    textColor: Colors.white,
                    padding:
                        const EdgeInsets.symmetric(vertical: 9, horizontal: 60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const Text(
                      'Login',
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                ),
                Positioned(
                  top: 260,
                  left: 10,
                  child: MaterialButton(
                    onPressed: () {},
                    color: Colors.white,
                    textColor: Colors.blue,
                    padding: const EdgeInsets.all(7.5),
                    shape: const CircleBorder(),
                    child: Image.asset(
                      'assets/g_logo.png',
                      height: 27.5,
                    ),
                  ),
                ),
                Positioned(
                  top: 260,
                  left: 70,
                  child: MaterialButton(
                    onPressed: () {},
                    color: Colors.white,
                    textColor: Colors.blue,
                    padding: const EdgeInsets.all(7.5),
                    shape: const CircleBorder(),
                    child: Image.asset(
                      'assets/apple_logo.png',
                      height: 27.5,
                    ),
                  ),
                ),
                Positioned(
                    top: 210,
                    left: 70,
                    child: Row(
                      children: [
                        const Text(
                          'Forgot password ?',
                          style: TextStyle(
                            fontSize: 14.0,
                          ),
                        ),
                        const SizedBox(width: 5.0),
                        TextButton(
                          onPressed: () {
                            // Forgot Password functionality
                          },
                          child: const Text(
                            'Click Here',
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      ],
                    )),
                Positioned(
                  top: 320,
                  left: 90,
                  child: Row(children: [
                    const Text(
                      'New to Zappe ?',
                      style: TextStyle(
                        fontSize: 14.0,
                      ),
                    ),
                    const SizedBox(width: 5.0),
                    TextButton(
                      onPressed: () {
                        Get.offAll(const Signup());
                        // Forgot Password functionality
                      },
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ]),
                )
              ]),
            ),
          ),
        ),
      ],
    ));
  }
}
