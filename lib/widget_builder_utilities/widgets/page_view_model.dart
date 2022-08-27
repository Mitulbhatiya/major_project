import 'package:flutter/material.dart';
import 'package:major_project/utils/code_utils.dart';
import 'package:major_project/widget_builder_utilities/model_widget.dart';
import 'package:major_project/widget_builder_utilities/property.dart';

/// Provides a model for recreating the [PageView] widget
class PageViewModel extends ModelWidget {
  PageViewModel() {
    this.widgetType = WidgetType.PageView;
    this.nodeType = NodeType.MultipleChildren;
    this.hasProperties = true;
    this.hasChildren = true;
    this.paramNameAndTypes = {
      "physics": PropertyType.scrollPhysics,
      "scrollDirection": PropertyType.axis,
    };
    this.params = {
      "scrollDirection": Axis.horizontal,
    };
  }

  @override
  Widget toWidget() {
    return PageView(
      children: children.isNotEmpty
          ? children.values.map((widget) {
              return widget.toWidget();
            }).toList()
          : [],
      physics: params["physics"] ?? AlwaysScrollableScrollPhysics(),
      scrollDirection: params["scrollDirection"] ?? Axis.horizontal,
    );
  }

  @override
  Map getParamValuesMap() {
    return {
      "physics": params["physics"],
      "scrollDirection": params["scrollDirection"]
    };
  }

  @override
  String toCode() {
    return "PageView(\n"
        "${paramToCode(paramName: "physics", type: PropertyType.scrollPhysics, currentValue: params["physics"])}"
        "${paramToCode(paramName: "scrollDirection", type: PropertyType.axis, currentValue: params["scrollDirection"])}"
        '''    children: ${children.isNotEmpty ? children.values.map((widget) {
            return widget.toCode();
          }).toList() : []},'''
        "\n  )";
  }
}
