import 'package:flutter/material.dart';
import 'package:mobile_bpjstku/login.dart';

class profil extends StatelessWidget {
  const profil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Profil')),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          Container(
            height: 150,
            child: Card(
              shadowColor: Colors.black,
              child: ListTile(
                title: Row(
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(30.0),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/img_avatar.jpeg"),
                        ),
                      ),
                    ),

                    SizedBox(height: 20),

                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Soekarno", style: TextStyle(fontSize: 20),),
                          Text("admin@soekarno.id", style: TextStyle(fontSize: 14),),
                          FlatButton(
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => login()));
                              },
                              child: Text("Log Out"),
                              color: Colors.blue,
                          ),

                        ],

                      )
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}






