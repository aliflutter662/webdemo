import 'package:flutter/material.dart';
import 'package:web_demo/pages/webview.dart';

class Profile extends StatefulWidget {
  Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.grey.shade200,
          centerTitle: true,
          title: Row(
            children: [
              Icon(Icons.menu, color: Colors.black),
              SizedBox(
                width: 10,
              ),
              Text('Profile',
                  style: TextStyle(
                    color: Colors.black,
                  ))
            ],
          )),
      body: SingleChildScrollView(
        child: SafeArea(child: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth < 768) {
              return Mobileview();
            } else {
              return buildwebpage(context);
            }
          },
        )),
      ),
    );
  }

  Column Mobileview() {
    return Column(
      children: [
        Stack(
          overflow: Overflow.visible,
          children: [
            Positioned(
              child: Container(
                width: double.infinity,
                height: 230,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        'images/background.jpeg',
                      ),
                      fit: BoxFit.fill),

                  // color: Colors.red,
                  //  borderRadius: BorderRadius.circular(12)
                ),
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 50,
                      ),
                      CircleAvatar(
                        radius: 30,
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(width: 2, color: Colors.white),
                          ),
                        ),
                        backgroundImage: AssetImage('images/user.jpeg'),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'George Floyd',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Column(children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.red,
                              child: Icon(
                                Icons.person,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            CircleAvatar(
                              child: Icon(
                                Icons.edit,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.yellow,
                              child: Icon(
                                Icons.settings,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ])
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 230,
              left: 0,
              right: 0,
              child: Container(
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.video_call)),
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.video_call)),
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.emoji_emotions)),
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.emoji_emotions)),
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.emoji_emotions)),
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.emoji_emotions)),
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.emoji_emotions)),
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.emoji_emotions)),
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.emoji_emotions)),
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.emoji_emotions)),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
                top: 210,
                left: 10,
                right: 10,
                child: Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25),
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(8)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 6),
                      child: Row(
                        children: [
                          TextButton.icon(
                              onPressed: () {},
                              icon: Icon(
                                Icons.star_border_outlined,
                                color: Colors.white,
                              ),
                              label: Text(
                                '1.5k',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              )),
                          SizedBox(
                            width: 10,
                          ),
                          TextButton.icon(
                              onPressed: () {},
                              icon: Icon(
                                Icons.person_add_alt,
                                color: Colors.white,
                              ),
                              label: Text(
                                '223',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              )),
                          SizedBox(
                            width: 10,
                          ),
                          TextButton.icon(
                              onPressed: () {},
                              icon: Icon(
                                Icons.favorite_border_outlined,
                                color: Colors.white,
                              ),
                              label: Text(
                                '665',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              )),
                          SizedBox(
                            width: 10,
                          ),
                          TextButton.icon(
                              onPressed: () {},
                              icon: Icon(
                                Icons.dashboard_customize,
                                color: Colors.white,
                              ),
                              label: Text(
                                '103',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              )),
                        ],
                      ),
                    ),
                  ),
                )),
          ],
        ),
        Container(
          child: Column(
            children: [
              SizedBox(
                height: 120,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 25,
                    width: 5,
                    color: Colors.orange,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Share It',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 35,
                    width: 70,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.blue.shade600),
                    child: Center(
                      child: Icon(
                        Icons.facebook,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    height: 35,
                    width: 70,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.blueAccent.shade700),
                    child: Center(
                      child: Icon(
                        Icons.transfer_within_a_station,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    height: 35,
                    width: 70,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.red.shade600),
                    child: Center(
                      child: Icon(
                        Icons.update_disabled_rounded,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    height: 35,
                    width: 70,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.red.shade600),
                    child: Center(
                      child: Icon(
                        Icons.hotel_sharp,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    height: 35,
                    width: 70,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.teal.shade600),
                    child: Center(
                      child: Icon(
                        Icons.work_outline,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 60,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 25,
                    width: 5,
                    color: Colors.orange,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Pictures',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 260,
                  ),
                  Text(
                    'See All',
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      height: 120,
                      width: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('images/curly.jpeg'),
                              fit: BoxFit.fill),
                          color: Colors.teal.shade600),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      height: 120,
                      width: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('images/user.jpeg'),
                              fit: BoxFit.fill),
                          // borderRadius: BorderRadius.circular(8),
                          color: Colors.teal.shade600),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      height: 120,
                      width: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('images/plane.jpeg'),
                              fit: BoxFit.fill),
                          color: Colors.teal.shade600),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
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
