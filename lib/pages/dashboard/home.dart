import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:traccoon/pages/dashboard/wallet.dart';
import 'package:traccoon/utils/colors.dart';
import 'home/dashbord.dart';
import 'shedule/shedule.dart';
import 'notification.dart';
import './account/account.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:responsive_navigation_bar/responsive_navigation_bar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => HomePage();
}

class HomePage extends State<Home> {
  var pages = [
    const Dashboard(),
    const Shedule(),
    const Wallet(),
    const Notifications(),
  ];

  int _currentIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    (index) {
      setState(() => _currentIndex = index);
    };
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: whitemodeColor["white"],
        leadingWidth: 150,
        leading: SvgPicture.asset(
          "assets/logo1.svg",
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Account()));
                },
                icon: Icon(
                  Icons.account_circle_outlined,
                  size: 30,
                  color: whitemodeColor["black"],
                )),
          )
        ],
      ),
      bottomNavigationBar: ResponsiveNavigationBar(
      selectedIndex: _currentIndex,
      onTabChange: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
      activeIconColor: whitemodeColor["black"],
      inactiveIconColor: whitemodeColor["black"],
      textStyle:  TextStyle(
        color: whitemodeColor["black"],
        fontWeight: FontWeight.bold,
      ),
      backgroundColor: whitemodeColor["white"],
      navigationBarButtons:  <NavigationBarButton>[
        NavigationBarButton(
          text: 'Home',
          textColor: whitemodeColor["black"],
          icon: Icons.people,
          backgroundGradient: LinearGradient(
            colors: <Color>[
             whitemodeColor["primary"],whitemodeColor["primary"],whitemodeColor["primary"]
              
            ],
          ),
        ),
        NavigationBarButton(
          text: 'Shedule',
          textColor: whitemodeColor["black"],
          icon: Icons.star,
          backgroundGradient: LinearGradient(
            colors: <Color>[whitemodeColor["primary"],whitemodeColor["primary"]],
          ),
        ),
        NavigationBarButton(
          text: 'Wallet',
          icon: Icons.settings,
          textColor: whitemodeColor["black"],
          backgroundGradient: LinearGradient(
            colors: <Color>[whitemodeColor["primary"],whitemodeColor["primary"]],
          ),
        ),
        NavigationBarButton(
          text: 'Notification',
          icon: Icons.settings,
          textColor: whitemodeColor["black"],
          backgroundGradient: LinearGradient(
            colors: <Color>[whitemodeColor["primary"],whitemodeColor["primary"]],
          ),
        ),
      ],
    ),
      body: pages[_currentIndex],
    );
  }
}
  // Widget nbar(context) {
  //   return BottomNavyBar(
  //     selectedIndex: _currentIndex,
  //     onItemSelected: (index) {
  //       setState(() => _currentIndex = index);
  //       _pageController.jumpToPage(index);
  //     },
  //     items: <BottomNavyBarItem>[
  //       BottomNavyBarItem(
  //           title: Text(
  //             'Home',
  //             style: TextStyle(color: whitemodeColor["black"]),
  //           ),
  //           icon: SvgPicture.asset(
  //             "assets/home-location.svg",
  //             color: whitemodeColor["black"],
  //           ),
  //           activeColor: whitemodeColor["primaryshade3"]),
  //       BottomNavyBarItem(
  //           title: Text(,
  //               style: TextStyle(color: whitemodeColor["black"])),
  //           icon: SvgPicture.asset(
  //             "assets/calendar-clock.svg",
  //             color: whitemodeColor["black"],
  //           ),
  //           activeColor: whitemodeColor["primary"]),
  //       BottomNavyBarItem(
  //           title: Text(,
  //               style: TextStyle(color: whitemodeColor["black"])),
  //           icon: SvgPicture.asset(
  //             "assets/wallet.svg",
  //             color: whitemodeColor["black"],
  //           ),
  //           activeColor: whitemodeColor["primary"]),
  //       BottomNavyBarItem(
  //           title: Text(,
  //               style: TextStyle(color: whitemodeColor["black"])),
  //           icon: SvgPicture.asset(
  //             "assets/bell.svg",
  //             color: whitemodeColor["black"],
  //           ),
  //           activeColor: whitemodeColor["primary"]),
  //     ],
  //   );
  // }
