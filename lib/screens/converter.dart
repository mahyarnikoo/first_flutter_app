import 'package:flutter/material.dart';


class ConverterScreen extends StatefulWidget {

  static const String routeName = "/Converter";

  @override
  _TextFieldExState createState() => new _TextFieldExState();
}

class _TextFieldExState extends State<ConverterScreen> {
  TextEditingController _c ;
  double _total = 0.0;
  String _text = "0";
  @override
  void initState() {
    _c = new TextEditingController();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Converter")),
        body: new Center(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new TextField(
                  keyboardType: TextInputType.number,
                  onChanged: (v)=>setState((){_text=v;}),
                  controller: _c,
                ),
                new RaisedButton(
                  child: new Text("Convert"),
                  onPressed: (){
                    setState((){
                      _total = double.parse(_c.text) * 3.28084;
                      _c.text = "";
                    });
                  },
                ),
                new Text("Meter: $_text"),
                new Text("Foot :$_total"),
              ],
            )
        )
    );
  }
}