import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../application/constant.dart';
import '../data/CoffeeShop.dart';

List<CoffeeShop> favoriteListShop = List<CoffeeShop>();

class CoffeeShopDetailPage extends StatefulWidget {
  final CoffeeShop coffeeInfo;
  CoffeeShopDetailPage(CoffeeShop _coffeeInfo) : coffeeInfo = _coffeeInfo;
  _CoffeeShopDetailPage createState() => _CoffeeShopDetailPage();
}

class _CoffeeShopDetailPage extends State<CoffeeShopDetailPage> {
  bool isSaved;

  void initState(){
    super.initState();
    setState(() {
      isSaved = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(margin: EdgeInsets.only(top:50),
                    height: 250,width: MediaQuery.of(context).size.width,child:Image.network(widget.coffeeInfo.iconImg,fit: BoxFit.fitWidth),
                  ),
                  Padding(
                    padding:EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Text(
                          widget.coffeeInfo.name,
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.black,
                            fontWeight: FontWeight.w900,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(height: 10),
                        Wrap(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  flex: 8,
                                  child: Text(
                                    widget.coffeeInfo.position,
                                    style: TextStyle(
                                      fontFamily: 'Avenir',
                                      fontSize: 18,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w300,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                                Expanded(
                                  child: GestureDetector(
                                    onTap: (){
                                      setState(() {
                                        isSaved = !isSaved;
                                      });
                                      if(isSaved) {
                                        favoriteListShop.add(widget.coffeeInfo);
                                      }
                                    },
                                    child: isSaved ? Icon(Icons.favorite,color: ColorApp.colorCoffee,size: 28)
                                        :Icon(Icons.favorite_border,color: ColorApp.colorCoffee,size: 28),
                                  ),
                                ),
                              ],
                            ),
                            Divider(color: Colors.black38),
                            SizedBox(height: 32),
                            Text(
                              widget.coffeeInfo.description ?? '',
                              maxLines: 100,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontFamily: 'Avenir',
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(height: 32),
                            Divider(color: Colors.black38),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 32.0),
                    child: Text(
                      'Thư viện ảnh',
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
                        itemCount: widget.coffeeInfo.images.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Card(
                            clipBehavior: Clip.antiAlias,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24),
                            ),
                            child: AspectRatio(
                                aspectRatio: 1,
                                child: Image.network(
                                  widget.coffeeInfo.images[index],
                                  fit: BoxFit.cover,
                                )),
                          );
                        }),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
  
}