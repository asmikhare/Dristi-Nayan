import 'package:flutter/material.dart';
import 'package:flutter_tailwindcss_defaults/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dristi_nayan/Screens/Components/drawer_list.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentPageIndex = 0;
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  void openDrawer() {
    scaffoldKey.currentState!.openEndDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: TailwindColors.blue,
        title: Text(
          "Dristi Nayan",
          textAlign: TextAlign.center,
          style: GoogleFonts.firaSans(),
        ),
        centerTitle: true,
        actions: const <Widget>[
          Icon(
            Icons.account_circle,
            size: 32,
          ),
          SizedBox(
            width: 12,
          )
        ],
      ),
      drawer: const Drawer(
          child: Padding(
              padding: EdgeInsets.symmetric(vertical: 8), child: DrawerList())),
      body: <Widget>[
        Container(
          alignment: Alignment.center,
          child: const Text('Page 1'),
        ),
        Container(
          alignment: Alignment.center,
          child: const Text('Page 2'),
        ),
        Container(
          alignment: Alignment.center,
          child: const Text('Page 3'),
        ),
      ][currentPageIndex],
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: TailwindColors.blue,
        selectedIndex: currentPageIndex,
        destinations: [
          NavigationDestination(
              icon: Icon(
                Icons.home_sharp,
                color: TailwindColors.blueGray.shade600,
              ),
              selectedIcon: const Icon(
                Icons.home_sharp,
                color: TailwindColors.white,
              ),
              label: "Home"),
          NavigationDestination(
            icon: Icon(
              Icons.account_circle,
              color: TailwindColors.blueGray.shade600,
            ),
            selectedIcon: const Icon(
              Icons.account_circle,
              color: TailwindColors.white,
            ),
            label: "Account",
          ),
          NavigationDestination(
              icon: Icon(
                Icons.notifications,
                color: TailwindColors.blueGray.shade600,
              ),
              selectedIcon: const Icon(
                Icons.notifications,
                color: TailwindColors.white,
              ),
              label: "Notifications"),
        ],
      ),
    );
  }
}
