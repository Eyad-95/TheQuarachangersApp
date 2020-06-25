import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const routeName = '/home-page';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context);

    List<Widget> _widgetOptions = <Widget>[
      Column(
        children: <Widget>[
          Container(
            width: media.size.width,
            height: media.size.height * 0.36,
            child: Stack(
              children: <Widget>[
                Container(
                  width: media.size.width,
                  height: media.size.height * 0.32,
                  child: Image.asset(
                    "assets/Hospitals Around/female-GP-online.png",
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  left: media.size.width * 0.225,
                  top: media.size.height * 0.098,
                  child: Container(
                    width: media.size.width * 0.4,
                    height: media.size.height * 0.1,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      ),
                    ),
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: media.size.height * 0.01,
                        ),
                        Text(
                          "How can we",
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Apple',
                            fontSize: 16,
                          ),
                        ),
                        Center(
                          child: Text(
                            "Help you TODAY",
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Apple',
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: media.size.height * 0.29,
                  right: media.size.width * 0.14,
                  child: Center(
                    child: Container(
                      width: media.size.width * 0.68,
                      height: media.size.height * 0.05,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue,
                      ),
                      child: Center(
                        child: Text(
                          "Do a COVID-19 Questionnaire",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: media.size.height * 0.03,
          ),
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    buildCircleAvatar('assets/download.jpg', context,'CATEGORIES'),
                    buildCircleAvatar('assets/Hospitals Around/zby.jpg', context,'HOSPITALS'),
                    buildCircleAvatar('assets/Hospitals Around/medical-doctor.jpg', context,'DOCTORS'),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    buildCircleAvatar('assets/Hospitals Around/download (1).jpg', context,'APPOINTMENTS'),
                    buildCircleAvatar('assets/Hospitals Around/Tableau-Alerts-Feature.jpg', context,'ALERTS'),
                    buildCircleAvatar('assets/Hospitals Around/stethoscope1.jpg', context,'MY PLANS'),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      Text(
        'Index 0: Home',
      ),
      Text(
        'Index 1: Business',
      ),
      Text(
        'Index 2: School',
      ),
      Text(
        'Index 2: School',
      ),
    ];

    return SafeArea(
      child: Scaffold(
        body: _widgetOptions.elementAt(_selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              title: Text(
                'Home',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.local_hospital),
              title: Text(
                'My Health',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today),
              title: Text(
                'My Appts',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.web),
              title: Text(
                'Our Blog',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              title: Text(
                'My Account',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.blue,
          onTap: _onItemTapped,
          unselectedItemColor: Colors.black,
        ),
      ),
    );
  }
}

Widget buildCircleAvatar(String imageURL, BuildContext ctx, String title) {
  return Padding(
    padding: const EdgeInsets.all(12.0),
    child: Column(
      children: <Widget>[
        CircleAvatar(
          radius: MediaQuery.of(ctx).size.width * 0.125,
          backgroundColor: Colors.blue,
          child: CircleAvatar(
            backgroundImage: AssetImage(imageURL),
            radius: MediaQuery.of(ctx).size.width * 0.115,
          ),
        ),
        SizedBox(height: MediaQuery.of(ctx).size.width * 0.001),
        Text(
          title,
          style: TextStyle(
            color: Color.fromRGBO(43, 43, 43, 0.7),
            fontFamily: 'Poppins',
            fontSize: 11,
          ),
        )
      ],
    ),
  );
}


Widget listTileBuild(){
  return ListTile(
    
  );
}
