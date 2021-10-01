import 'package:flutter/material.dart';

class viewLayanan extends StatelessWidget {
  const viewLayanan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("LAYANAN")),
      ),
      body:Column(
        children: [
          Container(
            color: Colors.blue,
            height: 150,
            child: Column(
              children: [
                Center(child: Text("JAMINAN HARI TUA (JHT)")),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset("assets/icons/icon_saldo.PNG",width:100,height: 100),
                    Image.asset("assets/icons/icon_simulation.PNG", width:100,height: 100),
                    Image.asset("assets/icons/icon_queue.PNG", width:100,height: 100),
                  ],
                ),

              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Image.asset("assets/icons/icon_card.PNG",width:100,height: 100),
                  Text("KARTU DIGITAL")
                ],
              ),
              Column(
                children: [
                  Image.asset("assets/icons/icon_report.PNG", width:100,height: 100),
                  Text("KECELAKAAN KERJA")
                ],
              ),
              Column(
                children: [
                  Image.asset("assets/icons/icon_info.PNG", width:100,height: 100),
                  Text("INFO PROGRAM")
                ],
              ),

            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Image.asset("assets/icons/icon_partner.PNG",width:100,height: 100),
                  Text("MITRA LAYANAN")
                ],
              ),
              Column(
                children: [
                  Image.asset("assets/icons/icon_branch.PNG", width:100,height: 100),
                  Text("KANTOR CABANG")
                ],
              ),
              Column(
                children: [
                  Image.asset("assets/icons/icon_complaint.PNG", width:100,height: 100),
                  Text("PENGADUAN")
                ],
              ),
            ],
          ),
        ],
      )

    );
  }
}
