import 'package:flutter/material.dart';

class composePage extends StatefulWidget {
  final String? quickMailto;
  const composePage({super.key, this.quickMailto});

  @override
  State<composePage> createState() => _composePageState();
}

class _composePageState extends State<composePage> {
  TextEditingController textEditingController = TextEditingController();

  @override
  void initState() {
    textEditingController.text = widget.quickMailto!;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: composeAppBar(context),
      body: emailBody(),
      bottomNavigationBar: composeBottomBar(),
    );
  }

  Column emailBody() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 15, left: 15, top: 15),
          child: Container(
            child: TextField(
              decoration: InputDecoration(
                hintText: "Enter email ID",
                hintStyle: TextStyle(fontWeight: FontWeight.w200),
                filled: true,
                fillColor: Colors.grey[50],
                labelText: "  From:  ",
                labelStyle: TextStyle(fontWeight: FontWeight.w600),
                suffixIcon: GestureDetector(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Icon(Icons.arrow_drop_down_rounded),
                  ),
                  onTap: () {
                    print("From Suffix Icon");
                  },
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                      color: Color.fromARGB(255, 187, 160, 158), width: 0.5),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(right: 15, left: 15, top: 10, bottom: 7),
          child: Container(
            child: TextField(
              controller: textEditingController,
              decoration: InputDecoration(
                hintText: "Enter email ID",
                hintStyle: TextStyle(fontWeight: FontWeight.w200),
                filled: true,
                fillColor: Colors.grey[50],
                labelText: "  To:  ",
                labelStyle: TextStyle(fontWeight: FontWeight.w600),
                suffixIcon: GestureDetector(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: Icon(Icons.arrow_drop_down_rounded),
                  ),
                  onTap: () {
                    print("To Suffix Icon");
                  },
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                      color: Color.fromARGB(255, 187, 160, 158), width: 0.5),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(),
                ),
              ),
            ),
          ),
        ),
        Divider(
          indent: 50,
          endIndent: 50,
          thickness: 1,
          color: Color.fromARGB(135, 187, 160, 158),
        ),
        Padding(
          padding:
              const EdgeInsets.only(right: 15, left: 15, top: 7, bottom: 10),
          child: Container(
            child: TextField(
                decoration: InputDecoration(
              hintText: "(Optional)",
              hintStyle: TextStyle(fontWeight: FontWeight.w200),
              filled: true,
              fillColor: Colors.grey[50],
              labelText: "  Subject:  ",
              labelStyle: TextStyle(fontWeight: FontWeight.w600),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(
                    color: Color.fromARGB(255, 187, 160, 158), width: 0.5),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(),
              ),
            )),
          ),
        ),
        Divider(
          indent: 25,
          endIndent: 25,
        ),
        Expanded(
          child: Padding(
            padding:
                const EdgeInsets.only(right: 15, left: 15, bottom: 15, top: 15),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Body',
                labelStyle: TextStyle(fontWeight: FontWeight.w600),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                      color: Color.fromARGB(255, 187, 160, 158), width: 0.5),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(),
                ),
              ),
              keyboardType: TextInputType.multiline,
              maxLines: null,
              expands: true,
            ),
          ),
        ),
      ],
    );
  }

  BottomAppBar composeBottomBar() {
    return BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              VerticalDivider(
                indent: 15,
                endIndent: 15,
                width: 5,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.upload_outlined),
                tooltip: "Attach File",
              ),
              VerticalDivider(
                indent: 15,
                endIndent: 15,
                width: 5,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.av_timer_sharp),
                tooltip: "Set Send Time",
              ),
              VerticalDivider(
                indent: 15,
                endIndent: 15,
                width: 5,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              VerticalDivider(),
              FloatingActionButton.extended(
                backgroundColor: Color.fromARGB(255, 44, 83, 100),
                icon: Icon(
                  Icons.send_outlined,
                  color: Colors.white,
                ),
                label: Text(
                  "Send",
                  style: TextStyle(color: Colors.white),
                ),
                extendedIconLabelSpacing: 5,
                tooltip: "Send",
                onPressed: () {},
              ),
            ],
          )
        ],
      ),
    );
  }

  AppBar composeAppBar(BuildContext context) {
    return AppBar(
      title: Text(
        "Compose email",
        style: TextStyle(
          fontWeight: FontWeight.w300,
          letterSpacing: 1,
        ),
      ),
      centerTitle: true,
      leading: IconButton(
        icon: Icon(Icons.arrow_back_ios_rounded),
        onPressed: () {
          Navigator.pop(context);
        },
        tooltip: "Back",
      ),
      backgroundColor: Colors.transparent,
      surfaceTintColor: Colors.transparent,
    );
  }
}
