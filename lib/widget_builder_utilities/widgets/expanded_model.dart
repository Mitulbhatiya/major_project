import 'package:flutter/material.dart';
import 'package:major_project/utils/code_utils.dart';
import 'package:major_project/widget_builder_utilities/model_widget.dart';
import 'package:major_project/widget_builder_utilities/property.dart';

/// Provides a model for recreating the [Expanded] widget
class ExpandedModel extends ModelWidget {
  ExpandedModel() {
    this.widgetType = WidgetType.Expanded;
    this.nodeType = NodeType.SingleChild;
    this.hasProperties = true;
    this.hasChildren = true;
    this.paramNameAndTypes = {
      "flex": PropertyType.integer,
    };
    this.params = {
      "flex": "1",
    };
  }

  @override
  Widget toWidget() {
    return Expanded(
      child: children[0]?.toWidget() ?? Container(),
      flex: int.tryParse(params["flex"])!,
    );
  }

  @override
  Map getParamValuesMap() {
    return {
      "flex": params["flex"],
    };
  }

  @override
  String toCode() {
    return "Expanded(\n"
        "${paramToCode(paramName: "flex", type: PropertyType.integer, currentValue: int.tryParse(params["flex"]))}"
        "    child: ${children[0]?.toCode() ?? 'Container()'},"
        "\n  )";
  }
}
