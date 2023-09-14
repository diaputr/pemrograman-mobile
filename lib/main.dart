import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text('MyApp'),
            backgroundColor: Colors.red,
          ),
          body: Column(
            children: <Widget>[
              Row(
                children: [
                  Container(
                    width: 230,
                    alignment: Alignment.center,
                    child: TextButton(
                        onPressed: () {}, child: Text('BERITA TERBARU')),
                  ),
                  Container(
                    width: 270,
                    alignment: Alignment.center,
                    child: TextButton(
                        onPressed: () {}, child: Text('PERTANDINGAN HARI INI')),
                  ),
                ],
              ),
              Image.network(
                  'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
              Container(
                padding: const EdgeInsets.all(15),
                child: Text('Costa Mendekat Ke Palmeiras',
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                width: 500,
                height: 50,
                alignment: Alignment.centerLeft,
                color: Color.fromARGB(255, 233, 88, 190),
                child: Text('Transfer', style: TextStyle(color: Colors.white)),
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    width: 200,
                    child: Image.network(
                        'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                  ),
                  Container(
                      padding: const EdgeInsets.all(10),
                      alignment: Alignment.center,
                      child: Text(
                        'Costa siap bermain untuk Palmeiras.',
                      )),
                ],
              ),
              Container(
                padding: const EdgeInsets.all(15),
                color: Colors.grey[350],
                alignment: Alignment.centerLeft,
                child: Text("Malang, 7 September 2023"),
              ),
              /* Container(
                decoration: BoxDecoration(
                  color: const Color(0xff7c94b6),
                  image: const DecorationImage(
                    image: NetworkImage(
                        'https://pixnio.com/free-images/2018/12/02/2018-12-02-19-17-12.jpg'),
                    fit: BoxFit.fitWidth,
                  ),
                  border: Border.all(
                    color: Colors.black,
                    width: 8,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                height: 200,
                width: 300,
              )*/
            ],
          ),
        ));
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
      // TRY THIS: Try changing the color here to a specific color (to
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
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
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
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
