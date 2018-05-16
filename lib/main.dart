import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Cryptobird'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class Contact {
  String username;
  String lastMessage;

  Contact({this.username, this.lastMessage = ""});
}

class _MyHomePageState extends State<MyHomePage> {
  List<ListTile> contacts = [];

  @override
  Widget build(BuildContext context) {
    contacts.add(new ListTile(
      leading: new CircleAvatar(
        child: new Text("Q"),
      ),
      title: new Text("QuantumSheep"),
      subtitle: new Text(
        "Yo bro",
        overflow: TextOverflow.ellipsis,
      ),
    ));

    contacts.add(new ListTile(
      leading: new CircleAvatar(
        child: new Text("T"),
      ),
      title: new Text("Tester"),
      subtitle: new Text(
        "Hi, I'm a tester here, don't worry I just break things for fun!",
        overflow: TextOverflow.ellipsis,
      ),
    ));

    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new ListView(
        children: contacts,
      ),
    );
  }
}
