import 'package:flutter/material.dart';

class WebView extends StatefulWidget {
  WebView({Key? key}) : super(key: key);

  @override
  State<WebView> createState() => _WebViewState();
}

class _WebViewState extends State<WebView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        buildwebpage(context),
      ],
    ));
  }

  Row buildwebpage(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  height: MediaQuery.of(context).size.height / 1.1,
                  child: Card(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32)),
                    elevation: 5,
                    child: Column(children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text('Koyi'),
                      Divider(
                        thickness: 2,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          decoration:
                              InputDecoration(prefixIcon: Icon(Icons.search)),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('My Profile'),
                      SizedBox(
                        height: 10,
                      ),
                      Text('My Channels'),
                      SizedBox(
                        height: 10,
                      ),
                      Text('My Friends'),
                      SizedBox(
                        height: 10,
                      ),
                      Text('Messages'),
                      SizedBox(
                        height: 10,
                      ),
                      Text('Arcade'),
                      SizedBox(
                        height: 10,
                      ),
                      Text('News'),
                      SizedBox(
                        height: 10,
                      ),
                      Text('Resources'),
                      SizedBox(
                        height: 10,
                      ),
                      Text('Settings'),
                      SizedBox(
                        height: 40,
                      ),
                      Divider(
                        thickness: 2,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Container(
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image: AssetImage('images/user.jpeg'),
                                          fit: BoxFit.fill),
                                      color: Colors.teal.shade600),
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Column(
                              children: [
                                Row(
                                  children: [Text('Muhammad Qasim')],
                                ),
                                Row(
                                  children: [Text('Online')],
                                )
                              ],
                            ),
                          )
                        ],
                      )
                    ]),
                  ),
                ),
              )
            ],
          ),
        ),
        Expanded(
          flex: 3,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 1.1,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Card(
                        elevation: 5,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  children: [
                                    Container(
                                      height: 60,
                                      width: 60,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'images/user.jpeg'),
                                              fit: BoxFit.fill),
                                          color: Colors.teal.shade600),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: 35,
                                        ),
                                        Text('Muhammad Qasim'),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        CircleAvatar(
                                          radius: 8,
                                          backgroundColor: Colors.green,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Icon(Icons.facebook),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Icon(Icons.person),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Icon(Icons.facebook),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Icon(
                                          Icons.person_add,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                            '| Code with Code. | Design with Pakistan ')
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Card(
                        elevation: 5,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                // SizedBox(
                                //   height: 100,
                                // ),
                                Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Text(
                                      'Dummy Data Dummy Data Dummy Data Dummy Data Dummy Data\nDummy Data Dummy Data Dummy Data Dummy\nData Dummy Data Dummy Data'),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 100,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(Icons.send),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(Icons.emoji_emotions),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(Icons.image),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(Icons.voice_chat),
                                SizedBox(
                                  width: 10,
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Icon(Icons.photo_album_outlined),
                                // SizedBox(
                                //   width: 500,
                                // ),
                                MaterialButton(
                                    height: 40,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8)),
                                    color: Colors.blue,
                                    onPressed: () {},
                                    child: Text(
                                      'Ask Post',
                                      style: TextStyle(color: Colors.white),
                                    ))
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Card(
                        elevation: 5,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                Expanded(
                                  child: Container(
                                    height: 120,
                                    width: 100,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image:
                                                AssetImage('images/curly.jpeg'),
                                            fit: BoxFit.fill),
                                        color: Colors.teal.shade600),
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Expanded(
                                  child: Container(
                                    height: 120,
                                    width: 100,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image:
                                                AssetImage('images/user.jpeg'),
                                            fit: BoxFit.fill),
                                        // borderRadius: BorderRadius.circular(8),
                                        color: Colors.teal.shade600),
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Expanded(
                                  child: Container(
                                    height: 120,
                                    width: 100,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image:
                                                AssetImage('images/plane.jpeg'),
                                            fit: BoxFit.fill),
                                        color: Colors.teal.shade600),
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  height: MediaQuery.of(context).size.height / 1.1,
                  child: Card(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32)),
                    elevation: 5,
                    child: Column(children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text('Koyi'),
                      Divider(
                        thickness: 2,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          decoration:
                              InputDecoration(prefixIcon: Icon(Icons.search)),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('My Profile'),
                      SizedBox(
                        height: 10,
                      ),
                      Text('My Channels'),
                      SizedBox(
                        height: 10,
                      ),
                      Text('My Friends'),
                      SizedBox(
                        height: 10,
                      ),
                      Text('Messages'),
                      SizedBox(
                        height: 10,
                      ),
                      Text('Arcade'),
                      SizedBox(
                        height: 10,
                      ),
                      Text('News'),
                      SizedBox(
                        height: 10,
                      ),
                      Text('Resources'),
                      SizedBox(
                        height: 10,
                      ),
                      Text('Settings'),
                      SizedBox(
                        height: 40,
                      ),
                      Divider(
                        thickness: 2,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Container(
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image: AssetImage('images/user.jpeg'),
                                          fit: BoxFit.fill),
                                      color: Colors.teal.shade600),
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Column(
                              children: [
                                Row(
                                  children: [Text('Muhammad Qasim')],
                                ),
                                Row(
                                  children: [Text('Online')],
                                )
                              ],
                            ),
                          )
                        ],
                      )
                    ]),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
