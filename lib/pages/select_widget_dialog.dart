import 'package:flutter/material.dart';
import 'package:major_project/utils/color_utils.dart';
import 'package:major_project/widget_builder_utilities/model_widget.dart';


/// Page for selecting widget to add to the tree
class SelectWidgetDialog extends StatefulWidget {
  @override
  _SelectWidgetDialogState createState() => _SelectWidgetDialogState();
}

class _SelectWidgetDialogState extends State<SelectWidgetDialog> {
  /// Controller for search bar
  TextEditingController _searchController = TextEditingController();

  /// The search parameter to search widget name
  String searchParam = "";

  @override
  Widget build(BuildContext context) {
    /// Stores result of search
    List<WidgetType> types = [];

    /// Perform search
    if (searchParam.trim() == "") {
      types = WidgetType.values;
    } else {
      WidgetType.values.forEach((type) {
        if (type.toString().toLowerCase().contains(searchParam.toLowerCase())) {
          types.add(type);
        }
      });
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Select Widget"),
      ),
      body: ListView(
        children: <Widget>[
          _buildSearchBar(),
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 2.0),
            itemBuilder: (context, position) {
              ColorPair pair = getColorPair(getNewModelFromType(WidgetType
                  .values[WidgetType.values.indexOf(types[position])]));

              return Padding(
                padding: const EdgeInsets.all(4.0),
                child: Card(
                  color: pair.backgroundColor,
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(
                          context,
                          getNewModelFromType(WidgetType.values[
                              WidgetType.values.indexOf(types[position])]));
                    },
                    child: Center(
                      child: Text(
                        types[position].toString().split(".")[1],
                        style: TextStyle(
                            color: pair.textColor, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ),
              );
            },
            itemCount: types.length,
          ),
        ],
      ),
    );
  }

  /// Builds search bar
  Widget _buildSearchBar() {
    return Container(
      margin: EdgeInsets.all(8.0),
      height: 60.0,
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(

                controller: _searchController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50))
                    ), labelText: " Search",prefixIcon: Icon(Icons.search)),
              ),
            ),
            flex: 4,
          ),
          Expanded(
            child: ElevatedButton(
              child: Text("Search"),
              style: ButtonStyle(
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                  )
                )
              ),
              onPressed: () {
                setState(() {
                  searchParam = _searchController.text.trim();
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
