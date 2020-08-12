import 'package:flutter/material.dart';

import 'data.dart';
import 'data.dart';


Color primaryTextColor = Color(0xFF414C6B);
Color secondaryTextColor = Color(0xFFE4979E);
Color titleTextColor = Colors.white;
Color contentTextColor = Color(0xff868686);

class DetailPage extends StatelessWidget {
  final CoffeeInfo coffeeInfo;

  const DetailPage(CoffeeInfo _coffeeInfo) : coffeeInfo = _coffeeInfo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: <Widget>[
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(margin: EdgeInsets.only(top:50),
                        height: 250,width: MediaQuery.of(context).size.width,child:Image.asset(coffeeInfo.iconImage,fit: BoxFit.fitWidth),
                      ),
                  Padding(
                    padding:EdgeInsets.all(32.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
//                        SizedBox(height: 300),
//                      Container(margin: EdgeInsets.only(left: 0),
//                        height: 250,width: MediaQuery.of(context).size.width,child:Image.asset(coffeeInfo.iconImage,fit: BoxFit.fitWidth),
//                      ),
                        Text(
                          coffeeInfo.name,
                          style: TextStyle(
                            fontFamily: 'Avenir',
                            fontSize: 32,
                            color: primaryTextColor,
                            fontWeight: FontWeight.w900,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          coffeeInfo.position,
                          style: TextStyle(
                            fontFamily: 'Avenir',
                            fontSize: 24,
                            color: primaryTextColor,
                            fontWeight: FontWeight.w300,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Divider(color: Colors.black38),
                        SizedBox(height: 32),
                        Text(
                          coffeeInfo.description ?? '',
                          maxLines: 5,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontFamily: 'Avenir',
                            fontSize: 20,
                            color: contentTextColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 32),
                        Divider(color: Colors.black38),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 32.0),
                    child: Text(
                      'Gallery',
                      style: TextStyle(
                        fontFamily: 'Avenir',
                        fontSize: 25,
                        color: const Color(0xff47455f),
                        fontWeight: FontWeight.w300,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Container(
                    height: 250,
                    padding: const EdgeInsets.only(left: 32.0),
                    child: ListView.builder(
                        itemCount: coffeeInfo.images.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Card(
                            clipBehavior: Clip.antiAlias,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24),
                            ),
                            child: AspectRatio(
                                aspectRatio: 1,
                                child: Image.asset(
                                  coffeeInfo.images[index],
                                  fit: BoxFit.cover,
                                )),
                          );
                        }),
                  ),
                ],
              ),
            ),
//            Positioned(
//              child: Hero(
//                  tag: coffeeInfo.position,
//                  child:  Container(margin: EdgeInsets.only(top: 50),
//                        height: 280,width: MediaQuery.of(context).size.width,child:Image.asset(coffeeInfo.iconImage,fit: BoxFit.fitWidth),
//                      ),
//            )),
//            Positioned(
//              top: 60,
//              left: 32,
//              child: Text(
//                coffeeInfo.position.toString(),
//                style: TextStyle(
//                  fontFamily: 'Avenir',
//                  fontSize: 247,
//                  color: primaryTextColor.withOpacity(0.08),
//                  fontWeight: FontWeight.w900,
//                ),
//                textAlign: TextAlign.left,
//              ),
//            ),
            IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
