import 'package:flutter/material.dart';

class newNotification extends StatelessWidget {
  const newNotification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("NOTIFIKASI")),
      ),
      body: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                  child:
                  Center(child: Image.asset("assets/images/img_no_image.png")),

              ),
              Text("Belum ada notifikasi"),

            ],
          ),
        ]
      ),
    );
  }
}
