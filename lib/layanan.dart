import 'package:flutter/material.dart';

void main(){
  runApp(layanan());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(title: Text("LAYANAN")),
        body: layanan(),
      )
    );
  }
}

class layanan extends StatefulWidget {
  const layanan({Key? key}) : super(key: key);

  @override
  _layananState createState() => _layananState();
}

class _layananState extends State<layanan> {

  Widget _layananViewCount(){
    return GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 100 / 150,
        mainAxisSpacing: 8,
        crossAxisSpacing: 16,
        reverse: true,
        children: [
        FlutterLogo(),
        Container(color: Colors.purple),
        Container(color: Colors.green),
        Container(color: Colors.green),
        FlutterLogo(),
        Container(
          color: Colors.blue,
          width: 50,
          height: 50,
        ),
        FlutterLogo(),
      ],
    );
  }

  Widget _contohGridViewCountShrinkWrap() {
    return GridView.count(
      shrinkWrap: true,
      crossAxisCount: 2,
      childAspectRatio: 100 / 150,
      // padding: EdgeInsets.only(left: 16, top: 16),
      mainAxisSpacing: 8,
      crossAxisSpacing: 16,
      reverse: true,
      physics: NeverScrollableScrollPhysics(),
      children: [
        FlutterLogo(),
        Container(color: Colors.red),
        Container(color: Colors.green),
        Container(color: Colors.green),
        FlutterLogo(),
        Container(
          color: Colors.blue,
          width: 50,
          height: 50,
        ),
        FlutterLogo(),
      ],
    );
  }

  Widget _contohGridViewCountHorizontal() {
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 100 / 150,
      // padding: EdgeInsets.only(left: 16, top: 16),
      mainAxisSpacing: 24,
      // crossAxisSpacing: 16,
      // reverse: true,
      scrollDirection: Axis.horizontal,
      children: [
        Column(
          children: [
            FlutterLogo(size: 50),
            FlutterLogo(size: 50),
          ],
        ),
        Container(color: Colors.red),
        Container(color: Colors.green),
        Container(color: Colors.green),
        Row(
          children: [
            FlutterLogo(size: 50),
            FlutterLogo(size: 50),
            FlutterLogo(size: 50),
          ],
        ),
        Container(
          color: Colors.blue,
          width: 50,
          height: 50,
        ),
        FlutterLogo(),
      ],
    );
  }

  Widget _contohGridViewBuilderHorizontal() {
    return Container(
      height: 300,
      child: GridView.builder(
        scrollDirection: Axis.horizontal,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 100 / 200,
        ),
        itemBuilder: (buildContext, index) {
          if (index == 3) {
            return Container(
              color: Colors.purpleAccent,
            );
          }
          return FlutterLogo();
        },
        itemCount: 9,
      ),
    );
  }

  Widget _contohGridViewBuilderHorizontalArray() {
    var listBulan = [
      "jan", "feb", //"mar", "apr", "mei"
    ];
    return Container(
      height: 300,
      child: GridView.builder(
        scrollDirection: Axis.horizontal,
        // physics: BouncingScrollPhysics(),
        // physics: ClampingScrollPhysics(),
        // physics: NeverScrollableScrollPhysics(),
        // physics: AlwaysScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 100 / 200,
        ),
        itemBuilder: (buildContext, index) {
          if (index == 3) {
            return Container(
              color: Colors.red,
            );
          }
          return Column(
            children: [
              Expanded(child: FlutterLogo(size: double.infinity)),
              Text(listBulan[index], style: TextStyle(fontSize: 25)),
            ],
          );
        },
        itemCount: listBulan.length,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // return _contohGridViewCount();
    // return Container(
    //   child: _contohGridViewCount(),
    //   height: 200,
    // );
    // return Container(
    //   child: Scrollbar(child: _contohGridViewCountHorizontal()),
    //   height: 200,
    // );
    // return _contohGridViewBuilderHorizontal();
    // return _contohGridViewBuilderHorizontalArray();

    return ListView(
      children: [
        _contohGridViewBuilderHorizontal(),
        Container(
          height: 100,
          child: Center(child: Text("Jarak")),
        ),
        _contohGridViewBuilderHorizontalArray(),
        // _contohGridViewCount(), //gak bisa karena tinggi layout tidak jelas
        _contohGridViewCountShrinkWrap(),
      ],
    );
  }
}


