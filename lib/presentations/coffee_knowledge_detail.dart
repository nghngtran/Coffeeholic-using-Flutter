import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_story_app_concept/application/constant.dart';
import 'coffee_knowledge.dart';

List<CoffeeKnowledge> coffeeKnowledgeData = [
  CoffeeKnowledge("assets/CS1.jpg","Capuchino"),
  CoffeeKnowledge("assets/image_15.jpg","Cà phê Sữa"),
  CoffeeKnowledge("assets/image_19.jpg","Cà phê Chồn"),
  CoffeeKnowledge("assets/image_24.jpg","Cà phê Rang"),
  CoffeeKnowledge("assets/image_31.jpg","Cà phê Đen"),
  CoffeeKnowledge("assets/image_37.jpg","Bạc Xỉu"),
  CoffeeKnowledge("assets/image_5.jpg","Cà phê Sữa Tươi"),
  CoffeeKnowledge("assets/CS1.jpg","Cà phê CaCao"),
  CoffeeKnowledge("assets/CS1.jpg","Cà phê Trứng"),
];




class ListImage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    double h = MediaQuery.of(context).size.height/100;
    double w = MediaQuery.of(context).size.width/100;
    return Material(
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(5.0),
            width: w*30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
              image: DecorationImage(
                  image: new AssetImage(coffeeKnowledgeData[0].imgUrl),
                  fit: BoxFit.cover
              ),
            ),
          ),
          Container(
            width: w*30,
            margin: EdgeInsets.all(5.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
              image: DecorationImage(
                  image: new AssetImage(coffeeKnowledgeData[0].imgUrl),
                  fit: BoxFit.cover
              ),
            ),
          ),
          Container(
            width: w*30,
            margin: EdgeInsets.all(5.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
              image: DecorationImage(
                  image: new AssetImage(coffeeKnowledgeData[0].imgUrl),
                  fit: BoxFit.cover
              ),
            ),
          ),
          Container(
            width: w*30,
            margin: EdgeInsets.all(5.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
              image: DecorationImage(
                  image: new AssetImage(coffeeKnowledgeData[0].imgUrl),
                  fit: BoxFit.cover
              ),
            ),
          ),
          Container(
            width: w*30,
            margin: EdgeInsets.all(5.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
              image: DecorationImage(
                  image: new AssetImage(coffeeKnowledgeData[0].imgUrl),
                  fit: BoxFit.cover
              ),
            ),
          ),
        ],
      ),
    );
  }

}


class Content extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    double h = MediaQuery.of(context).size.height/100;
    double w = MediaQuery.of(context).size.width/100;
    return Material(
        child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                new Container(
                  height: h*20,
                  width: w*100,
                  child: new Image(
                    image: new AssetImage(coffeeKnowledgeData[0].imgUrl),
                    fit: BoxFit.fill,
                  ),
                ),
                Container(
                    margin: EdgeInsets.all(5.5),
                    child: Text("Tươi, sạch đi kèm với độ cân bằng của mùi vị: mùi thơm, vị đắng, chua cùng ngọt chính là yếu tố quyết định một ly cà phê ngon. Tuỳ vào thói quen và sở thích, độ ngon của cà phê được mỗi người thưởng thức và đánh giá khác nhau.Điều tuyệt vời nhất đối với những người ghiền cà phê chính là được thưởng thức một ly cà phê nguyên chất. Cà phê ngon phải được chế biến từ nguồn nguyên liệu sạch, chất lượng.Chế biến phải chuyên nghiệp, đúng kỹ thuật, đặc biệt là phải tỉ mỉ trong quá trình rang cà phê. Điều này sẽ làm khơi dậy mùi vị đặc trưng của cà phê.Năm yếu tố quyết định cà phê ngon: độ đắng, độ ngọt, độ chua, độ đậm đà và hương thơm. Cà phê chất lượng là loại cà phê phải hội tụ đủ 5 yếu tố trên để tạo ra sự đặc biệt về hương vị. Và ly cà phê ngon phải cân bằng được 5 yếu tố trên.Cà phê chắc chắn phải có vị đắng, nhưng không phải ai cũng biết vị đắng từ đâu. Cà phê có vị đắng do chứa hàm lượng cafein rất cao. Nhiều người không biết nên tạo ra vị đắng bằng cách rang cà phê đậm.",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 30)
                ),
                Container(
                    margin: EdgeInsets.all(5.5),
                    child: Text("Hình ảnh", style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'Dancing Script', fontSize: 30))
                ),
                Flexible(
                  child:  SizedBox(
                      height: h*20,
                      child: ListImage()
                  ),
                ),
              ],
            )
        )
    );
  }

}


class CoffeeKnowledgeDetailPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
            title: Text("Cà phê sữa", style: TextStyle(fontFamily: 'Dancing Script',fontSize: 25,color: Colors.black)),
            backgroundColor: Colors.white70,
            leading: new  IconButton(icon: Icon(Icons.arrow_back_ios, color: Colors.black), onPressed: (){Navigator.pop(context);},),
            actions: <Widget>[
              IconButton(
                icon:Icon(Icons.favorite, color: Colors.black),
                onPressed:() {},),
            ]
        ),
        body: Content(),
      ),
    );
  }
}