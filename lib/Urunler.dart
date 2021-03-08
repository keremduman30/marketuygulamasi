import 'package:app_market/Kategori.dart';
import 'package:flutter/material.dart';

class Urunler extends StatefulWidget {
  @override
  _UrunlerState createState() => _UrunlerState();
}

class _UrunlerState extends State<Urunler> with SingleTickerProviderStateMixin {//bu state yardımcı olrak ekrnda animasyon yaptıracak ve 1 saniyede
  //60 kere anaruz guncelliyecek state yardımcı olacak
  TabController televizton_control;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    televizton_control=TabController(length: 4, vsync: this);//vsync animasyonu yukluyecek bu sınıfta exdents edilgiği için this

  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
          //tabbar view ekliyecez ama oncellikle sabit bir yukseklik olması lzım
        TabBar(
          controller: televizton_control,
         indicatorColor: Colors.red[400],
         labelColor:Colors.red[400] ,
         unselectedLabelColor: Colors.grey,
         isScrollable: true,//eger tab yazıları cok uzunsa yatay uzat true yaptık
          labelStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),
         tabs: [
           Tab(child: Text("Temel gıda"),),
           Tab(child: Text("Şekerleme",),),
           Tab(child: Text("İçeçekler"),),
           Tab(child: Text("Temizlik",),),
         ],

        ),
        Expanded(
          child: TabBarView(
            controller: televizton_control,
            children: [
              Kategori(kategori: "temel gıda",),
              Kategori(kategori: "şekerleme",),
              Kategori(kategori: "içeçekler",),
              Kategori(kategori: "temizlik",),


            ],

          ),
        ),
      ],
    );
  }
}
