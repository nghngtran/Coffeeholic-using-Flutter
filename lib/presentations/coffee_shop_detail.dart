import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_story_app_concept/application/constant.dart';
import 'package:flutter_story_app_concept/data/CoffeeShop.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

List<CoffeeShop> favoriteListShop = List<CoffeeShop>();
Color primaryTextColor = Color(0xFF414C6B);
Color secondaryTextColor = Color(0xFFE4979E);
Color titleTextColor = Colors.white;
Color contentTextColor = Color(0xff868686);
Color hashtagColor = Color(0xff548AF7);

class CoffeeShopDetailPage extends StatefulWidget {
  final CoffeeShop coffeeInfo;
  CoffeeShopDetailPage(CoffeeShop _coffeeInfo) : coffeeInfo = _coffeeInfo;
  _CoffeeShopDetailPage createState() => _CoffeeShopDetailPage();
}

class _CoffeeShopDetailPage extends State<CoffeeShopDetailPage> {
  bool isSaved;
  String hashtag = "";

  void _createHashtag() {
    for(var i = 0; i < widget.coffeeInfo.hashtag.length; i++) {
      hashtag = hashtag + " #" + widget.coffeeInfo.hashtag[i];
    }
  }

  void initState(){
    super.initState();
    _createHashtag();
    print("Leng: " + widget.coffeeInfo.comment.length.toString());
    setState(() {
      isSaved = false;
    });
  }

  @override
  Widget build(BuildContext context) {

    double w = MediaQuery.of(context).size.width/100;
    double h =  MediaQuery.of(context).size.height/100;
    return Scaffold(appBar: AppBar(backgroundColor: ColorApp.colorYellow,
        iconTheme: IconThemeData(color: Colors.black)),
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: <Widget>[
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Container(margin: EdgeInsets.only(top:0),padding: EdgeInsets.all(0),
                    height: 250,width: MediaQuery.of(context).size.width,child:Image.network(widget.coffeeInfo.iconImg,fit: BoxFit.fitWidth),
                  ),
                  Padding(
                    padding:EdgeInsets.only(bottom: 10, left: 20, right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Text(
                          widget.coffeeInfo.name,
                          style: TextStyle(
                            fontSize: 30,
                            color: primaryTextColor,
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
                                      color: primaryTextColor,
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
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              widget.coffeeInfo.rating.toString() + "/5",
                              style: TextStyle(
                                fontFamily: 'Avenir',
                                fontSize: 18,
                                color: primaryTextColor,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            RatingBar(
                              initialRating: widget.coffeeInfo.rating,
                              minRating: 1,
                              itemSize: 26,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                              itemBuilder: (context, _) => Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              onRatingUpdate: (rating) {
                                print(rating);
                              },
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
                    padding: EdgeInsets.only(bottom: 10, left: 20, right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'Menu của chúng tôi',
                          style: TextStyle(
                            fontFamily: 'Avenir',
                            fontSize: 25,
                            color: const Color(0xff47455f),
                            fontWeight: FontWeight.w300,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(height: 10),
                        Wrap(
                          children: [
                            Container(width: w*90,height: h*widget.coffeeInfo.menu.length*10,
                                child: ListView.separated(itemCount: widget.coffeeInfo.menu.length,separatorBuilder: (context,index){
                                  return Divider(color: ColorApp.colorBrown.withOpacity(0.8),thickness: 1.0);
                                },itemBuilder: (context,index){
                                  final item = widget.coffeeInfo.menu[index];
                                  return MenuDetail(item);
                                },)
                            )
                          ],
                        ),
                        SizedBox(height: 10),
                        Divider(color: Colors.black38),
                      ],
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(right: 20.0, left: 20.0, top: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Coffeeholic nghĩ gì về quán?',
                            style: TextStyle(
                              fontFamily: 'Avenir',
                              fontSize: 25,
                              color: const Color(0xff47455f),
                              fontWeight: FontWeight.w300,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              FlatButton(
                                onPressed: () => {},
                                padding: EdgeInsets.all(10.0),
                                child: Row( // Replace with a Row for horizontal icon + text
                                  children: <Widget>[
                                    Text("Xem thêm", style: TextStyle(color: hashtagColor),),
                                    Icon(Icons.arrow_forward, color: hashtagColor,),
                                  ],
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 10),
                          Divider(color: Colors.black38),
                        ],
                      )
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0, left: 20.0, top: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          height: h*4,
                          width: w*12,
                          alignment: Alignment.center,
                          decoration: new BoxDecoration(
                            color: hashtagColor,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Text(
                            'Tag',
                            style: TextStyle(
                              fontFamily: 'Avenir',
                              fontSize: 22,
                              color: ColorApp.colorWhite,
                              fontWeight: FontWeight.w300,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        SizedBox(width: 10),
                        Flexible(
                          child: new Container(
                            child: Text(
                              hashtag ?? '',
                              maxLines: 100,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontFamily: 'Avenir',
                                fontSize: 20,
                                color: hashtagColor,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0, left: 20.0, top: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        SizedBox(height: 10),
                        Divider(color: Colors.black38),
                      ],)
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0, left: 20.0, top: 10.0),
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
                    padding: const EdgeInsets.only(left: 32.0, top: 10.0),
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
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0, left: 20.0, top: 10.0),
                    child: Text(
                      'Đánh giá và bình luận',
                      style: TextStyle(
                        fontFamily: 'Avenir',
                        fontSize: 25,
                        color: const Color(0xff47455f),
                        fontWeight: FontWeight.w300,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Padding(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          widget.coffeeInfo.rating.toString() + "/5",
                          style: TextStyle(
                            fontFamily: 'Avenir',
                            fontSize: 18,
                            color: primaryTextColor,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        RatingBar(
                          initialRating: widget.coffeeInfo.rating,
                          minRating: 1,
                          itemSize: 20,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                        Text(
                          '('+ widget.coffeeInfo.comment.length.toString()+ ' bình luận)',
                          style: TextStyle(
                            fontFamily: 'Avenir',
                            fontSize: 14,
                            color: primaryTextColor,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        SizedBox(width: w*5)
                        ,
                        FlatButton(
                          onPressed: () => {},
                          padding: EdgeInsets.all(10.0),
                          child: Row( // Replace with a Row for horizontal icon + text
                            children: <Widget>[
                              Text("Xem tất cả", style: TextStyle(color: hashtagColor),),
                            ],
                          ),
                        )
                      ],
                    ),
                    padding: const EdgeInsets.only(right: 20.0, left: 20.0, top: 10.0),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(right: 20.0, left: 20.0, top: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Divider(color: Colors.black38),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text("Đánh giá quán", style: TextStyle(color: primaryTextColor, fontSize: 16),),
                              FlatButton(
                                onPressed: () => {},
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),),
                                padding: EdgeInsets.all(10.0),
                                color: ColorApp.colorBrown,
                                child: Row( // Replace with a Row for horizontal icon + text
                                  children: <Widget>[
                                    Text("Viết đánh giá", style: TextStyle(color: Colors.white, fontSize: 14),),
                                  ],
                                ),
                              )
                            ],
                          ),
                          RatingBar(
                            initialRating: 0,
                            minRating: 1,
                            itemSize: 32,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                            itemBuilder: (context, _) => Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            onRatingUpdate: (rating) {
                              print(rating);
                            },
                          ),
                          Wrap(
                            children: [
                              Container(width: w*90,height: h*widget.coffeeInfo.comment.length*30,
                                  child: new ListView.separated(itemCount: widget.coffeeInfo.comment.length,separatorBuilder: (context,index){
                                    return Divider(color: ColorApp.colorBrown.withOpacity(0.8),thickness: 1.0);
                                  },itemBuilder: (context,index){
                                    final item = widget.coffeeInfo.comment[index];
                                    return CommentDetail(item);
                                  },)
                              )
                            ],
                          ),
                        ],)
                  ),

                ],
              ),
            ),

          ],
        ),
      ),
    );
  }

}

class MenuDetail extends StatelessWidget{
  final Drink post;
  MenuDetail(Drink drinkInfo):post = drinkInfo;
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h =  MediaQuery.of(context).size.height/100;
    return GestureDetector(onTap:(){
    },
      child:
      Wrap(
          children:[ Row(mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(width: 5),
              Container(
                width: 100,
                margin: EdgeInsets.all(10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(18),
                  child:Image.network(post.imgUrl,width: 85,height: 100,fit: BoxFit.cover),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                  Text(post.name,style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w600),),
                  SizedBox(height: 5),
                  Text(post.price,style:TextStyle(color: Colors.black.withOpacity(0.9),fontSize: 13,fontWeight: FontWeight.w400)),
                ]),
              ),
              SizedBox(width: 5)
            ],),]),
    );
  }
}

class CommentDetail extends StatelessWidget{
  final Comment post;
  CommentDetail(Comment commentInfo):post = commentInfo;
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width/100;
    double h =  MediaQuery.of(context).size.height/100;
    return GestureDetector(onTap:(){
    },
      child:
      Wrap(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: 50,
                      margin: EdgeInsets.all(10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child:Image.network(post.avatarUrl,width: 50,height: 50,fit: BoxFit.cover),
                      ),
                    ),
                    Container(
                      width: w*68,
                      margin: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            post.userName,style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600),
                          ),
                          RatingBar(
                            initialRating: post.rating,
                            minRating: 1,
                            itemSize: 20,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                            itemBuilder: (context, _) => Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            onRatingUpdate: (rating) {
                              print(rating);
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Flexible(
                  child: new Container(
                    child: Text(
                      post.description ?? '',
                      maxLines: 100,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontFamily: 'Avenir',
                        fontSize: 18,
                        color: contentTextColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 100,
              padding: const EdgeInsets.only(left: 0, top: 10.0),
              child: ListView.builder(
                  itemCount: post.imgUrl.length,
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
                            post.imgUrl[index],
                            fit: BoxFit.cover,
                          )),
                    );
                  }),
            )
          ]),
    );
  }
}