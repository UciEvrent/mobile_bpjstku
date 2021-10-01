import 'package:mobile_bpjstku/login.dart';
import 'package:mobile_bpjstku/new_member.dart';
import 'package:mobile_bpjstku/new_user.dart';
import 'package:flutter/material.dart';
import 'package:mobile_bpjstku/new_user.dart';


class viewHome extends StatelessWidget {
  const viewHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                    child: Image.asset("assets/images/img_splash_header.jpeg")
                )

              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    IconButton(
                      onPressed:(){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => newMember()));
                      },
                      icon: Image.asset("assets/icons/icon_new_member.jpeg"),
                      iconSize: 100,
                    ),
                    Text("Pendaftaran Anggota Baru"),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      onPressed:(){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => newUser()));
                      },
                      icon: Image.asset("assets/icons/icon_new_user.jpeg"),
                      iconSize: 100,
                    ),
                    Text("Pendaftaran Peserta Baru"),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),

            Container(
              width: 300,
              child: FlatButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => login()));
                },
                child: Text("Login"),
                color: Colors.blue,

              ),
            ),
          ],
        ),
      ),




    );
  }
}