import 'package:flutter/material.dart';

class profil extends StatelessWidget {
  const profil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("PROFIL")),
        body: viewProfil(),
      ),
    );
  }
}

class viewProfil extends StatefulWidget {
  const viewProfil({Key? key}) : super(key: key);

  @override
  _viewProfilState createState() => _viewProfilState();
}

class _viewProfilState extends State<viewProfil> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

