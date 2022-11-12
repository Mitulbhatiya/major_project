import 'package:flutter/material.dart';
import 'package:major_project/pages/bdetail.dart';
import '../components/learn_elements.dart';

class DetailPage extends StatefulWidget {
  String? aname;
  List? cname;
  List? cdetail;
  List? curl;
  DetailPage({Key? key,required this.aname,required this.cname,required this.cdetail,required this.curl}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        title: Text(widget.aname!,
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/home_bg.png'), fit: BoxFit.cover),
            ),
          ),
          ListView.builder(
              itemCount: widget.cname?.length,
              itemBuilder: (context, index) {
                print(widget.cname?.length);
                return ListTile(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>
                      bdetail(baname: widget.cname![index],textDetail: widget.cdetail![index],aurl: widget.curl![index],)
                    ));
                  },
                  tileColor: Colors.white,
                  title: Text("${widget.cname![index]}"),
                  leading: Icon(Icons.label, color: Colors.black,),
                  subtitle: Text(widget.aname!),
                );
              })
        ],
      ),
    );
  }
}
