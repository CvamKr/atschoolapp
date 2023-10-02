import 'package:atschoolapp/presentation/ui/home/home_screen.dart';
import 'package:atschoolapp/presentation/ui/new_attendance/new_attendance_screen.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _currentIndex = 0;

  void _onTabTapped(int index) {
    _currentIndex = index;
    if (_currentIndex == 1) {
      _openBottomModalSheet(context);
    } else {
      // _currentIndex = index;
      setState(() {});
    }
  }

  void _openBottomModalSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
            // height: 200,
            child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Options",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                Spacer(),
                IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                )
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    buildUserAvatar(),
                    Text(
                      "Hall Pass",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    )
                  ],
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);

                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => NewAttendanceScreen()));
                  },
                  child: Row(
                    children: [
                      buildUserAvatar(),
                      Text(
                        "Attendance",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ));
      },
    );
  }

  Padding buildUserAvatar() {
    return Padding(
      padding:
          const EdgeInsets.only(right: 25, left: 15.0, top: 10, bottom: 10),
      child: Container(
        // width: 100,
        // height: 100,

        width: 48,
        height: 48,
        decoration: const ShapeDecoration(
          color: Color(0xFFE6E6E6),
          shape: OvalBorder(),
        ),

        child: Center(child: Image.asset('assets/images/Frame.png')),
      ),
    );
  }

  List<Widget> listPages = [
    HomeScreen(),
    // HomeScreen(),
    Container(),

    // NewAttendanceScreen(),
    Center(
      child: Text("hello world!"),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: listPages[_currentIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(15.0),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15.0),
            topRight: Radius.circular(15.0),
          ),
          child: BottomNavigationBar(
            currentIndex: _currentIndex,
            onTap: _onTabTapped,
            showSelectedLabels: false, // Hide labels for selected item
            showUnselectedLabels: false,
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.grey,
            type: BottomNavigationBarType.fixed,
            iconSize: 36,
            items: [
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/Home.png")),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.add_circle_outline,
                ),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/security.png")),
                label: 'Favorites',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
