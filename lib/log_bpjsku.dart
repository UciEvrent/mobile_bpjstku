import 'package:flutter/material.dart';
import 'package:mobile_bpjstku/kontak.dart';
import 'package:mobile_bpjstku/layanan.dart';
import 'package:mobile_bpjstku/news.dart';
import 'package:mobile_bpjstku/notifikasi.dart';
import 'package:mobile_bpjstku/profil.dart';

class log_BPJSTKU extends StatelessWidget {
  const log_BPJSTKU({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: mainBPJSTKU(),
    );
  }
}

class mainBPJSTKU extends StatefulWidget {
  const mainBPJSTKU({Key? key}) : super(key: key);

  @override
  _mainBPJSTKUState createState() => _mainBPJSTKUState();
}

class _mainBPJSTKUState extends State<mainBPJSTKU> {
  List<Widget> listScreen = [
    //Text("Layanan", style: TextStyle(fontSize: 30),),
    viewLayanan(),
    newNotification(),
    newNews(),
    kontak(),
    profil(),
  ];

  int currentScreen = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: Text("BPJSTKU")),
      body: listScreen.elementAt(currentScreen),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_repair_service_rounded),label: 'Layanan'),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: 'Notifikasi'),
          BottomNavigationBarItem(icon: Icon(Icons.new_releases_sharp), label: 'Berita'),
          BottomNavigationBarItem(icon: Icon(Icons.contact_phone), label: 'Kontak'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profil'),
        ],
        currentIndex: this.currentScreen,
        selectedItemColor: Colors.amber,
        onTap: (int index){
          setState(() {
            this.currentScreen = index;
          });
        },
      ),
    );
  }
}


