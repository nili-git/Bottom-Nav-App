import 'package:flutter/material.dart';
void main()=> runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  title: " Bottom Nav App",
  home: HomePage(),
));
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  List<Widget> meroWidget = <Widget>[

    HamroOption(" Welcome to Home", Color(0xFF3944F7)),
     HamroOption(" Welcome to About",  Color(0xFFB41618)),
      HamroOption("Welcome to Settings", Color(0xFF3DBE29)),
   
  ];

_onItemTap(int index){
setState(() {
  _selectedIndex = index;
});
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff35BDD0),
        title: Text( " Bottom Nav App"),
        leading: Icon(Icons.menu),
      ),
      body: Center(
        child: meroWidget.elementAt(_selectedIndex),

      ),
      
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
           BottomNavigationBarItem(
              icon: Icon(Icons.info),
            label: "About",
           ),
            BottomNavigationBarItem(
               icon: Icon(Icons.settings),
            label: "Settings",
            
            ),
        ],

           currentIndex: _selectedIndex,
            onTap: _onItemTap
      ),
    );
  }
}

class HamroOption extends StatelessWidget {
 final String title;
 final Color color;
 HamroOption(this.title, this.color);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
        ),
        height: 60,
        width: double.infinity,
        child: Center(
          child: Text(title,
           style: TextStyle(fontSize: 30,
           color: Colors.white),
          ),
        ),
      ),
    );
  }
}