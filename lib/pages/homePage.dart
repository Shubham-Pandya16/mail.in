import 'package:flutter/material.dart';
import 'package:gmail_clone_v2/commons.dart';
import 'package:gmail_clone_v2/pages/composePage.dart';
import 'package:gmail_clone_v2/pages/data.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: commonAppBar(context),
      drawer: common_drawer(context),
      body: SingleChildScrollView(
          child: Column(
        children: [
          searchBar(),
          quickMails(),
          Divider(
            endIndent: 25,
            indent: 25,
            color: Color.fromARGB(220, 32, 58, 67),
          ),
          emailList()
        ],
      )),
      floatingActionButton: common_composeButton(context),
    );
  }
}

bool click = false;

Widget quickMails() {
  return Padding(
    padding: const EdgeInsets.only(left: 10, right: 10, top: 15, bottom: 15),
    child: Container(
        height: 140,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: 25,
          separatorBuilder: (BuildContext context, int index) => Container(
            width: 25,
            color: Colors.transparent,
          ),
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => composePage(
                          quickMailto: quickNames[index % quickNames.length],
                        )));

                print(quickNames[index]);
              },
              child: Container(
                width: 120,
                decoration: BoxDecoration(
                    color: profileColors[index % profileColors.length]
                        .withOpacity(0.6),
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                        color: Color.fromARGB(255, 32, 58, 67), width: 1)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        border:
                            Border.all(color: Colors.grey.shade300, width: 1.5),
                      ),
                      child: ClipOval(
                          child: Center(
                              child: Text(
                        quickInitials[index % quickInitials.length],
                        style: TextStyle(
                            fontSize: 18,
                            color: Color.fromARGB(255, 32, 58, 67),
                            fontWeight: FontWeight.w300),
                      ))),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        quickNames[index % quickNames.length],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          wordSpacing: 105,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        )),
  );
}

Widget email_List() {
  return Container(
    child: ListView.builder(
        itemCount: email_ids.length,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(
              email_ids[index % email_ids.length],
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            subtitle: Text(
              email_subjects[index % email_subjects.length],
              style: TextStyle(fontWeight: FontWeight.w400),
            ),
            trailing: GestureDetector(
              child: Icon(Icons.star_border_sharp),
              onTap: () {},
            ),
            leading: Padding(
              padding: const EdgeInsets.only(right: 5),
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: profileColors[index % profileColors.length]
                      .withOpacity(0.5),
                  border: Border.all(color: Colors.black, width: 0.5),
                ),
                child: ClipOval(
                  child: Center(
                    child: Text(
                      email_ids[index][0],
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
              ),
            ),
            onTap: () {},
          );
        }),
  );
}

class emailList extends StatefulWidget {
  emailList({super.key});

  @override
  State<emailList> createState() => _emailListState();
}

class _emailListState extends State<emailList> {
  List<bool> _isStarred =
      List<bool>.generate(email_ids.length, (index) => true);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1000,
      child: ListView.separated(
          itemCount: 20,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(
                email_ids[index % email_ids.length],
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              subtitle: Text(
                email_subjects[index % email_subjects.length],
                style: TextStyle(fontWeight: FontWeight.w400),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              trailing: GestureDetector(
                child: Icon(
                  _isStarred[index] ? Icons.star_border_sharp : Icons.star,
                  color: Color.fromARGB(220, 32, 58, 67),
                ),
                
                onTap: () {
                  setState(() {
                    _isStarred[index] = !_isStarred[index];
                    print(click);
                  });
                },
              ),
              leading: Container(
                height: 60,
                child: CircleAvatar(
                    backgroundColor:
                        profileColors[index % profileColors.length],
                    child: Icon(
                      Icons.people,
                      color: Colors.white,
                      size: 15,
                    )),
              ),
              onTap: () {},
            );
          }, separatorBuilder: (BuildContext context, int index) { return SizedBox(height: 10,); },),
    );
  }
}
