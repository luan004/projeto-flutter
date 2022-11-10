import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const MyHomePage(title: 'Aplicativo Flutter'),
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

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  final avatar = const CircleAvatar(
    backgroundImage: NetworkImage(
        'https://365webresources.com/wp-content/uploads/2016/09/FREE-PROFILE-AVATARS.png'),
    radius: 150,
  );

  final nome = const Text(
    'Nome',
    style: TextStyle(fontSize: 30),
    textAlign: TextAlign.center,
  );

  final botaoTelefone = IconButton(
    onPressed: () {
      launchUrl(Uri(scheme: 'tel', path: '99999-9999'));
    },
    icon: const Icon(Icons.phone),
    color: Colors.green,
  );

  final botaoEmail = IconButton(
    onPressed: () {
      launchUrl(Uri(scheme: 'mailto', path: 'example@gmail.com'));
    },
    icon: const Icon(Icons.mail),
    color: Colors.green,
  );

  final botaoSMS = IconButton(
    onPressed: () {
      launchUrl(Uri(scheme: 'sms', path: '99999-9999'));
    },
    icon: const Icon(Icons.sms),
    color: Colors.green,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text(
          'Curso de Flutter',
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          avatar,
          SizedBox(
            height: 20,
          ),
          nome,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [botaoTelefone, botaoEmail, botaoSMS],
          )
        ],
      ),
    );
  }
}
