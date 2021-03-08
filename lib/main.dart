import 'package:app_market/Sepetim.dart';
import 'package:app_market/Urunler.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: Anasayfa(),
    );
  }
}

class Anasayfa extends StatefulWidget {
  @override
  _AnasayfaState createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  List<Widget> _icerik;

  int secilen_bottom_bar = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _icerik = [
      Urunler(),
      Sepetim(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.red[400]),
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Uçarak Gelsin",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.grey),
        ),
        centerTitle: true,
      ),
      body: _icerik[secilen_bottom_bar],
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(0.0),
          children: [
            UserAccountsDrawerHeader(
              accountName:Text("Kerem Berwari"),
              accountEmail: Text("berwari@hotmail.com"),
              currentAccountPicture: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35),
                  image: DecorationImage(
                    image: NetworkImage("https://avatars0.githubusercontent.com/u/65291634?s=460&u=64820c69f25d0eb352c070031a855cdd904dc9ea&v=4"),
                    fit: BoxFit.cover
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.red[400]
              ),
            ),
            ListTile(
              title: Text("Siparişlerim"),
              trailing: Icon(Icons.shopping_cart),
              onTap: (){

              },
            ),
            ListTile(
              title: Text("İndirimlerim"),
              trailing: Icon(Icons.money),
              onTap: (){

              },
            ),
            ListTile(
              title: Text("Ayarlar"),
              trailing: Icon(Icons.settings),
              onTap: (){

              },
            ),
            ListTile(
              title: Text("Çıkış Yap"),
              trailing: Icon(Icons.cancel),
              onTap: (){
              Navigator.pop(context);
              },
            ),
          ],
        ),
      ),

      //bottom navigaton bar
      bottomNavigationBar: BottomNavigationBar(
        //backgroundColor: Colors.blue,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "ürünler",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "Sepetim",
          ),
        ],
        //bottom secilen index
        currentIndex: secilen_bottom_bar,
        //renkler
        selectedItemColor: Colors.red[400],
        unselectedItemColor: Colors.grey[600],
        onTap: (index) {
          setState(() {
            secilen_bottom_bar = index;
            debugPrint("tıklanan bottom $index");
          });
        },
      ),
    );
  }
}
