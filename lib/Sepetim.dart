import 'package:flutter/material.dart';

class Sepetim extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Center(
          child: Text(
            "Sepetim",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.red[400],
            ),
          ),
        ),
        ListTile(
          title: Text("Çikolatalı Gofret"),
          subtitle: Text("2 Adet  x  3.50 tl"),
          trailing: Text("7 tl"),
        ),
        ListTile(
          title: Text("meyve suyu"),
          subtitle: Text("2 Adet  x  1.50 tl"),
          trailing: Text("3 tl"),
        ),
        ListTile(
          title: Text("Islak Kek"),
          subtitle: Text("2 Adet  x  5.50 tl"),
          trailing: Text("11 tl"),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: EdgeInsets.only(right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Toplam Tutar",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.red[400],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "21  Tl",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Padding(
          padding: EdgeInsets.all(20),
          child: FlatButton(
            minWidth: double.infinity,
            color: Colors.red[400],
            onPressed: () {},
            child: Text(
              "Alışverişi Tamamla",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
