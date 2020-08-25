import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_story_app_concept/application/constant.dart';


class CustomDrawer extends  StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,

      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(color: ColorApp.colorYellow,
            padding: EdgeInsets.fromLTRB(20, 40, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(width: 65,height:80,child: Image.asset("assets/home.png",fit: BoxFit.fitHeight)),
                SizedBox(width: 5),
                Text("Nhà coffeeholic",style: TextStyle(color: Colors.black,fontSize: 24,fontFamily: "Dancing Script",fontWeight: FontWeight.bold,letterSpacing: 1.2),)
              ],
            ),
          ),

          Padding(
              padding: EdgeInsets.fromLTRB(20, 10, 10, 20),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              SizedBox(height: 10),
          GestureDetector(onTap: (){
            Navigator.of(context).pushNamed("home");
          },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset("assets/home 1.png",width: 25,height: 25),

                SizedBox(width: 5),
                Text("Trang chủ",
                    style: TextStyle(
                      color: ColorApp.colorCoffee,
                      fontSize: 18.0,
                    )),
              ],
            ),
          ),
          SizedBox(height: 20),
          GestureDetector(onTap: (){
            Navigator.of(context).pushNamed("feed");
          },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("assets/post 1.png"),
                SizedBox(width: 5,),
                Text("Khám phá bảng tin",
                    style: TextStyle(
                      color: ColorApp.colorCoffee,
                      fontSize: 18.0,
//                      fontFamily: "Calibre-Semibold",
                    )),
              ],
            ),
          ),
          SizedBox(height: 20),
          GestureDetector(onTap: (){
            Navigator.of(context).pushNamed('coffee_story');
          },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("assets/book 1.png"),
                SizedBox(width: 5,),
                Text("Câu chuyện cà phê",
                    style: TextStyle(
                      color: ColorApp.colorCoffee,
                      fontSize: 18.0,
//                      fontFamily: "Calibre-Semibold",
                    )),
              ],
            ),
          ),
          SizedBox(height: 20),
          GestureDetector(onTap: (){
            Navigator.of(context).pushNamed("coffee_type");
          },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("assets/drink 1.png"),
                SizedBox(width: 5,),
                Text("Thường thức cà phê",
                    style: TextStyle(
                      color: ColorApp.colorCoffee,
                      fontSize: 18.0,
//                      fontFamily: "Calibre-Semibold",
                    )),
              ],
            ),
          ),
          SizedBox(height: 20),
          GestureDetector(onTap: (){
            Navigator.of(context).pushNamed("coffee_shop");
          },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("assets/shop 1.png"),
                SizedBox(width: 5,),
                Text("Đề xuất quán theo quận ",
                    style: TextStyle(
                      color: ColorApp.colorCoffee,
                      fontSize: 18.0,
//                      fontFamily: "Calibre-Semibold",
                    )),
              ],
            ),
          ),
//          Divider(color: Colors.grey,),
//          GestureDetector(onTap: (){
//          },
//            child: Row(
//              mainAxisAlignment: MainAxisAlignment.start,
//              crossAxisAlignment: CrossAxisAlignment.center,
//              children: [
//                Image.asset("assets/icon_post.png"),
//                SizedBox(width: 5,),
//                Text("Đăng bài (Admin)",
//                    style: TextStyle(
//                      color: ColorApp.colorBrown,
//                      fontSize: 20.0,
////                      fontFamily: "Calibre-Semibold",
//                    )),
//              ],
//            ),
//          ),
          SizedBox(height: 20),
          GestureDetector(onTap: (){

          },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("assets/gear 1.png"),
                SizedBox(width: 5,),
                Text("Cài đặt",
                    style: TextStyle(
                      color: ColorApp.colorCoffee,
                      fontSize: 18.0,
                    )),
              ],
            ),
          ),
          SizedBox(height: 30),
          GestureDetector(onTap: (){

          },child:
          Container(margin: EdgeInsets.only(left: 5),
            child: Text("Hỗ trợ & Phản hồi",
                    style: TextStyle(
                      color: ColorApp.colorCoffee,
                      fontSize: 16,
//                  fontFamily: "Calibre-Semibold",
                    )),
          ),
            ),

          SizedBox(height: 15),
          GestureDetector(onTap: (){

          },
            child: Container(margin: EdgeInsets.only(left: 5),
              child: Text("Thông tin về Coffeeholic",
                  style: TextStyle(
                    color: ColorApp.colorCoffee,
                    fontSize: 16.0,
//                  fontFamily: "Calibre-Semibold",
                  )),
            ),
          ),
        ],
      ),
    )]));
  }
}