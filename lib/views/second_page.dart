import 'package:flutter/material.dart';

import 'package:weather_app/main.dart';

class SecondPage extends StatelessWidget {
  //String sehir = "Ankara";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFf9f9f9),
        elevation: 0.0,
        title: const Text(
          "Şehir Seçiniz",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: ListView(
          padding: const EdgeInsets.all(8),
          children: [
            Container(
              height: 50,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Colors.grey, Colors.white]),
                borderRadius: BorderRadius.circular(5),
              ),
              child: FlatButton(
                child: const Text(
                  'Ankara',
                  style: TextStyle(fontSize: 20, color: Colors.black87),
                ),
                onPressed: () {
                  //sehir = "Ankara";
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return HomePage(
                          sehir: "Ankara",
                        );
                      },
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 15.0),
            Container(
              height: 50,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Colors.grey, Colors.white]),
                borderRadius: BorderRadius.circular(5),
              ),
              child: FlatButton(
                child: const Text(
                  'Istanbul',
                  style: TextStyle(fontSize: 20, color: Colors.black87),
                ),
                onPressed: () {
                  //sehir = "İstanbul";
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return HomePage(
                          sehir: "Istanbul",
                        );
                      },
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 15.0),
            Container(
              height: 50,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Colors.grey, Colors.white]),
                borderRadius: BorderRadius.circular(5),
              ),
              child: FlatButton(
                child: const Text(
                  'Bolu',
                  style: TextStyle(fontSize: 20, color: Colors.black87),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return HomePage(
                          sehir: "Bolu",
                        );
                      },
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Container(
              height: 50,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Colors.grey, Colors.white]),
                borderRadius: BorderRadius.circular(5),
              ),
              child: FlatButton(
                child: const Text(
                  'İzmir',
                  style: TextStyle(fontSize: 20, color: Colors.black87),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return HomePage(
                          sehir: "Izmir",
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
