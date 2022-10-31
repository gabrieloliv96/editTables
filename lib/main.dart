import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
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
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  List<String> entries = <String>['A', 'B', 'C', 'A', 'B', 'C', 'A', 'B', 'C'];
  List<int> colorCodes = <int>[600, 500, 100, 600, 500, 100, 600, 500, 100];

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Row(
        children: [
          Column(
            children: [
              Flexible(
                child: ListView.builder(
                  padding: const EdgeInsets.all(8),
                  itemCount: entries.length,
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      // height: 50,
                      margin: EdgeInsets.all(15.0),
                      color: Colors.amber[colorCodes[index]],
                      child: ListTile(
                        title: Text(
                          'Entry ${entries[index]}',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 25),
                        ),
                        // onTap: _editNumber,
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
          Column(
            children: [
              Flexible(
                child: ListView.builder(
                  padding: const EdgeInsets.all(8),
                  itemCount: entries.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      // height: 50,
                      margin: EdgeInsets.all(15.0),
                      color: Colors.amber[colorCodes[index]],
                      child: ListTile(
                        title: Text(
                          'Entry ${entries[index]}',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 25),
                        ),
                        // onTap: _editNumber,
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
