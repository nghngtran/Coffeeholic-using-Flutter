import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_story_app_concept/application/constant.dart';
import 'package:flutter_story_app_concept/data/CoffeeShop.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:percent_indicator/percent_indicator.dart';

Color primaryTextColor = Color(0xFF414C6B);
Color secondaryTextColor = Color(0xFFE4979E);
Color titleTextColor = Colors.white;
Color contentTextColor = Color(0xff868686);
Color hashtagColor = Color(0xff548AF7);

class AllComment extends StatefulWidget {
  final CoffeeShop coffeeInfo;
  AllComment(CoffeeShop _coffeeInfo) : coffeeInfo = _coffeeInfo;
  _AllComment createState() => _AllComment();
}

class _AllComment extends State<AllComment> {
  var progressBar;

  double calPercentRate(int rate) {
    int temp = 0;
    for(int i = 0; i < widget.coffeeInfo.comment.length; i++) {
      if(widget.coffeeInfo.comment[i].rating - rate == 0.0) {
        temp += 1;
      }
    }
    return (1.0*temp)/widget.coffeeInfo.comment.length;
  }

  void initState() {
    setState(() {
      progressBar = <Widget>[
        Padding(
          padding: EdgeInsets.all(0.8),
          child: new LinearPercentIndicator(
            width: 170.0,
            animation: true,
            animationDuration: 1000,
            lineHeight: 10.0,
            leading: new Text("5"),
            percent: calPercentRate(5),
            linearStrokeCap: LinearStrokeCap.roundAll,
            progressColor: ColorApp.colorYellow,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(0.8),
          child: new LinearPercentIndicator(
            width: 170.0,
            animation: true,
            animationDuration: 1000,
            lineHeight: 10.0,
            leading: new Text("4"),
            percent: calPercentRate(4),
            linearStrokeCap: LinearStrokeCap.roundAll,
            progressColor: ColorApp.colorYellow,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(0.8),
          child: new LinearPercentIndicator(
            width: 170.0,
            animation: true,
            animationDuration: 1000,
            lineHeight: 10.0,
            leading: new Text("3"),
            percent: calPercentRate(3),
            linearStrokeCap: LinearStrokeCap.roundAll,
            progressColor: ColorApp.colorYellow,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(0.8),
          child: new LinearPercentIndicator(
            width: 170.0,
            animation: true,
            animationDuration: 1000,
            lineHeight: 10.0,
            leading: new Text("2"),
            percent: calPercentRate(2),
            linearStrokeCap: LinearStrokeCap.roundAll,
            progressColor: ColorApp.colorYellow,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(0.8),
          child: new LinearPercentIndicator(
            width: 170.0,
            animation: true,
            animationDuration: 1000,
            lineHeight: 10.0,
            leading: new Text("1"),
            percent: calPercentRate(1),
            linearStrokeCap: LinearStrokeCap.roundAll,
            progressColor: ColorApp.colorYellow,
          ),
        )
      ];
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width/100;
    double h =  MediaQuery.of(context).size.height/100;
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          centerTitle: true,
          title: Text("Tất cả nhận xét",style: TextStyle(color:Colors.black,fontSize: 20,fontWeight: FontWeight.w600)),
        backgroundColor: ColorApp.colorYellow,
      ),
      body: Container(
        color: new Color(0xFFF2F2F2),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 10.0, bottom: 5.0, left: 10.0, right: 10.0),
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      children: progressBar,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          widget.coffeeInfo.rating.toStringAsFixed(2),
                          style: TextStyle(
                            fontFamily: 'Avenir',
                            fontSize: 24,
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
                            fontSize: 15,
                            color: primaryTextColor,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10.0, bottom: 5.0, left: 10.0, right: 10.0),
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0, right: 0),
                        child: FlatButton(
                          onPressed: () => {
                          },
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),),
                          padding: const EdgeInsets.only(top: 2.0, bottom: 2.0, left: 20.0, right: 20.0),
                          color: Color(0xFFF2F2F2),
                          child: Row( // Replace with a Row for horizontal icon + text
                            children: <Widget>[
                              Text(
                                'Tất cả',
                                style: TextStyle(
                                  fontFamily: 'Avenir',
                                  fontSize: 15,
                                  color: primaryTextColor,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0, right: 0),
                        child: FlatButton(
                          onPressed: () => {
                          },
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),),
                          padding: const EdgeInsets.only(top: 2.0, bottom: 2.0, left: 30.0, right: 30.0),
                          color: Color(0xFFF2F2F2),
                          child: Row( // Replace with a Row for horizontal icon + text
                            children: <Widget>[
                              Text(
                                'Kèm hình ảnh',
                                style: TextStyle(
                                  fontFamily: 'Avenir',
                                  fontSize: 15,
                                  color: primaryTextColor,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0, right: 0.0),
                        child: ButtonTheme(
                          minWidth: 60,
                          height: 36.0,
                          child: FlatButton(
                            onPressed: () => {
                            },
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),),
                            padding: const EdgeInsets.only(top: 2.0, bottom: 2.0, left: 5.0, right: 5.0),
                            color: Color(0xFFF2F2F2),
                            child: Row( // Replace with a Row for horizontal icon + text
                              children: <Widget>[
                                Text(
                                  '5',
                                  style: TextStyle(
                                    fontFamily: 'Avenir',
                                    fontSize: 15,
                                    color: primaryTextColor,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 18,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5.0, right: 0),
                        child: ButtonTheme(
                          minWidth: 60,
                          height: 36.0,
                          child: FlatButton(
                            onPressed: () => {
                            },
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),),
                            padding: const EdgeInsets.only(top: 2.0, bottom: 2.0, left: 5.0, right: 5.0),
                            color: Color(0xFFF2F2F2),
                            child: Row( // Replace with a Row for horizontal icon + text
                              children: <Widget>[
                                Text(
                                  '4',
                                  style: TextStyle(
                                    fontFamily: 'Avenir',
                                    fontSize: 15,
                                    color: primaryTextColor,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 18,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5.0, right: 0),
                        child: ButtonTheme(
                          minWidth: 60,
                          height: 36.0,
                          child: FlatButton(
                            onPressed: () => {
                            },
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),),
                            padding: const EdgeInsets.only(top: 2.0, bottom: 2.0, left: 5.0, right: 5.0),
                            color: Color(0xFFF2F2F2),
                            child: Row( // Replace with a Row for horizontal icon + text
                              children: <Widget>[
                                Text(
                                  '3',
                                  style: TextStyle(
                                    fontFamily: 'Avenir',
                                    fontSize: 15,
                                    color: primaryTextColor,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 18,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5.0, right: 0),
                        child: ButtonTheme(
                          minWidth: 60,
                          height: 36.0,
                          child: FlatButton(
                            onPressed: () => {
                            },
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),),
                            padding: const EdgeInsets.only(top: 2.0, bottom: 2.0, left: 5.0, right: 5.0),
                            color: Color(0xFFF2F2F2),
                            child: Row( // Replace with a Row for horizontal icon + text
                              children: <Widget>[
                                Text(
                                  '2',
                                  style: TextStyle(
                                    fontFamily: 'Avenir',
                                    fontSize: 15,
                                    color: primaryTextColor,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 18,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5.0, right: 0),
                        child: ButtonTheme(
                          minWidth: 60,
                          height: 36.0,
                          child: FlatButton(
                            onPressed: () => {
                            },
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),),
                            padding: const EdgeInsets.only(top: 2.0, bottom: 2.0, left: 5.0, right: 5.0),
                            color: Color(0xFFF2F2F2),
                            child: Row( // Replace with a Row for horizontal icon + text
                              children: <Widget>[
                                Text(
                                  '1',
                                  style: TextStyle(
                                    fontFamily: 'Avenir',
                                    fontSize: 15,
                                    color: primaryTextColor,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 18,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Expanded(
              child: new ListView.builder(itemCount: widget.coffeeInfo.comment.length,
//              separatorBuilder: (context,index){
//              return Divider(color: ColorApp.colorBrown.withOpacity(0.8),thickness: 1.0);
//            },
                itemBuilder: (context,index){
                final item = widget.coffeeInfo.comment[index];
                return CommentDetail(item);
              },),
            ),
          ],
        ),
      ),
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
      Container(
        margin: const EdgeInsets.only(top: 5.0, bottom: 5.0, left: 10.0, right: 10.0),
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Color(0xFFFFFFFF),
          borderRadius: BorderRadius.all(Radius.circular(10))
        ),
        child: Wrap(
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
                height: 110,
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
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    icon: Icon(Icons.favorite_border,color: ColorApp.colorCoffee,size: 23),
                    onPressed: () => {},
                  ),
                  IconButton(
                    icon: Icon(Icons.chat_bubble_outline,color: ColorApp.colorCoffee,size: 23),
                    onPressed: () => {},
                  ),
                  IconButton(
                    icon: Icon(Icons.share,color: ColorApp.colorCoffee,size: 23),
                    onPressed: () => {},
                  ),
                  IconButton(
                    icon: Icon(Icons.more_vert,color: ColorApp.colorCoffee,size: 23),
                    onPressed: () => {},
                  )
                ],
              )
            ]),
      ),
    );
  }
}