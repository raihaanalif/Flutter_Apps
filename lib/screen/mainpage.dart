import 'package:flutter/material.dart';
import 'package:fp_dicoding2/const.dart';
import 'package:fp_dicoding2/screen/city.dart';
import 'package:fp_dicoding2/screen/detail.dart';

class MainPage extends StatelessWidget {
  static const routeName = "/MainPage";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nama Kota'),
        backgroundColor: ColorPalette.primaryColor,
        automaticallyImplyLeading: false,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final City place = city[index];
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailScreen(place: place);
              }));
            },
            child: Card(
              // color: ColorPalette.primaryColor,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Image.asset(place.imageAsset),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            place.name,
                            style: TextStyle(
                                fontSize: 16.0,
                                // color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
        itemCount: city.length,
      ),
    );
  }
}