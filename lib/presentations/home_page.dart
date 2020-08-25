import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_story_app_concept/application/constant.dart';
import 'package:flutter_story_app_concept/customIcons.dart';
import 'package:flutter_story_app_concept/data.dart';
import 'package:flutter_story_app_concept/data/favourite_post.dart';
import 'package:flutter_story_app_concept/detail_page.dart';
import 'package:flutter_story_app_concept/presentations/drawer.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:provider/provider.dart';

import '../detail_page.dart';
import '../detail_page.dart';
import '../detail_page.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}
enum Discovery { XemNhieu, BaiViet}
enum Favourite { Ganday, Daluu}
var cardAspectRatio = 12.0 / 16.0;
var widgetAspectRatio = cardAspectRatio * 1.2;

class _HomePageState extends State<HomePage> {
  var currentPage = data.length - 1.0;
  Discovery typeDis;
  Favourite typeFavor;

  void initState(){
    super.initState();
    setState(() {
      typeDis = Discovery.XemNhieu;
      typeFavor = Favourite.Ganday;
    });
  }
  @override
  Widget build(BuildContext context) {
    favoriteList.add(data[1]);
    favoriteList.add(data[3]);
    favoriteList.add(data[4]);
    PageController controller = PageController(initialPage: data.length - 1);
    controller.addListener(() {
      setState(() {
        currentPage = controller.page;
      });
    });
    return ChangeNotifierProvider<FavoritePost>(
      create: (context) => FavoritePost(),
      child: Consumer<FavoritePost>(
          builder: (context, favListView, child){
            print(favListView.getList().length);
            return Scaffold(
      drawer: Drawer(
          child: CustomDrawer()),
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: ColorApp.colorYellow,
        actions: [
          IconButton(
            icon: Icon(Icons.search,size: 30),
            color: Colors.black,
            onPressed: (){},
          ),
        ],
        leading: Builder(
            builder: (context) => IconButton(
              padding: EdgeInsets.only(left: 12),
              icon: Icon(
                CustomIcons.menu,
                color: Colors.black,
                size: 30.0,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            )),
      ),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Padding(padding: EdgeInsets.fromLTRB(3, 5, 10, 0),
              child:
                Row(mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget> [
                      Container(width: 60,height:90,
                          margin: EdgeInsets.only(left: 20),child: Image.asset("assets/home.png",fit: BoxFit.fitHeight)),
                      Expanded(
                        child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:[
                            Text("Chào mừng bạn đến với @nhacuacoffeeholic ,",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Dancing Script",
                            letterSpacing: 0.5,
                          )),
                            Text("cùng đi cà phê với mình nha !",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: "Dancing Script",
                                  letterSpacing: 0.5,
                                )),
                        ]),
                      )]),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Khám phá",
                      style: TextStyle(
                        color: ColorApp.colorCoffee,
                        fontSize: 28.0,
                        fontFamily: "Calibre-Semibold",
                      )),
                  IconButton(
                    icon: Icon(
                      CustomIcons.option,
                      size: 12.0,
                      color: ColorApp.colorCoffee,
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed('feed');
                    },
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Row(
                children: <Widget>[
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        typeDis = Discovery.XemNhieu;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: typeDis == Discovery.XemNhieu ? ColorApp.colorYellow : Colors.transparent,
                        borderRadius: BorderRadius.circular(20.0),
                        border: Border.all(color: typeDis == Discovery.XemNhieu ? ColorApp.colorYellow : ColorApp.colorCoffee.withOpacity(0.3))
                      ),
                      child: Center(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 22.0, vertical: 6.0),
                          child: Text("Xem nhiều",
                              style: TextStyle(color: Colors.black)),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        typeDis = Discovery.BaiViet;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: typeDis == Discovery.BaiViet ? ColorApp.colorYellow : Colors.transparent,
                        borderRadius: BorderRadius.circular(20.0),
                          border: Border.all(color: typeDis == Discovery.BaiViet ? ColorApp.colorYellow : ColorApp.colorCoffee.withOpacity(0.3)
                      ),
                      ),
                      child: Center(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 22.0, vertical: 6.0),
                          child: Text("Bảng tin",
                              style: TextStyle(color: Colors.black)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                width: 500,
                height: 500,
                padding: const EdgeInsets.only(left: 20),
                child: Swiper(
                    itemCount: 10,
                    itemWidth: MediaQuery.of(context).size.width - 2 * 55,
                    layout: SwiperLayout.STACK,
                    pagination: SwiperPagination(
                      builder:
                      DotSwiperPaginationBuilder(color: ColorApp.colorYellow.withOpacity(0.7),
                          activeColor: ColorApp.colorCoffee,
                          activeSize: 20, space: 8),
                    ),
                    itemBuilder: (context, index) {
                      return InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              PageRouteBuilder(
                                pageBuilder: (context, a, b) => DetailPage(
                                  data[index],
                                ),
                              ),
                            );
                          },
                          child: Stack(children: <Widget>[
                            CardItem(data[index])
                          ]));
                    })),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Yêu thích",
                      style: TextStyle(
                        color: ColorApp.colorCoffee,
                        fontSize: 28.0,
                        fontFamily: "Calibre-Semibold",
                      )),
                  IconButton(
                    icon: Icon(
                      CustomIcons.option,
                      size: 12.0,
                      color: ColorApp.colorCoffee,
                    ),
                    onPressed: () {},
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: <Widget>[
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        typeFavor = Favourite.Ganday;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: typeFavor== Favourite.Ganday ? ColorApp.colorYellow : Colors.transparent,
                        borderRadius: BorderRadius.circular(20.0),
                        border: Border.all(color: typeFavor== Favourite.Ganday ? ColorApp.colorYellow : ColorApp.colorCoffee.withOpacity(0.3)
                        ),
                      ),
                      child: Center(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 22.0, vertical: 6.0),
                          child: Text("Gần đây",
                              style: TextStyle(color: Colors.black)),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        typeFavor = Favourite.Daluu;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: typeFavor== Favourite.Daluu ? ColorApp.colorYellow : Colors.transparent,
                        borderRadius: BorderRadius.circular(20.0),
                        border: Border.all(color: typeFavor== Favourite.Daluu ? ColorApp.colorYellow : ColorApp.colorCoffee.withOpacity(0.3)
                        ),
                      ),
                      child: Center(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 22.0, vertical: 6.0),
                          child: Text("Đã lưu",
                              style: TextStyle(color: Colors.black)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),


    favoriteList.length == 0  ? Container(margin: EdgeInsets.fromLTRB(50, 50, 10, 100),
          child: Text("Bảng tin yêu thích của bạn hiện đang trống. Lưu lại bài viết yêu thích, bạn nhé.",style:
    TextStyle(color: Colors.black.withOpacity(0.7),fontSize: 16,fontStyle: FontStyle.italic)),
        ):
        Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 30),
                  width: MediaQuery.of(context).size.width,
                  height: 250,
                  padding: const EdgeInsets.only(left: 20),
                  child: ListView.separated(scrollDirection: Axis.horizontal,
                    itemCount: favoriteList.length,itemBuilder: (context,index){
                    final item = favoriteList[index];
                    return FavouriteCardItem(item);
                  },separatorBuilder: (context,index){
                    return Padding(padding: EdgeInsets.fromLTRB(5,0,0,0));
                    }))
            ])));}),


      );
  }
}

class CardScrollWidget extends StatelessWidget {
  var currentPage;
  var padding = 20.0;
  var verticalInset = 20.0;

  CardScrollWidget(this.currentPage);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: widgetAspectRatio,
      child: LayoutBuilder(builder: (context, contraints) {
        var width = contraints.maxWidth;
        var height = contraints.maxHeight;

        var safeWidth = width - 2 * padding;
        var safeHeight = height - 2 * padding;

        var heightOfPrimaryCard = safeHeight;
        var widthOfPrimaryCard = heightOfPrimaryCard * cardAspectRatio;

        var primaryCardLeft = safeWidth - widthOfPrimaryCard;
        var horizontalInset = primaryCardLeft / 2;

        List<Widget> cardList = new List();

        for (var i = 0; i < data.length; i++) {
          var delta = i - currentPage;
          bool isOnRight = delta > 0;

          var start = padding +
              max(
                  primaryCardLeft -
                      horizontalInset * -delta * (isOnRight ? 15 : 1),
                  0.0);

          var cardItem = Positioned.directional(
            top: padding + verticalInset * max(-delta, 0.0),
            bottom: padding + verticalInset * max(-delta, 0.0),
            start: start,
            textDirection: TextDirection.rtl,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Container(
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                      color: Colors.black12,
                      offset: Offset(3.0, 6.0),
                      blurRadius: 10.0)
                ]),
                child: AspectRatio(
                  aspectRatio: cardAspectRatio,
                  child: Stack(
                    fit: StackFit.expand,
                    children: <Widget>[
                      Image.asset(data[i].iconImage, fit: BoxFit.cover),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 16.0, vertical: 8.0),
                              child: Text(data[i].name,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 22.0,
                                      fontFamily: "SF-Pro-Text-Regular",
                                      fontWeight: FontWeight.w600)),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 12.0, bottom: 12.0),
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 22.0, vertical: 6.0),
                                decoration: BoxDecoration(
                                    color: ColorApp.colorYellow,
                                    borderRadius: BorderRadius.circular(20.0)),
                                child: Text("Chi tiết",
                                    style: TextStyle(color: Colors.black)),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
          cardList.add(cardItem);
        }
        return Stack(
          children: cardList,
        );
      }),
    );
  }
}

class CardItem extends StatelessWidget {
  CoffeeInfo coffeeInfo;
  CardItem(CoffeeInfo _coffee) : coffeeInfo = _coffee;
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16.0),
      child: Container(
        height: 450,
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
              color: Colors.black12, offset: Offset(3.0, 6.0), blurRadius: 10.0)
        ]),
        child: AspectRatio(
          aspectRatio: cardAspectRatio,
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Image.asset(coffeeInfo.iconImage, fit: BoxFit.cover),
              Align(
                alignment: Alignment.bottomLeft,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding:
                      EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                      child: Text(coffeeInfo.name,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 22.0,
                              fontFamily: "SF-Pro-Text-Regular",
                              fontWeight: FontWeight.w600)),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0, bottom: 12.0),
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 22.0, vertical: 6.0),
                        decoration: BoxDecoration(
                            color: ColorApp.colorYellow,
                            borderRadius: BorderRadius.circular(20.0)),
                        child: Text("Chi tiết",
                            style: TextStyle(color: Colors.black)),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
class FavouriteCardItem extends StatelessWidget {
  CoffeeInfo coffeeInfo;
  FavouriteCardItem(CoffeeInfo _coffee) : coffeeInfo = _coffee;
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16.0),
      child: Container(
        height: 200,
        width: 200,
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
              color: Colors.black12, offset: Offset(3.0, 6.0), blurRadius: 10.0)
        ]),
        child: AspectRatio(
          aspectRatio: cardAspectRatio,
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Image.asset(coffeeInfo.iconImage, fit: BoxFit.cover),
              Align(
                alignment: Alignment.bottomLeft,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding:
                      EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                      child: Text(coffeeInfo.name,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontFamily: "SF-Pro-Text-Regular",
                              fontWeight: FontWeight.w600)),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
class FavouriteCardScrollWidget extends StatelessWidget {
  var currentPage;
  var padding = 20.0;
  var verticalInset = 20.0;

  FavouriteCardScrollWidget(this.currentPage);

  @override
  Widget build(BuildContext context) {
    
    return AspectRatio(
      aspectRatio: widgetAspectRatio,
      child: LayoutBuilder(builder: (context, contraints) {
        var width = contraints.maxWidth;
        var height = contraints.maxHeight;

        var safeWidth = width - 2 * padding;
        var safeHeight = height - 2 * padding;

        var heightOfPrimaryCard = safeHeight;
        var widthOfPrimaryCard = heightOfPrimaryCard * cardAspectRatio;

        var primaryCardLeft = safeWidth - widthOfPrimaryCard;
        var horizontalInset = primaryCardLeft / 2;

        List<Widget> cardListFavourite = new List();

        for (var i = 0; i < favoriteList.length; i++) {
          var delta = i - currentPage;
          bool isOnRight = delta > 0;

          var start = padding +
              max(
                  primaryCardLeft -
                      horizontalInset * -delta * (isOnRight ? 15 : 1),
                  0.0);

          var cardItem = Positioned.directional(
            top: padding + verticalInset * max(-delta, 0.0),
            bottom: padding + verticalInset * max(-delta, 0.0),
            start: start,
            textDirection: TextDirection.rtl,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Container(
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                      color: Colors.black12,
                      offset: Offset(3.0, 6.0),
                      blurRadius: 10.0)
                ]),
                child: AspectRatio(
                  aspectRatio: cardAspectRatio,
                  child: Stack(
                    fit: StackFit.expand,
                    children: <Widget>[
                      Image.asset(favoriteList[i].iconImage, fit: BoxFit.cover),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 16.0, vertical: 8.0),
                              child: Text(favoriteList[i].name,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 22.0,
                                      fontFamily: "SF-Pro-Text-Regular",
                                      fontWeight: FontWeight.w600)),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
          cardListFavourite.add(cardItem);
        }
        return Stack(
          children: cardListFavourite,
        );
      }),
    );
  }
}