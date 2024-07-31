import 'package:flutter/material.dart';
import 'package:gmail_clone_v2/pages/entrypage.dart';
import 'package:gmail_clone_v2/pages/homePage.dart';

class logInPage extends StatefulWidget {
  const logInPage({super.key});

  @override
  State<logInPage> createState() => _logInPageState();
}

class _logInPageState extends State<logInPage> {
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
          "Log In",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w300),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height,
          ),
          child: IntrinsicHeight(
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 45,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Hello! \nWelcome \nBack.",
                        style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 30,
                            color: Color.fromARGB(255, 29, 53, 64)),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20, bottom: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 35,
                        ),
                        TextField(
                          decoration: InputDecoration(
                            prefixIconColor: Colors.grey.shade500,
                            prefixIcon: Icon(
                              Icons.mail_lock_outlined,
                            ),
                            hintText: "@mail.in",
                            labelText: 'Email-ID',
                            labelStyle: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.grey.shade500),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                                borderRadius: BorderRadius.circular(12)),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Divider(
                                  endIndent: 10,
                                  indent: 10,
                                  thickness: 0.5,
                                  color: Color.fromARGB(255, 44, 83, 100)),
                            ),
                            Text(
                              "OR",
                              style: TextStyle(
                                  fontSize: 12,
                                  letterSpacing: 1.5,
                                  fontWeight: FontWeight.w900,
                                  color: Color.fromARGB(255, 44, 83, 100)),
                            ),
                            Expanded(
                              child: Divider(
                                  endIndent: 10,
                                  indent: 10,
                                  thickness: 0.5,
                                  color: Color.fromARGB(255, 44, 83, 100)),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        TextField(
                          decoration: InputDecoration(
                            prefixIconColor: Colors.grey.shade500,
                            prefixIcon: Icon(Icons.call_outlined),
                            hintText: "+91 XXXXX-XXXX",
                            labelText: 'Phone Number',
                            labelStyle: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.grey.shade500),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                                borderRadius: BorderRadius.circular(12)),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 22,
                        ),
                        TextField(
                          obscureText: true,
                          obscuringCharacter: "●",
                          decoration: InputDecoration(
                            prefixIconColor: Colors.grey.shade500,
                            prefixIcon: Icon(Icons.alternate_email),
                            labelText: 'Password',
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
                        SizedBox(
                          height: 30,
                        ),
                        GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomePage()));
                            },
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
                                  "LOG IN",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 13,
                                      color: Color.fromARGB(225, 44, 83, 100),
                                      letterSpacing: 3),
                                ))),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
