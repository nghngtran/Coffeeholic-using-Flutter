import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_story_app_concept/application/constant.dart';


class CustomDrawer extends  StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.fromLTRB(20, 50, 10, 20),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Image.asset("assets/mug.png",width: 80,height: 50),
              SizedBox(width: 5),
              Text("Coffee Holic",style: TextStyle(color: ColorApp.colorYellow,fontSize: 28,fontFamily: "Dancing Script",fontWeight: FontWeight.bold,letterSpacing: 1.2),)
            ],
          ),
          Divider(color: ColorApp.colorBrown,thickness: 1.0),
          SizedBox(height: 10),
          GestureDetector(onTap: (){
          },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 5,),
                Text("Trang chủ",
                    style: TextStyle(
                      color: ColorApp.colorCoffee,
                      fontSize: 20.0,
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
                Image.asset("assets/icon_book.png"),
                SizedBox(width: 5,),
                Text("Câu chuyện cà phê",
                    style: TextStyle(
                      color: ColorApp.colorCoffee,
                      fontSize: 20.0,
//                      fontFamily: "Calibre-Semibold",
                    )),
              ],
            ),
          ),
          SizedBox(height: 20),
          GestureDetector(onTap: (){},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("assets/icon_drink.png"),
                SizedBox(width: 5,),
                Text("Thường thức cà phê",
                    style: TextStyle(
                      color: ColorApp.colorCoffee,
                      fontSize: 20.0,
//                      fontFamily: "Calibre-Semibold",
                    )),
              ],
            ),
          ),
          SizedBox(height: 20),
          GestureDetector(onTap: (){
          },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("assets/icon_shop.png"),
                SizedBox(width: 5,),
                Text("Đề xuất quán",
                    style: TextStyle(
                      color: ColorApp.colorCoffee,
                      fontSize: 20.0,
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
                Image.asset("assets/icon_gear.png"),
                SizedBox(width: 5,),
                Text("Cài đặt",
                    style: TextStyle(
                      color: ColorApp.colorCoffee,
                      fontSize: 20.0,
                    )),
              ],
            ),
          ),
          SizedBox(height: 55),
          GestureDetector(onTap: (){

          },
            child: Text("Hỗ trợ & Phản hồi",
                style: TextStyle(
                  color: ColorApp.colorCoffee,
                  fontSize: 18.0,
//                  fontFamily: "Calibre-Semibold",
                )),
          ),
          SizedBox(height: 15),
          GestureDetector(onTap: (){

          },
            child: Text("Thông tin về Coffeeholic",
                style: TextStyle(
                  color: ColorApp.colorCoffee,
                  fontSize: 18.0,
//                  fontFamily: "Calibre-Semibold",
                )),
          ),
        ],
      ),
    );
  }
}