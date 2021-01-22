import 'package:flutter/material.dart';

import 'constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<bool> isSelected = [true, false, false];

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Center(
            child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Color(0xFFF0F0F0),
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: ToggleButtons(
            renderBorder: false,
            fillColor: Colors.white,
            constraints:
                BoxConstraints(minWidth: width * 0.3, minHeight: height * 0.06),
            isSelected: isSelected,
            children: [
              Text("All", style: kTextStyle),
              Text(
                "My Bids",
                style: kTextStyle,
              ),
              Text(
                "Closed",
                style: kTextStyle,
              ),
            ],
            onPressed: (index) {
              isSelected.fillRange(0, isSelected.length, false);
              setState(() {
                isSelected[index] = true;
                print(index);
              });
            },
          ),
        )),
      ),
    );
  }
}

/*
class _MyHomePageState extends State<MyHomePage> {
  List currencyCategoryName = ['All',"My Bids","Closed"];
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            margin: EdgeInsets.all(20),
            width: width,
            height: 80,
            decoration: BoxDecoration(
                color: Color(0xFFF0F0F0),
                borderRadius: BorderRadius.all(Radius.circular(20))
            ),
            child: Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: (){

                    },
                    child: Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(20),
                      child: Text("All",style: Theme.of(context).textTheme.headline6,),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(20))
                      ),

                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.all(20),
                    child: Text("My Bids",style: Theme.of(context).textTheme.headline6,),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20))
                    ),

                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.all(20),
                    child: Text("Closed",style: Theme.of(context).textTheme.headline6,),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20))
                    ),

                  ),
                ),

              ],
            ),

          ),
        ),
      ),
    );
  }
}




*/
