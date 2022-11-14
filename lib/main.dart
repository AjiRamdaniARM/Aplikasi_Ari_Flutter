import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

_Youtube() async {
  var url =
      Uri.parse("https://www.youtube.com/channel/UCZHCz1m7pBwzDvTe9sC08Yw");
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

_Portofolio() async {
  var url = Uri.parse('https://portofolio-3c1ab.web.app/');
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Akses Ditolak $url';
  }
}

_Gmail() async {
  var url = Uri.parse(
      'mailto:hilmankeren0936@gmail.com?subject=Mail from our Website');
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Akses Ditolak $url';
  }
}

_Tiktok() async {
  var url = Uri.parse('https://www.tiktok.com/@ajiramdani_ari');
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Akses Ditolak $url';
  }
}

_Instagram() async {
  var url = Uri.parse('https://www.instagram.com/ajiramdani_04/');
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Akses Ditolak $url';
  }
}

_Whatsapp() async {
  var url = Uri.parse(
      'https://wa.me/+6289508742700?text=I%27m%20interested%20in%20your%20car%20for%20sale');
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Akses Ditolak $url';
  }
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'AjiRamdani-ARI'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(widget.title),
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            Text(
              'Hello,',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 20),
            ),
            Text(
              'I Am Aji Ramdani',
              style: TextStyle(
                  color: Color.fromARGB(255, 7, 167, 230),
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
            Text(
              'Graphic Designer || UI UX DESIGNER || Web Develover',
              style: TextStyle(color: Colors.white),
            ),
            Container(
                margin: EdgeInsets.all(10),
                width: 200,
                height: 45,
                child: TextButton(
                  style: TextButton.styleFrom(backgroundColor: Colors.blue),
                  onPressed: _Portofolio,
                  child: Text(
                    'BUKA PORTOFOLIO',
                    style: TextStyle(color: Colors.white),
                  ),
                )),
            Image.asset('assets/image/logo.png'),
            Text(
              'Media Sosial Mimin :)',
              style: TextStyle(
                  color: Color.fromARGB(255, 11, 72, 177),
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            Container(
              margin: EdgeInsets.all(10),
              width: 350,
              child: FlatButton(
                textColor: Colors.white,
                height: 60.0,
                color: Colors.cyan,
                onPressed: _Gmail,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.email,
                        color: Colors.white,
                      ),
                    ),
                    Text('Gmail')
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(1.0),
              width: 350,
              child: FlatButton(
                textColor: Colors.white,
                height: 60.0,
                color: Color.fromARGB(255, 212, 0, 159),
                onPressed: _Instagram,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        'assets/image/instagram.png',
                        height: 20,
                      ),
                    ),
                    Text('Instagram')
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              width: 350,
              child: FlatButton(
                textColor: Colors.white,
                height: 60.0,
                color: Color.fromARGB(255, 0, 212, 32),
                onPressed: _Whatsapp,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        'assets/image/whatsapp.png',
                        height: 20,
                      ),
                    ),
                    Text('Whatsapp')
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(1),
              width: 350,
              child: FlatButton(
                textColor: Colors.white,
                height: 60.0,
                color: Color.fromARGB(255, 212, 0, 0),
                onPressed: _Youtube,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        'assets/image/youtube.png',
                        height: 20,
                      ),
                    ),
                    Text('Youtube')
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              width: 350,
              child: FlatButton(
                textColor: Colors.white,
                height: 60.0,
                color: Color.fromARGB(255, 50, 47, 50),
                onPressed: _Tiktok,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        'assets/image/tik-tok.png',
                        height: 20,
                      ),
                    ),
                    Text('Tiktok')
                  ],
                ),
              ),
            ),
            Container(
              child: Text(
                'Terima Kasih !!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.copyright_outlined,
                    color: Colors.white,
                  ),
                  Text(
                    'CopyRight Aji Ramdani',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
