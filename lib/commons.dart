import 'package:flutter/material.dart';
import 'package:gmail_clone_v2/pages/composePage.dart';
import 'package:gmail_clone_v2/pages/data.dart';
import 'package:gmail_clone_v2/pages/homePage.dart';
import 'package:scratcher/scratcher.dart';

AppBar commonAppBar(
  BuildContext context,
) {
  return AppBar(
    title: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          child: Image.asset(
            "images/mail_in_v2.jpg",
            height: 30,
            fit: BoxFit.fitHeight,
          ),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomePage()));
            print("mail.in in AppBar");
          },
        ),
      ],
    ),
    centerTitle: true,
    surfaceTintColor: Colors.white,
    backgroundColor: Colors.white,
    actions: [
      GestureDetector(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Icon(Icons.account_circle_outlined),
        ),
        onTap: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return Dialog(
                    backgroundColor: Colors.transparent,
                    child: Stack(children: [
                      Container(
                        height: 400,
                        width: 300,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ClipOval(
                              child: Scratcher(
                                brushSize: 45,
                                image:
                                    Image.asset("images/profile_picture.jpg"),
                                child: ClipOval(
                                    child: Image.asset(
                                  "images/qr_code.png",
                                )),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: 50,
                              width: 250,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Shubham R Pandya",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 20,
                                          letterSpacing: 1),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ]));
              });
          print("Profile in AppBar");
        },
      ),
    ],
  );
}

Drawer common_drawer(BuildContext context) {
  return Drawer(
    child: Column(
      children: [
        const UserAccountsDrawerHeader(
          accountName: Text(
            "Shubham Pandya",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              letterSpacing: 1,
            ),
          ),
          accountEmail: Text("user.shubham16@gmail.com"),
          currentAccountPicture: CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(Icons.account_circle_rounded),
            foregroundColor: Color.fromARGB(255, 44, 83, 100),
          ),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 15, 32, 39),
                Color.fromARGB(225, 32, 58, 67),
                Color.fromARGB(255, 44, 82, 99),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        Expanded(
            child: ListView.builder(
                itemCount: drawer_names.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text(drawer_names[index % drawer_names.length]),
                    leading: Icon(drawer_icons[index % drawer_icons.length]),
                    onTap: () {},
                  );
                })),
        Divider(),
        ListTile(
          leading: GestureDetector(
            child: Text("by Shubham"),
            onTap: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return Dialog(
                        backgroundColor: Colors.transparent,
                        child: Container(
                          decoration: BoxDecoration(color: Colors.transparent),
                          child: Image.asset("images/mail_in_v2.jpg"),
                        ));
                  });
              print("by Shubham in AppBar");
            },
          ),
          trailing: GestureDetector(
            child: Icon(Icons.settings),
            onTap: () {
              print("Settings in Drawer");
            },
          ),
        )
      ],
    ),
  );
}

FloatingActionButton common_composeButton(BuildContext context) {
  return FloatingActionButton.extended(
      backgroundColor: Color.fromARGB(255, 44, 83, 100),
      icon: Icon(
        Icons.IconDatacreate,
        color: Colors.white,
      ),
      label: Text(
        "Compose",
        style: TextStyle(color: Colors.white),
      ),
      onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => composePage(
                  quickMailto: "",
                )));
      });
}

SingleChildScrollView searchBar() {
  return SingleChildScrollView(
    keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
    child: Container(
      margin: EdgeInsets.only(top: 15, right: 25, left: 25, bottom: 15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.25),
              blurRadius: 14,
              spreadRadius: 0,
            ),
          ],
          color: Colors.transparent),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          contentPadding: EdgeInsets.all(15),
          hintText: "Search",
          hintStyle: TextStyle(color: Colors.grey),
          prefixIcon: Padding(
            padding: EdgeInsets.all(12.0),
            child: Icon(
              Icons.search,
              color: Color.fromARGB(255, 32, 58, 67),
            ),
          ),
          suffixIcon: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.all(12.0),
                child: Icon(
                  Icons.filter_list,
                  color: Color.fromARGB(255, 32, 58, 67),
                ),
              ),
            ],
          ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: BorderSide.none),
        ),
      ),
    ),
  );
}

bool click = false;
