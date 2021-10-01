import 'dart:html';

import 'package:mobile_bpjstku/log_bpjsku.dart';
import 'package:flutter/material.dart';

class login extends StatelessWidget {
  const login({Key? key}) : super(key: key);

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
              Container(
                width: 300,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "NAMA PENGGUNA",
                  ),

                ),
              ),
              Container(
                width: 300,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "KATA SANDI",
                  ),

                ),
              ),

              SizedBox(
                height: 20,
              ),

              Container(
                width: 300,
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => log_BPJSTKU()));
                  },
                  child: Text("Login"),
                  color: Colors.blue,

                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Lupa Kata Sandi"),
                  Text("Daftar Akun"),
                ],
              ),
            ],
          ),
        )
    );
  }
}