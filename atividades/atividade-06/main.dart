import 'package:flutter/material.dart';

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
        primarySwatch: Colors.blue,
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _navigateToDetail() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const DetailPage()),
    );
  }

  void _navigateToAnother(){
    Navigator.push(context,
    MaterialPageRoute(builder: (context) => const AnotherPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              child: Text('Menu'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: const Text('Home'),
              onTap: () {
                Navigator.pop(context); // Fecha o Drawer
              },
            ),
            ListTile(
              title: const Text('Detail'),
              onTap: () {
                Navigator.pop(context); // Fecha o Drawer
                _navigateToDetail(); // Navega para a tela de detalhes
              },
            ),
            ListTile(
              title: const Text('Another'),
              onTap:(){
                Navigator.pop(context);
                _navigateToAnother();
              },
            )
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
class AnotherPage extends StatelessWidget{
  const AnotherPage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Another Page'),
      ),
      body: Center(
        child: const Text(
          'Essa é uma página diferente :)',
          style: TextStyle(fontSize: 24),
        ),
     ),
    );
  }
}
class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Page'),
      ),
      body: Center(
        child: const Text(
          'This is the detail page!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}