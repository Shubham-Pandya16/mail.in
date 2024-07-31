import 'package:flutter/material.dart';
import 'package:gmail_clone_v2/pages/signup.dart';
import 'package:gmail_clone_v2/pages/login.dart';

class entry_Page extends StatelessWidget {
  const entry_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      margin: EdgeInsets.only(right: 25, left: 25, top: 55, bottom: 25),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: EdgeInsets.only(right: 25, left: 25, top: 50),
                child: Image.asset(
                  "images/mail_in_v2.jpg",
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "WORK • PERSONAL • MAIL",
                style: TextStyle(
                    color: Color.fromARGB(255, 44, 83, 100),
                    letterSpacing: 4.5,
                    fontSize: 14,
                    fontWeight: FontWeight.w300),
              ),
            ],
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => logInPage()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 25, left: 25),
                      child: Container(
                          height: 50,
                          width: double.infinity,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(225, 44, 83, 100),
                            borderRadius: BorderRadius.circular(28),
                          ),
                          child: Text(
                            "LOG IN",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 13,
                                color: Colors.white,
                                letterSpacing: 4),
                          )),
                    )),
                SizedBox(
                  height: 12,
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => signUpPage()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 25, right: 25),
                      child: Container(
                          height: 50,
                          width: double.infinity,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Color.fromARGB(225, 44, 83, 100),
                                width: 2),
                            borderRadius: BorderRadius.circular(28),
                          ),
                          child: Text(
                            "SIGN UP",
                            style: TextStyle(
                                fontWeight: FontWeight.w800,
                                fontSize: 13,
                                color: Color.fromARGB(223, 28, 52, 62),
                                letterSpacing: 3),
                          )),
                    )),
                SizedBox(
                  height: 35,
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
