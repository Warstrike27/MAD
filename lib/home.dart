import 'package:flutter/material.dart';
import './main.dart';

class CImages {
  CImages({required this.image});
  String image;
}

// final List<CImages> _CImages = <CImages>[
//   CImages(image: 'assets/images/m1.jpeg'),
//   CImages(image: 'assets/images/m2.jpeg'),
//   CImages(image: 'assets/images/m3.jpeg'),
// ];

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'AppLock',
        home: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.yellow,
              title: const Text('AppLock'),
              leading: Icon(Icons.account_circle_rounded),
              actions: [
                Icon(Icons.more_vert),
              ],
            ),
            body: Stack(
              children: <Widget>[
                Column(
                  verticalDirection: VerticalDirection.down,
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          '     Secure your Applications',
                          style: TextStyle(color: Colors.grey[600]),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Expanded(
                      child: Container(
                        child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: 6,
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                height: 120.0,
                                width: 180.0,
                                child: Card(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          // Image.asset(
                                          //   'assets/images/whatsapp.png',
                                          //   height: 60,
                                          //   width: 60,
                                          // ),
                                          IconButton(
                                              onPressed: () {},
                                              icon: Icon(
                                                Icons.facebook_rounded,
                                                color: Colors.blueAccent,
                                              ))
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text('Facebook'),
                                          SizedBox(
                                            height: 10.0,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: <Widget>[
                                          // Image.asset(
                                          //   'assets/images/applock.png',
                                          //   height: 60,
                                          //   width: 60,
                                          // ),
                                          IconButton(
                                              onPressed: () {},
                                              icon: Icon(
                                                Icons.lock_open,
                                                color: Colors.blue,
                                              ))
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            }),
                      ),
                    )
                  ],
                ),
              ],
            ),
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: 0,
              items: [
                BottomNavigationBarItem(
                    label: 'Lock',
                    icon: Icon(
                      Icons.lock,
                      color: Colors.grey,
                    )),
                BottomNavigationBarItem(
                    label: 'Settings',
                    icon: Icon(
                      Icons.settings,
                      color: Colors.grey,

                    )),
              ],
            ),
          ),
        ));
  }
}

// class MyCard extends StatelessWidget{
//   MyCard({this.icon, this.text});
// }


