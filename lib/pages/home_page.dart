import 'package:flutter/material.dart';
import 'package:web_demo/pages/profile_page.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentTan = 0;
  final List<Widget> screens = [
    Profile(),
    Profile(),
    Profile(),
    Profile(),
  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Profile();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, snapshot) {
        return PageStorage(
          child: currentScreen,
          bucket: bucket,
        );
      }),
      floatingActionButton:
          FloatingActionButton(onPressed: () {}, child: Icon(Icons.add)),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = Profile();
                        currentTan = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.dashboard,
                            color: currentTan == 0 ? Colors.blue : Colors.grey),
                        Text(
                          'Profile',
                          style: TextStyle(
                              color:
                                  currentTan == 0 ? Colors.blue : Colors.grey),
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = Profile();
                        currentTan = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.dashboard,
                            color: currentTan == 0 ? Colors.blue : Colors.grey),
                        Text(
                          'Profile',
                          style: TextStyle(
                              color:
                                  currentTan == 0 ? Colors.blue : Colors.grey),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = Profile();
                        currentTan = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.dashboard,
                            color: currentTan == 0 ? Colors.blue : Colors.grey),
                        Text(
                          'Profile',
                          style: TextStyle(
                              color:
                                  currentTan == 0 ? Colors.blue : Colors.grey),
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = Profile();
                        currentTan = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.settings, color: Colors.grey),
                        Text(
                          'Setting',
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
