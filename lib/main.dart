import 'package:flutter/material.dart';

import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Text('Home Page'),
    Text('Explore Page'),
    Text('Shop Page'),
    Text('Favorites Page'),
    Text('Account Page'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
       body: _selectedIndex == 0 ? HomePage() : SizedBox(),
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
              canvasColor: Colors.black,
              textTheme: Theme.of(context)
                  .textTheme
                  .copyWith(caption: TextStyle(color: Colors.black54))),
          child: BottomNavigationBar(
            backgroundColor: Colors.black,
            items:  <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: ShaderMask(
                  shaderCallback: (Rect bounds) {
                    return LinearGradient(
                      colors: [
                        Colors.greenAccent,
                        Colors.white,
                      ],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      tileMode: TileMode.mirror,
                    ).createShader(bounds);
                  },
                  child: Icon(
                    Icons.credit_card,
                    color: Colors.white,
                  ),
                ),
                label: 'Recharge',
              ),
              BottomNavigationBarItem(
                icon: ShaderMask(
                  shaderCallback: (Rect bounds) {
                    return LinearGradient(
                      colors: [
                        Colors.greenAccent,
                        Colors.white,
                      ],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      tileMode: TileMode.mirror,
                    ).createShader(bounds);
                  },
                  child: Icon(
                    Icons.account_balance_wallet,
                    color: Colors.white,
                  ),
                ),
                label: 'Withdraw',
              ),
              BottomNavigationBarItem(
                icon: ShaderMask(
                  shaderCallback: (Rect bounds) {
                    return LinearGradient(
                      colors: [
                        Colors.greenAccent,
                        Colors.white,
                      ],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      tileMode: TileMode.mirror,
                    ).createShader(bounds);
                  },
                  child: Icon(
                    Icons.swap_horizontal_circle_rounded,
                    color: Colors.white,
                  ),
                ),
                label: 'Swap',
              ),
              BottomNavigationBarItem(
                icon: Transform.rotate(
                  angle: 1,
                  child: ShaderMask(
                    shaderCallback: (Rect bounds) {
                      return LinearGradient(
                        colors: [
                          Colors.greenAccent,
                          Colors.white,
                        ],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        tileMode: TileMode.mirror,
                      ).createShader(bounds);
                    },
                    child: Icon(
                      Icons.ios_share_rounded,
                      color: Colors.white,
                    ),
                  ),
                ),
                label: 'Share',
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.greenAccent,
            unselectedItemColor: Colors.white,
            showUnselectedLabels: true,
            onTap: _onItemTapped,
          ),
        ),
      ),
    );
  }
}
