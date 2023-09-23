import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Create Account',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Details to Create Account'),
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

  List<Widget> _widgetOpt = [
    Column(
      children: [
        Text('Index 0:Home'),
        Padding(padding: EdgeInsets.all(20),
        child: TextFormField(
          decoration: InputDecoration(
            labelText: 'First Name',
          ),
        ),

        )

      ],
    ),
    Column(
      children: [
        Text('Index 1:Bussiness'),
        Padding(padding: EdgeInsets.all(20),
          child: TextFormField(
            decoration: InputDecoration(
              labelText: 'E-Mail',
            ),
          ),

        )
      ],
    ),
    Column(
      children: [
        Text('Index 2:School'),
        Padding(padding: EdgeInsets.all(20),
          child: TextFormField(
            decoration: InputDecoration(
              labelText: 'Password',
            ),
          ),

        )
      ],
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;

    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: _widgetOpt.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.business), label: 'Business'),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: 'School'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
