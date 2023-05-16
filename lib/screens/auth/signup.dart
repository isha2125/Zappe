import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:zappe/screens/auth/login.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

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
            'SIGN UP',
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
              height: 430,
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
                const Positioned(
                    top: 80,
                    left: 30,
                    child: SizedBox(
                      width: 285,
                      height: 30,
                      child: TextField(
                        obscureText: true,
                        cursorColor: Colors.black,
                        cursorHeight: 15,
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            hintStyle: TextStyle(fontSize: 12),
                            hintText: "Name",
                            border: InputBorder.none),
                      ),
                    )),
                const Positioned(
                    top: 130,
                    left: 30,
                    child: SizedBox(
                      width: 285,
                      height: 30,
                      child: TextField(
                        obscureText: true,
                        cursorColor: Colors.black,
                        cursorHeight: 15,
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            hintText: "Phone Number",
                            hintStyle: TextStyle(fontSize: 12),
                            border: InputBorder.none),
                      ),
                    )),
                const Positioned(
                    top: 180,
                    left: 30,
                    child: SizedBox(
                      width: 285,
                      height: 30,
                      child: TextField(
                        obscureText: false,
                        cursorColor: Colors.black,
                        cursorHeight: 15,
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            hintStyle: TextStyle(fontSize: 12),
                            hintText: "E-mail ID",
                            border: InputBorder.none),
                      ),
                    )),
                const Positioned(
                    top: 230,
                    left: 30,
                    child: SizedBox(
                      width: 285,
                      height: 30,
                      child: TextField(
                        obscureText: false,
                        cursorColor: Colors.black,
                        cursorHeight: 15,
                        decoration: InputDecoration(
                            hintStyle: TextStyle(fontSize: 12),
                            filled: true,
                            fillColor: Colors.white,
                            hintText: "Username",
                            border: InputBorder.none),
                      ),
                    )),
                const Positioned(
                    top: 280,
                    left: 30,
                    child: SizedBox(
                      width: 130,
                      height: 30,
                      child: TextField(
                        obscureText: false,
                        cursorColor: Colors.black,
                        cursorHeight: 15,
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 12.5, horizontal: 10),
                            hintStyle: TextStyle(fontSize: 12),
                            hintText: "enter password",
                            border: InputBorder.none),
                      ),
                    )),
                const Positioned(
                    top: 280,
                    left: 185,
                    child: SizedBox(
                      width: 130,
                      height: 30,
                      child: TextField(
                        obscureText: false,
                        cursorColor: Colors.black,
                        cursorHeight: 15,
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 12.5, horizontal: 7.5),
                            hintStyle: TextStyle(fontSize: 12),
                            hintText: "re-enter password",
                            border: InputBorder.none),
                      ),
                    )),
                Positioned(
                  top: 330,
                  left: 159,
                  child: MaterialButton(
                    onPressed: () {},
                    color: const Color.fromARGB(255, 69, 131, 154),
                    textColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                        vertical: 9, horizontal: 52.5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                ),
                Positioned(
                  top: 330,
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
                  top: 330,
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
                  top: 370,
                  left: 60,
                  child: Row(children: [
                    const Text(
                      'Already have an account ?',
                      style: TextStyle(
                        fontSize: 14.0,
                      ),
                    ),
                    const SizedBox(width: 5.0),
                    TextButton(
                      onPressed: () {
                        Get.offAll(const Login());
                        // Forgot Password functionality
                      },
                      child: const Text(
                        'Log In',
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
