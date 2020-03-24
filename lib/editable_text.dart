import 'package:flutter/material.dart';

class DisableTextField extends StatefulWidget {
  @override
  DisableTextFieldState createState() {
    return new DisableTextFieldState();
  }
}

class DisableTextFieldState extends State<DisableTextField> {
  TextEditingController _textFieldController = TextEditingController();
  bool _isEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        title: Text('Disable TextField Example'),
      ),
      body: Container(
        child: Container(
        margin: EdgeInsets.only(left: 5, top:10, right: 5, bottom:0),
        height: 100,
        child: Card(
        child: Column(
        mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Expanded(
              child: Center(
                child: Padding(
                  //Add padding around textfield
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  child: TextField(
                    
                    controller: _textFieldController,
                    //Set this field to enable or disable (true or flase)
                    enabled: _isEnabled,
                    
                    decoration: InputDecoration(hintText: "First Name"),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 280.0,),
              child: new RaisedButton(
              onPressed: () => setState(() => _isEnabled = !_isEnabled),
              child: Icon(_isEnabled ? IconData(58826, fontFamily: 'MaterialIcons') : IconData(57680, fontFamily: 'MaterialIcons')),
              // child: Icon(_isEnabled ? IconData(57680, fontFamily: 'MaterialIcons') : IconData(58826, fontFamily: 'MaterialIcons')),
               shape: new CircleBorder(),
              color: Colors.white,
            ),
            ),
            // SizedBox(height: 12.0),
          ],
        ),
      ),
      
    )
    
   )
   
  );
 }
}