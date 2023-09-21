import 'package:chatapp/page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Chatapp());
}

class Chatapp extends StatefulWidget {
  const Chatapp({super.key});

  @override
  State<Chatapp> createState() => _ChatappState();
}

class _ChatappState extends State<Chatapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          actions: [
            Icon(
              Icons.search,
              color: Colors.grey,
            ),
          ],
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Inbox',
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  height: 35,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.green),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Private',
                          style: TextStyle(color: Colors.white),
                        ),
                        CircleAvatar(
                          radius: 12,
                          backgroundColor: Colors.red,
                          child: Text(
                            "16",
                            style: TextStyle(color: Colors.white, fontSize: 8),
                          ),
                        )
                      ]),
                ),
                SizedBox(
                  width: 25,
                ),
                Container(
                  height: 35,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey.shade200),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('Group'),
                        CircleAvatar(
                          radius: 12,
                          backgroundColor: Colors.red,
                          child: Text(
                            '18',
                            style: TextStyle(color: Colors.white, fontSize: 8),
                          ),
                        )
                      ]),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 600,
              child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      child: ListTile(
                          leading: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircleAvatar(
                                radius: 25, child: Image.asset('')),
                          ),
                          trailing: Column(
                            children: [
                              Text(
                                "time",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 8),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              CircleAvatar(
                                radius: 6,
                                backgroundColor: Colors.green,
                                child: Text(
                                  '18',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 8),
                                ),
                              )
                            ],
                          ),
                          title: Column(
                            children: [
                              Text(
                                "Name",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13,
                                    color: Colors.black),
                              ),
                              Text(
                                "description",
                                style: TextStyle(
                                    fontWeight: FontWeight.w100,
                                    fontSize: 10,
                                    color: Colors.blueGrey),
                              ),
                            ],
                          )),
                      // onTap: Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => Chatscreen()))
                    );
                  }),
            ),
          ]),
        ),
      ),
    );
  }
}
