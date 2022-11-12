import 'package:flutter/material.dart';
class savecode extends StatefulWidget {

  List? code;
  savecode({Key? key,this.code}) : super(key: key);

  @override
  State<savecode> createState() => _savecodeState();
}

class _savecodeState extends State<savecode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        elevation: 0,
        title: Text("Your Saved Code"),
      ),
      body: ListView.builder(
          itemCount: widget.code?.length,
          itemBuilder: (context,index){
            return ListTile(
              tileColor: Colors.orange,
              title: Text("${widget.code}"),
            );
      }),
    );
  }
}
