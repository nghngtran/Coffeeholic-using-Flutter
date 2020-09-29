import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_story_app_concept/application/constant.dart';
import 'package:flutter_story_app_concept/data/CoffeeShop.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class CommentPost extends StatefulWidget {
  final CoffeeShop coffeeInfo;
  CommentPost(CoffeeShop _coffeeInfo) : coffeeInfo = _coffeeInfo;
  _CommentPost createState() => _CommentPost();
}

class _CommentPost extends State<CommentPost> {
  final controllerComment = new TextEditingController();
  final controllerName = new TextEditingController();
  double mRating = 0;

  _printLatestValue() {
    print("Second text field: ${controllerComment.text}");
  }

  onChange(String text) async {
    print("Searching for: ${controllerComment.text}");
  }

  void addComment() {
    Comment newCmt = Comment(
      controllerName.text,
      controllerComment.text,
      mRating,
      [],
      "https://i1-giaitri.vnecdn.net/2019/11/07/rapper-Den-5510-1573122371.jpg?w=680&h=0&q=100&dpr=2&fit=crop&s=wUFsS_hXHLuTKtMRCqNoSQ"
    );
    widget.coffeeInfo.comment.insert(0,newCmt);
    double rating = 0;
    for(var i = 0; i < widget.coffeeInfo.comment.length; i++){
      rating+= widget.coffeeInfo.comment[i].rating;
    }
    widget.coffeeInfo.rating = rating/widget.coffeeInfo.comment.length;
    Navigator.of(context).pop();
  }

  void initState() {
    super.initState();
    controllerComment.addListener(_printLatestValue);
    controllerName.addListener(_printLatestValue);
  }

  void dispose() {
    // Clean up the controller when the widget is removed from the
    // widget tree.
    controllerComment.dispose();
    controllerName.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // TODO: implement build
    double w = MediaQuery.of(context).size.width/100;
    double h =  MediaQuery.of(context).size.height/100;
    return Container(
      height: h*60,
      child: Column(
        children: [
          Container(
            color: ColorApp.colorBrown,
            padding: EdgeInsets.only(right: 9.0, left: 9.0),
            child: Row(
              children: [
                IconButton(
                  icon: Icon(Icons.cancel, color: ColorApp.colorWhite, size: 25),
                  onPressed: () => {Navigator.of(context).pop()},
                ),
                Text("Đăng bình luận", style: TextStyle(color: ColorApp.colorWhite, fontSize: 18),),
                Spacer(),
                IconButton(
                  icon: Icon(Icons.add_box, color: ColorApp.colorWhite, size: 25),
                  onPressed: () => {
                    addComment()
                  },
                )
              ],
            ),
          ),
          Container(
            color: Color.fromRGBO(192, 158, 122, 0.5),
            padding: EdgeInsets.all(2.0),
            child: Row(
              children: [
                SizedBox(width: w*5,),
                Container(margin: EdgeInsets.only(top:0),padding: EdgeInsets.all(0),
                  height: 40,width: 50,child:Image.network(widget.coffeeInfo.iconImg,fit: BoxFit.fitWidth),
                ),
                SizedBox(width: 20,),
                Text(widget.coffeeInfo.name, style: TextStyle(fontSize: 16),)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                RatingBar(
                  initialRating: 0,
                  minRating: 1,
                  itemSize: 40,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {
                    mRating = rating;
                    print(rating);
                  },
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(9.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                    maxLines: 1,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black38)
                      ),
                      fillColor: Colors.grey[200],
                      filled: true,
                      hintText: "Nhập họ và tên",
                    ),
                    controller: controllerName,
                    onChanged: onChange,
                    onTap: () {},
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(9.0),
            child: Container(
              height: 5 * 24.0,
              child: TextField(
                maxLines: 5,
                style: TextStyle(
                  fontSize: 16.0,
                ),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black38)
                  ),
                  fillColor: Colors.grey[200],
                  filled: true,
                  hintText: "Hãy chia sẻ nhưng điều bạn thích về quán này nhé.",
                ),
                controller: controllerComment,
                onChanged: onChange,
                onTap: () {},
              ),
            )
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.grey[200]
                )
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(9.0),
                      child: Icon(Icons.add_a_photo, color: ColorApp.colorBrown,),
                    ),
                  ),
                  SizedBox(width: 10.0,),
                  Text("Upload ảnh từ quán (nếu có)", style: TextStyle(color: Colors.grey),)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

}