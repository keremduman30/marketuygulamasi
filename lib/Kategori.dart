import 'package:app_market/urunDetay.dart';
import 'package:flutter/material.dart';

class Kategori extends StatefulWidget {
  final String kategori;

  const Kategori({Key key, this.kategori}) : super(key: key);
  @override
  _KategoriState createState() => _KategoriState();
}

class _KategoriState extends State<Kategori> {
  List<Widget> gosterilecek_liste;
  Widget urunKarti(String resim,urunAd,String urunFiyat){
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>UrunDetay(urunAd,urunFiyat,resim)));
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                blurRadius: 4,
                spreadRadius: 2,
              )
            ]
        ),
        child: Hero(
          tag: resim,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center ,
            children: [
              Container(
                width: 120,
                height: 80,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(resim),
                    fit: BoxFit.cover,

                  ),
                  borderRadius: BorderRadius.circular(20),

                ),

              ),
              SizedBox(height: 8,),
              Text(urunAd, style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.grey[600]),),
              SizedBox(height: 8,),
              Text(urunFiyat, style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.red[400]),),
            ],
          ),
        ),
      ),
    );
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (widget.kategori=="temel gıda"){
      gosterilecek_liste=[
        urunKarti("https://cdn.pixabay.com/photo/2016/05/24/13/29/olive-oil-1412361_1280.jpg","Zeytin Yağı","20 Tl"),
        urunKarti("https://cdn.pixabay.com/photo/2016/10/07/14/11/tangerines-1721633__340.jpg","portakal","1 KG 20 Tl"),
        urunKarti("https://cdn.pixabay.com/photo/2017/04/09/21/35/spinach-2216967__340.jpg","Ispanak","10 Tl"),
        urunKarti("https://cdn.pixabay.com/photo/2016/01/05/13/58/apple-1122537__340.jpg","elma","20 Tl"),


      ];

    }
    else if(widget.kategori=="şekerleme"){
      gosterilecek_liste=[
        urunKarti("https://cdn.pixabay.com/photo/2017/04/09/21/35/spinach-2216967__340.jpg","Ispanak","10 Tl"),
        urunKarti("https://cdn.pixabay.com/photo/2016/01/05/13/58/apple-1122537__340.jpg","elma","20 Tl"),
        urunKarti("https://cdn.pixabay.com/photo/2015/07/27/18/54/cross-sections-863072__340.jpg","nar","35 Tl"),
        urunKarti("https://cdn.pixabay.com/photo/2015/07/27/18/54/cross-sections-863072__340.jpg","nar","35 Tl"),
      ];
    }
    else if(widget.kategori=="içeçekler"){
      gosterilecek_liste=[
        urunKarti("https://cdn.pixabay.com/photo/2017/04/09/21/35/spinach-2216967__340.jpg","Ispanak","10 Tl"),
        urunKarti("https://cdn.pixabay.com/photo/2016/01/05/13/58/apple-1122537__340.jpg","elma","20 Tl"),
        urunKarti("https://cdn.pixabay.com/photo/2015/07/27/18/54/cross-sections-863072__340.jpg","nar","35 Tl"),
      ];
    }
    else if(widget.kategori=="temizlik"){
      gosterilecek_liste=[
        urunKarti("https://cdn.pixabay.com/photo/2017/04/09/21/35/spinach-2216967__340.jpg","Ispanak","10 Tl"),
        urunKarti("https://cdn.pixabay.com/photo/2016/01/05/13/58/apple-1122537__340.jpg","elma","20 Tl"),
      ];
    }

  }
  @override
  Widget build(BuildContext context) {
    return GridView.count(
       crossAxisCount: 2,
        mainAxisSpacing: 12,
        crossAxisSpacing: 12,
        padding: EdgeInsets.all(10),
        childAspectRatio: 1,//eni boyuna esit olur dedik eger 2 yaparsak eni(yatayı) boyun(yukesklik) 2 katı olacaktı
        children: gosterilecek_liste,

    );
  }

}
