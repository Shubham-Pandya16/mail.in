import 'package:flutter/material.dart';
import 'package:gmail_clone_v2/pages/entrypage.dart';
import 'package:gmail_clone_v2/pages/homePage.dart';

class signUpPage extends StatefulWidget {
  const signUpPage({super.key});

  @override
  State<signUpPage> createState() => _signUpPageState();
}

class _signUpPageState extends State<signUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => entry_Page()));
          },
          icon: Icon(
            Icons.arrow_back_ios_new,
            size: 20,
            color: Colors.black,
            weight: 0.1,
          ),
        ),
        title: Text(
          "Sign Up",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w300),
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 30),
        color: Colors.transparent,
        child: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 35,
              ),
              Text(
                "Let's create your account",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIconColor: Colors.grey.shade500,
                        prefixIcon: Icon(Icons.person_outlined),
                        labelText: 'First Name',
                        labelStyle: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.grey.shade500),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey, width: 0.5),
                            borderRadius: BorderRadius.circular(12)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                      width: 14), // Add some space between the two text fields
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIconColor: Colors.grey.shade500,
                        prefixIcon: Icon(Icons.person_outlined),
                        labelText: 'Last Name',
                        labelStyle: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.grey.shade500),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey, width: 0.5),
                            borderRadius: BorderRadius.circular(12)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 14,
              ),
              TextField(
                decoration: InputDecoration(
                  prefixIconColor: Colors.grey.shade500,
                  prefixIcon: Icon(Icons.alternate_email),
                  hintText: "@mail.in",
                  labelText: 'Email-ID',
                  labelStyle: TextStyle(
                      fontWeight: FontWeight.w600, color: Colors.grey.shade500),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 0.5),
                      borderRadius: BorderRadius.circular(12)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
              SizedBox(
                height: 14,
              ),
              TextField(
                decoration: InputDecoration(
                  prefixIconColor: Colors.grey.shade500,
                  prefixIcon: Icon(Icons.call_outlined),
                  hintText: "+91 XXXXX-XXXX",
                  labelText: 'Phone Number',
                  labelStyle: TextStyle(
                      fontWeight: FontWeight.w600, color: Colors.grey.shade500),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 0.5),
                      borderRadius: BorderRadius.circular(12)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
              SizedBox(
                height: 14,
              ),
              TextField(
                obscureText: true,
                obscuringCharacter: "●",
                decoration: InputDecoration(
                  prefixIconColor: Colors.grey.shade500,
                  prefixIcon: Icon(
                    Icons.mail_lock_outlined,
                  ),
                  labelText: 'Password',
                  labelStyle: TextStyle(
                      fontWeight: FontWeight.w600, color: Colors.grey.shade500),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 0.5),
                      borderRadius: BorderRadius.circular(12)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
              SizedBox(
                height: 14,
              ),
              TextField(
                obscureText: true,
                obscuringCharacter: "●",
                decoration: InputDecoration(
                  prefixIconColor: Colors.grey.shade500,
                  prefixIcon: Icon(
                    Icons.mail_lock_outlined,
                  ),
                  labelText: 'Confirm Password',
                  labelStyle: TextStyle(
                      fontWeight: FontWeight.w600, color: Colors.grey.shade500),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 0.5),
                      borderRadius: BorderRadius.circular(12)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  child: Container(
                      height: 50,
                      width: double.infinity,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(225, 44, 83, 100),
                        borderRadius: BorderRadius.circular(28),
                      ),
                      child: Text(
                        "CREATE ACCOUNT!",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 13,
                            color: Colors.white,
                            letterSpacing: 3),
                      ))),
            ],
          ),
        ),
      ),
    );
  }
}
