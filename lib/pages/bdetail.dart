import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class bdetail extends StatefulWidget {
  String? baname;
  String? textDetail;
  String? aurl;
  bdetail({Key? key, this.baname,this.textDetail,this.aurl}) : super(key: key);

  @override
  State<bdetail> createState() => _bdetailState();
}

class _bdetailState extends State<bdetail> {
  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "${widget.baname}",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/home_bg.png'), fit: BoxFit.cover),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                height: _height * 0.5,
                width: _width * 0.9,
                decoration: BoxDecoration(

                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "${widget.textDetail}",
                      style: TextStyle(

                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          wordSpacing: 10,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ),
              ),
              Divider(
                color: Colors.transparent,
              ),
              ElevatedButton(
                onPressed: () async {
                  var url =  Uri.parse("${widget.aurl}");
                  if( await canLaunchUrl(url)){
                    await launchUrl(url);
                  } else{
                    print("Can't launch $url");
                  }
                },
                child: Text("Read More.."),
              )
            ],
          )
        ],
      ),
    );
  }
}
