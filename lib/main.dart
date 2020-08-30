import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/mert.jpeg'),
              ),
              SizedBox(
                height: 30.0,
              ),
              Text(
                'Mert Tezcan',
                style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  fontSize: 35.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'COMPUTER ENGINEERING',
                style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  color: Colors.white,
                  fontSize: 20.0,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'JUNIOR STUDENT',
                style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  color: Colors.white,
                  fontSize: 14.0,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.grey.shade700,
                ),
              ),
              Card(
                color: Colors.grey.shade900,
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                child: ListTile(
                  leading: Icon(
                    MdiIcons.github,
                    color: Colors.white,
                  ),
                  title: Text(
                    '/merttezcan',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                      fontFamily: 'Source Sans Pro',
                    ),
                  ),
                  onTap: () async {
                    if (await canLaunch("https://github.com/merttezcan")) {
                      await launch("https://github.com/merttezcan");
                    }
                  },
                ),
              ),
              Card(
                color: Colors.grey.shade900,
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                child: ListTile(
                  leading: Icon(
                    MdiIcons.linkedin,
                    color: Colors.white,
                  ),
                  title: Text(
                    '/merttezcan',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                      fontFamily: 'Source Sans Pro',
                    ),
                  ),
                  onTap: () async {
                    if (await canLaunch(
                        "https://www.linkedin.com/in/merttezcan/")) {
                      await launch("https://www.linkedin.com/in/merttezcan/");
                    }
                  },
                ),
              ),
              Card(
                color: Colors.grey.shade900,
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                child: ListTile(
                  leading: Icon(
                    MdiIcons.telegram,
                    color: Colors.white,
                  ),
                  title: Text(
                    '@merttezcan',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                      fontFamily: 'Source Sans Pro',
                    ),
                  ),
                  onTap: () async {
                    if (await canLaunch("https://t.me/merttezcan")) {
                      await launch("https://t.me/merttezcan");
                    }
                  },
                ),
              ),
              Card(
                color: Colors.grey.shade900,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.white,
                  ),
                  title: Text(
                    'mert@merttezcan.com',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                      fontFamily: 'Source Sans Pro',
                    ),
                  ),
                  onTap: () async {
                    if (await canLaunch("mailto:mert@merttezcan.com")) {
                      await launch("mailto:mert@merttezcan.com");
                    }
                  },
                ),
              ),
              Card(
                color: Colors.grey.shade900,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.location_on,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Istinye University',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                      fontFamily: 'Source Sans Pro',
                    ),
                  ),
                  onTap: () async {
                    if (await canLaunch(
                        "https://muhendislik.istinye.edu.tr/en")) {
                      await launch("https://muhendislik.istinye.edu.tr/en");
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
