import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_story_app_concept/application/constant.dart';
import 'package:flutter_story_app_concept/data/CoffeeShop.dart';
import 'package:flutter_story_app_concept/presentations/coffee_shop_detail.dart';
import '';

class CoffeeSearchPage extends StatefulWidget {
  @override
  _CoffeeSearchPage createState() => new _CoffeeSearchPage();
}

class _CoffeeSearchPage extends State<CoffeeSearchPage> with SingleTickerProviderStateMixin
{
  Icon _cusIcon = Icon(Icons.search);
  bool _isVisibleBtnText = false;
  Widget _cusSearchBar = Text("Đề xuất quán",style: TextStyle(color:Colors.black,fontSize: 20,fontWeight: FontWeight.w600));
  final controller = new TextEditingController();
  String dropdownValue = 'Tất cả';
  final listItem =  <String>['Tất cả', 'Quận 1', 'Quận 2', 'Quận 3', 'Quận 4', 'Quận 5', 'Quận 6', 'Quận 7', 'Quận 8', 'Quận 9', 'Quận 10', 'Quận 11', 'Quận 12', 'Bình Tân', 'Gò Vấp', 'Bình Thạnh', 'Phú Nhuận', 'Tân Bình', 'Tân Phú', 'Thủ Đức', 'Củ Chi', 'Hốc Môn', 'Nhà Bè', 'Bình Chánh', 'Cần Giờ', 'Nhà Bè']
      .map<DropdownMenuItem<String>>((String value) {
    return DropdownMenuItem<String>(
      value: value,
      child: Text(value),
    );
  }).toList();

  TabController _tabController;
  List<CoffeeShop> _dummyCoffeeShop;

  @override
  void initState() {
    _tabController = new TabController(length: 2, vsync: this);
    this._dummyCoffeeShop = List.from(dummyCoffeeShop);
    super.initState();
    controller.addListener(_printLatestValue);
    _tabController.addListener(_handleTabSelection);
  }

  onSearch(String text) async {
    print("Searching for: ${controller.text}");
    if(controller.text.isEmpty) {
      this._dummyCoffeeShop = List.from(dummyCoffeeShop);
    }
    else {
      List<CoffeeShop> searchList = List.from(dummyCoffeeShop);
      for (int i = 0; i < dummyCoffeeShop.length; i++) {
        if(!dummyCoffeeShop[i].name.contains(controller.text))
          searchList.removeAt(i);
      }
      this._dummyCoffeeShop = searchList;
    }
    setState(() {
    });
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
                      hintText: "Tên, địa chỉ, ...",
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
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  height: h*3.5,
                  margin: EdgeInsets.only(right: 6),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: ColorApp.colorBrown,
                      borderRadius: BorderRadius.circular(10)),
                  child:  Theme(
                      data: Theme.of(context).copyWith(
                          canvasColor: ColorApp.colorBrown
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          value: dropdownValue,
                          icon: Icon(Icons.arrow_drop_down, color: Colors.white,),
                          iconSize: 18,
                          elevation: 16,
                          style: TextStyle(color: Colors.white, fontSize: 13),
                          onChanged: (String newValue) {
                            setState(() {
                              dropdownValue = newValue;
                            });
                          },
                          items: this.listItem,
                        ),
                      )
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
              new Tab(text: "Gần tôi",)
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
                new ListView.builder(
                  itemCount: _dummyCoffeeShop.length,
                  itemBuilder: (BuildContext ctxt, int index) {
                    final item = _dummyCoffeeShop[index];
                    return CoffeeShopRow(item);
                  },
                ),
                new ListView.builder(
                  itemCount: _dummyCoffeeShop.length,
                  itemBuilder: (BuildContext ctxt, int index) {
                    final item = dummyCoffeeShop[index];
                    return CoffeeShopRow(item);
                  },
                ),
              ],
              controller: this._tabController,
            )
        )
    );
  }

}

class CoffeeShopRow extends StatelessWidget{
  final CoffeeShop row;
  CoffeeShopRow(CoffeeShop coffeeShop):row = coffeeShop;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    double w = MediaQuery.of(context).size.width/100;
    double h =  MediaQuery.of(context).size.height/100;
    return GestureDetector(
      onTap:(){
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => CoffeeShopDetailPage(row)));
      },
      child: Wrap(
        children: [
          Card(elevation: 0.0,
              color: Colors.white,
              child: Column(
                children: [
                  Container(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.network(row.iconImg,)),
                   Container(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(row.name, style: Theme.of(context).textTheme.title),
                        Text(row.position,
                            style: TextStyle(color: Colors.black.withOpacity(0.5))),
                        Text(row.description.substring(0,100) + "..."),
                      ],
                    ),
                  )
                ],
                crossAxisAlignment: CrossAxisAlignment.start,
              ))
        ],
      ),
    );
  }
}

