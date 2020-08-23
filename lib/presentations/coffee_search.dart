import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'application/constant.dart';

class CoffeeSearchPage extends StatefulWidget {
  @override
  _CoffeeSearchPage createState() => new _CoffeeSearchPage();
}

class _CoffeeSearchPage extends State<CoffeeSearchPage> {
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

  @override
  void initState() {
    super.initState();

    controller.addListener(_printLatestValue);
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

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width/100;
    double h =  MediaQuery.of(context).size.height/100;
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Container(
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
                  onTap: () {setState(() { this._isVisibleBtnText = true; });},
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
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                height: h*3.5,
                margin: EdgeInsets.only(right: 6),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: ColorApp.colorBrown,
                    borderRadius: BorderRadius.circular(10)),
                child: new Theme(
                    data: Theme.of(context).copyWith(
                        canvasColor: ColorApp.colorBrown
                    ),
                    child: new DropdownButtonHideUnderline(
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

//        bottom: PreferredSize(
//          preferredSize: Size(50, 30),
//          child: Container(
//
//          ),
//        ),
      ),

      body: new Center(

      ),
    );
  }
}

