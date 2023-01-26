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
      title: 'Registration',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Registration'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Form(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                decoration: InputDecoration(
                    icon: Icon(Icons.person),
                    hintText: 'Enter Your First Name',
                    border: OutlineInputBorder(),
                    label: Text('First Name')),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                decoration: InputDecoration(
                    icon: Icon(Icons.person),
                    hintText: 'Enter Your Last Name',
                    border: OutlineInputBorder(),
                    label: Text('Last Name')),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                decoration: InputDecoration(
                    icon: Icon(Icons.email),
                    hintText: 'Enter Your Email Address',
                    border: OutlineInputBorder(),
                    label: Text('Email')),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    icon: Icon(Icons.password),
                    hintText: 'Enter Your Password',
                    border: OutlineInputBorder(),
                    label: Text('Password')),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  icon: Icon(Icons.password),
                  hintText: 'Enter Your Re-Password',
                  border: OutlineInputBorder(),
                  label: Text('Re-Password'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextButton(
                style: ButtonStyle(),
                onPressed: () {},
                child: Text('Sign up'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextButton(
                style: ButtonStyle(),
                onPressed: () {},
                child: Text('Reset'),
              ),
            ),
          ],
        ),
      ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
