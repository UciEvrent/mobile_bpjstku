import 'package:flutter/material.dart';

class kontak extends StatelessWidget {
  const kontak({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child:
        Column(
          children: [
            Positioned(
                child:Image.asset("assets/images/img_custumer_care.jpeg") ),
                Text("Layanan Masyarakat"),
            Positioned(
                child:Image.asset("assets/images/img_ask_bpjs.jpeg") ),
            Positioned(
                child:Image.asset("assets/icons/icon_whatsapp.jpeg") ),
                Text("Whatsapp"),
                Text("+02 811 - 9115910"),
                Text("Layanan Whatsapp hanya untuk Pekerja Migran Indonesia di Luar Negeri"),
                Text("Layanan Masyarakat BPJS Ketenagakerjaan melayani anda mulai pukul 06.00 hingga pukul 22.00 WIB"),
          ],
        ),

      ),
    );
  }
}
