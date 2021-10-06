import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class newNews extends StatefulWidget {
  const newNews({Key? key}) : super(key: key);

  @override
  _newNewsState createState() => _newNewsState();
}

class _newNewsState extends State<newNews> {
  List news=[];
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.APInews();
  }
  APInews() async {
    var URL = Uri.parse("https://sfa.forcapos.xyz/api/news/");
    var token = 'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wvc2ZhLmZvcmNhcG9zLnh5elwvYXBpXC9hY2NvdW50XC9sb2dpbiIsImlhdCI6MTYzMjkxNTQyOSwibmJmIjoxNjMyOTE1NDI5LCJqdGkiOiI1eUxTSHMyMEk1WnUyakRmIiwic3ViIjoyOCwicHJ2IjoiZmM0OTU1ODk1MjZiNzY0YjNlYzhhOTVmZTY5MDdlNTdlZjliOGM0YyJ9.2WAgvHy62tuFA7Ixerb9rbgeRzuTXHoERSGqHaTyN40Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wvc2ZhLmZvcmNhcG9zLnh5elwvYXBpXC9hY2NvdW50XC9sb2dpbiIsImlhdCI6MTYzMjkxNTQyOSwibmJmIjoxNjMyOTE1NDI5LCJqdGkiOiI1eUxT';
    var header = {
      'Authorization': token,
    };
    var respon = await http.get(
      URL,
      headers: header,
    );
    print(respon.statusCode);
    if (respon.statusCode==200){
      var body=jsonDecode(respon.body)['data'];
      print(body);
      setState(() {
        news = body;
      });

    }
    else {
      setState(() {
        news = [];
      });
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BERITA"),
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: ListView.builder(
          itemBuilder: (context,index) {
              return cardNews(news[index]);
            },

            itemCount: news.length,
        ),
      ),
    );

  }
  Widget cardNews(item) {
    var title = item["m_news_title"];
    var date = item["m_news_date"];
    var img = item["m_news_img"];

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          title: Row(
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(img),

                  )
                ),
              ),

              SizedBox(height: 20,),

              Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text(title.toString()),

                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text(date.toString()),

                      ),

                    ],
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
