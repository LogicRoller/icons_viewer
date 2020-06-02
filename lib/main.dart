import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Icons Viewer',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Material Design Icons'),
    );
  }
}

class IconMeta {
  final String name;
  final IconData icon;

  const IconMeta({this.name, this.icon});
}

const ICONS = [
  IconMeta(name: 'favorite', icon: Icons.favorite),
  IconMeta(name: 'threed_rotation', icon: Icons.threed_rotation),
  IconMeta(name: 'four_k', icon: Icons.four_k),
  IconMeta(name: 'ac_unit', icon: Icons.ac_unit),
  IconMeta(name: 'access_alarm', icon: Icons.access_alarm),
  IconMeta(name: 'access_alarms', icon: Icons.access_alarms),
  IconMeta(name: 'access_time', icon: Icons.access_time),
  IconMeta(name: 'accessibility', icon: Icons.accessibility),
  IconMeta(name: 'accessibility_new', icon: Icons.accessibility_new),
  IconMeta(name: 'accessible', icon: Icons.accessible),
  IconMeta(name: 'accessible_forward', icon: Icons.accessible_forward),
  IconMeta(name: 'account_balance', icon: Icons.account_balance),
  IconMeta(name: 'account_balance_wallet', icon: Icons.account_balance_wallet),
  IconMeta(name: 'account_box', icon: Icons.account_box),
  IconMeta(name: 'account_circle', icon: Icons.account_circle),

  IconMeta(name: 'adb', icon: Icons.adb),
  IconMeta(name: 'add', icon: Icons.add),
  IconMeta(name: 'add_a_photo', icon: Icons.add_a_photo),
  IconMeta(name: 'add_alarm', icon: Icons.add_alarm),
  IconMeta(name: 'add_alert', icon: Icons.add_alert),
  IconMeta(name: 'add_box', icon: Icons.add_box),
  IconMeta(name: 'add_call', icon: Icons.add_call),
  IconMeta(name: 'add_circle', icon: Icons.add_circle),
  IconMeta(name: 'add_circle_outline', icon: Icons.add_circle_outline),
  IconMeta(name: 'add_comment', icon: Icons.add_comment),
  IconMeta(name: 'add_location', icon: Icons.add_location),
  IconMeta(name: 'add_photo_alternate', icon: Icons.add_photo_alternate),
];

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
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: ListView(children: ICONS.map((icon) {
        return ListTile(
          leading: Icon(icon.icon),
          title: Text(icon.name),

      );
      }).toList(growable: false)),
    );
  }
}
