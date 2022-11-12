import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

import 'package:flutter/services.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:major_project/components/syntax_highlighter.dart';
import 'package:major_project/pages/result_screen.dart';
import 'package:major_project/pages/save_code.dart';
import 'package:major_project/widget_builder_utilities/model_widget.dart';
import 'package:share_plus/share_plus.dart';

class CodeScreen extends StatefulWidget {
  ModelWidget? root;
  ModelWidget? currNode;
  CodeScreen(this.root, this.currNode);

  @override
  _CodeScreenState createState() => _CodeScreenState();
}

class _CodeScreenState extends State<CodeScreen> {
  String resultCode = "";
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  ModelWidget? currNode;
  ModelWidget? root;
  ValueNotifier<bool> isDialOpen = ValueNotifier(false);
  List savedCode=[];



  @override
  void initState() {
    super.initState();
    resultCode = widget.root!.toCode();
    currNode = widget.currNode;
  }

  saveCode(){
    savedCode.add(resultCode);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        key: _scaffoldKey,
        appBar: AppBar(
          title: Text("Your Layout Code"),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(8.0),
            child: RichText(text: DartSyntaxHighlighter().format(resultCode)),
          ),
        ),
        floatingActionButton: SpeedDial(
          animatedIcon: AnimatedIcons.menu_close,
          animatedIconTheme: IconThemeData(size: 28.0),
          backgroundColor: Colors.blue,
          visible: true,
          curve: Curves.bounceInOut,
          children: [
            SpeedDialChild(
              child: Icon(Icons.copy, color: Colors.white),
              backgroundColor: Colors.blue,
              onTap: () {
                Clipboard.setData(new ClipboardData(text: resultCode));
                _scaffoldKey.currentState?.showSnackBar(
                  new SnackBar(
                    content: new Text("Copied to Clipboard"),
                  ),
                );
              },
              label: 'Copy',
              labelStyle:
                  TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
              labelBackgroundColor: Colors.black,
            ),
            SpeedDialChild(
              child: Icon(Icons.share, color: Colors.white),
              backgroundColor: Colors.blue,
              onTap: () {
                Share.share(resultCode);
              },
              label: 'Share',
              labelStyle:
                  TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
              labelBackgroundColor: Colors.black,
            ),
            SpeedDialChild(
              child: Icon(Icons.save, color: Colors.white),
              backgroundColor: Colors.blue,
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) =>
                   savecode(code: savedCode),

                ));
              },
              label: 'Save the code',
              labelStyle:
                  TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
              labelBackgroundColor: Colors.black,
            ),
          ],
        )
        // Column(
        //   mainAxisAlignment: MainAxisAlignment.end,
        //   children: [
        //
        //     FloatingActionButton.extended(
        //       onPressed: () {
        //         Clipboard.setData(new ClipboardData(text: resultCode));
        //         _scaffoldKey.currentState?.showSnackBar(
        //           new SnackBar(
        //             content: new Text("Copied to Clipboard"),
        //           ),
        //         );
        //       },
        //       label: Text("Copy"),
        //       icon: Icon(
        //         Icons.content_copy,
        //       ),
        //     ),
        //     Divider(),
        //     FloatingActionButton.extended(
        //       onPressed: () {
        //         Share.share(resultCode);
        //       },
        //       label: Text("Share"),
        //       icon: Icon(
        //         Icons.share,
        //       ),
        //     ),        ],
        // ),
        );
  }
}
