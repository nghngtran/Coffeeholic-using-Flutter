import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_story_app_concept/application/constant.dart';
import 'package:flutter_story_app_concept/data/CoffeeShop.dart';
import 'package:flutter_story_app_concept/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_story_app_concept/detail_page.dart';



class SearchScreen extends StatefulWidget {
  @override
  _SearchScreen createState() => new _SearchScreen();
}

class _SearchScreen extends State<SearchScreen> with SingleTickerProviderStateMixin
{
  Icon _cusIcon = Icon(Icons.search);
  bool _isVisibleBtnText = false;
  final controller = new TextEditingController();
  List<String> _searchText=['Cà phê Quận 1','Cà phê Quận 2','Cà phê Quận 3'];

  TabController _tabController;


  @override
  void initState() {
    _tabController = new TabController(length: 3, vsync: this);
    //this._dummyCoffeeShop = dummyCoffeeShop;
    super.initState();
    controller.addListener(_printLatestValue);
    _tabController.addListener(_handleTabSelection);
  }

  onSearch(String text) async {
    print("Searching for: ${controller.text}");

  }

  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the
    // widget tree.
    controller.dispose();
    super.dispose();
  }

  _printLatestValue() {
    print("Second text field: ${controller.text}");
    setState(() {
      if(controller.text.isEmpty) this._isVisibleBtnText = false;
      else this._isVisibleBtnText = true;
    });
  }

  _handleTabSelection() {
    print("Tab select: ${_tabController.index}");
    setState(() {
    });
  }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width/100;
    double h =  MediaQuery.of(context).size.height/100;
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Container(
            padding: EdgeInsets.fromLTRB(w*2, 0, w, 0),
            height: h*5.5,
            alignment: Alignment.center,
            decoration: new BoxDecoration(
              color: ColorApp.colorWhite,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: new Row (
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.search, color: Colors.black, size: 25,),
                Expanded(
                  child: TextField(
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Bài đăng, ...",
                    ),
                    controller: controller,
                    onChanged: onSearch,

                    onTap: () {},
                  ),
                ), Visibility(
                  visible: this._isVisibleBtnText,
                  child: IconButton(
                    onPressed: () {
                      controller.clear();
                      onSearch('');
                    },
                    icon: Icon(Icons.cancel),
                  ),
                ),
              ],
            ),
          ),

          iconTheme: IconThemeData(color: Colors.black),
          centerTitle: true,
          backgroundColor: ColorApp.colorYellow,

          bottom: TabBar(
            unselectedLabelColor: Colors.white70,
            labelColor: Colors.white,
            labelStyle: TextStyle(fontSize: 16),
            indicatorColor: ColorApp.colorWhite,
            tabs: [
              new Tab(text: "Xem gần đây"),
              new Tab(text: "Mới nhất"),
              new Tab(text: "Đã tìm"),
            ],
            controller: this._tabController,
          ),
        ),


        body: new GestureDetector(
            onTap: () {
              FocusScopeNode currentFocus = FocusScope.of(context);
              if (!currentFocus.hasPrimaryFocus) {
                currentFocus.unfocus();
              }
            },
            child: TabBarView(
              children: [
                Container(width: w*100,height: h*data.length*12,
                  child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context,index){
                      final item = data[index];
                      return PostDetail(item);
                    },),
                ),

                Container(width: w*100,height: h*data.length*12,
                  child: ListView.builder(
                    itemCount: data.length,
                    itemBuilder: (context,index){
                    final item = data[index];
                    return PostDetail(item);
                  },),
                ),

                Container(width: w*100,height: h*_searchText.length*12,
                  child: ListView.separated(itemCount: _searchText.length,separatorBuilder: (context,index){
                    return Divider(color: ColorApp.colorBrown.withOpacity(0.5),thickness: 0.4);
                  },itemBuilder: (context,index){
                    final item = _searchText[index];
                    return ListTile(
                      title: Text(_searchText[index],  maxLines: 1,
                        overflow: TextOverflow.ellipsis,),
                      trailing :IconButton(
                        onPressed: () {
                          setState(() {
                            _searchText.remove(_searchText[index]);
                          });
                        },
                        icon: Icon(Icons.close),
                      )

                    );
                  },),
                )
              ],
              controller: this._tabController,
            )
        )
    );
  }

}

class PostDetail extends StatelessWidget{
  final CoffeeInfo post;
  PostDetail(CoffeeInfo coffeeInfo):post = coffeeInfo;
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h =  MediaQuery.of(context).size.height/100;

    return GestureDetector(onTap:(){
      Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => DetailPage(post)));
    },
      child:Container(
        margin: const EdgeInsets.only(top:10.0),
      child: Wrap(
          children:[ Row(mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(width: 5),
              Image.asset(post.images[0],width: 100,height: 85,fit: BoxFit.cover,),
              SizedBox(width: 10),
              Expanded(
                child: Column(crossAxisAlignment: CrossAxisAlignment.center,children: [
                  Text(post.name,style: TextStyle(color: Colors.black,fontSize: 17,fontWeight: FontWeight.w600),maxLines: 2,
                    overflow: TextOverflow.ellipsis,),
                  //SizedBox(height: 5),
                  Text(post.description.substring(0,100) + "...",style:TextStyle(color: Colors.grey.withOpacity(0.9),fontSize: 12,fontWeight: FontWeight.w400)),
                ]),
              ),
              SizedBox(width: 5)
            ],),]),
    ),
    );
  }
}

