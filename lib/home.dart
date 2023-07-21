// ignore_for_file: must_be_immutable, unused_import

import 'package:flutter/material.dart';
import 'package:myntra_insider/become_insider.dart';

class MyntraInsiderpage extends StatefulWidget {
  const MyntraInsiderpage({super.key, required String title});

  @override
  State<MyntraInsiderpage> createState() => MyntraInsiderpageState();
}

class MyntraInsiderpageState extends State<MyntraInsiderpage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => BecomeInsider()));
          },
          child: Container(
            decoration: BoxDecoration(
                color: Colors.pink.shade600,
                borderRadius: BorderRadius.circular(5.0)),
            child: Center(
              child: Text(
                'CONTINUE SHOPPING',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'Akatab',
                    fontWeight: FontWeight.w800),
              ),
            ),
          ),
        ),
        height: 70.0,
        color: Color.fromARGB(255, 40, 45, 62),
      ),
      backgroundColor: Color.fromARGB(255, 27, 29, 35),
      appBar: AppBar(
        title: Text(
          'MYNTRA INSIDER',
          style: TextStyle(fontSize: 15),
        ),
        leading: Icon(
          Icons.arrow_back_outlined,
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            height: 375,
            width: MediaQuery.of(context).size.width * 1,
            //  decoration: BoxDecoration(color: Colors.white),
            child: Image.asset(
              'assets/images/Kiarawithbackground.png',
              fit: BoxFit.fitWidth,
            ),
          ),
          Container(
            height: 700,
            width: MediaQuery.of(context).size.width * 1,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 27, 29, 35),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 32.0,
                    spreadRadius: 25.0,
                    offset: Offset(0.0, 0.0),
                  )
                ]),
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hi Shobhit,',
                  style: TextStyle(
                      color: Color.fromARGB(
                        255,
                        204,
                        143,
                        51,
                      ),
                      fontSize: 24.0,
                      fontFamily: 'Akatab',
                      fontWeight: FontWeight.w800),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "We're pleased to see your interest in the Insider program.",
                  style: TextStyle(
                    color: Color.fromARGB(
                      255,
                      204,
                      143,
                      51,
                    ),
                    fontSize: 20.0,
                    fontWeight: FontWeight.w800,
                    fontFamily: 'Akatab',
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "You're just a few purchases away from your goal!",
                  style: TextStyle(
                      color: Colors.grey.shade600,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Akatab'),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 60,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "You're Halfway There!",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w800,
                            fontFamily: 'Akatab'),
                      ),
                      SizedBox(width: 90.0),
                      Expanded(
                        child:
                            Image(image: AssetImage('assets/images/step.png')),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    side: BorderSide(
                      color: Colors.blueGrey,
                    ),
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        //  isThreeLine: false,
                        contentPadding: EdgeInsets.symmetric(horizontal: 2.0),
                        tileColor: Color.fromARGB(
                          255,
                          40,
                          45,
                          62,
                        ),
                        leading: Image.asset(
                          'assets/images/crown.png',
                          scale: 30.0,
                        ),
                        title: Text(
                          'Rs1997',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 27.0,
                              fontWeight: FontWeight.w800,
                              fontFamily: 'Akatab'),
                        ),
                        subtitle: Text(
                          "You've spent",
                          style: TextStyle(
                              color: Colors.grey.shade400,
                              fontFamily: 'Akatab'),
                        ),
                        trailing: Text(
                          'Rs 7000 \n     Goal',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                              fontSize: 15.0,
                              fontFamily: 'Akatab'),
                        ),
                      ),
                      SizedBox(
                        height: 1.0,
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 2.0),
                        tileColor: Color.fromARGB(
                          255,
                          40,
                          45,
                          62,
                        ),
                        leading: Image.asset(
                          'assets/images/crown.png',
                          matchTextDirection: true,
                          color: Colors.yellow.shade700,
                          scale: 30.0,
                        ),
                        title: Text(
                          '6/5',
                          style: TextStyle(
                              color: Color.fromARGB(255, 13, 198, 161),
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Akatab'),
                        ),
                        subtitle: Text(
                          "Your Orders",
                          style: TextStyle(
                              color: Colors.grey.shade400,
                              fontFamily: 'Akatab'),
                        ),
                        trailing: Text(
                          '    5   \nGoal',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                              fontSize: 15.0,
                              fontFamily: 'Akatab'),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 50.0,
                ),
                Container(
                    height: 50,
                    width: MediaQuery.of(context).size.height * 1,
                    child: Column(
                      children: [
                        Text(
                          'Note: Recent purchases will only reflect in the goal once the return window is over',
                          style: TextStyle(
                              color: Colors.grey, fontFamily: 'Akatab'),
                        ),
                      ],
                    )),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width * 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                          child: Image.asset(
                        'assets/images/myntra insider.png',
                        scale: 8.0,
                      )),
                      Text(
                        'Fashion Advice | VIP Access | Extra savings',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'Akatab',
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 48.0,
                ),
              ],
            ),
          ),
        ]),
      ),
    ));
  }
}

/*
class ReusableRow extends StatelessWidget {
  String title, value;
  ReusableRow({Key? key, required this.title, required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10, top: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text(title), Text(value)],
          ),
          SizedBox(
            height: 8,
          ),
          Divider(
            thickness: 1,
          )
        ],
      ),
    );
  }
}
*/
