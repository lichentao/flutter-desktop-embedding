
// Top level, import as converter


import 'dart:convert';

import 'package:flutter_visual_builder/widgets/properties/enum_properties.dart';
import 'package:flutter_visual_builder/widgets/properties/property.dart';


Property convertToProperty(String data) {

  Map decoded = json.decode(data);

  assert(decoded.containsKey("type"));
  assert(decoded.containsKey("property"));

  String stringType = decoded["type"];

  PropertyType type = PropertyType.values.firstWhere((it) => it.toString() == stringType);

  Map pMap = decoded["property"];

  switch(type) {
    // TODO use a registry so each property registers itself
    case PropertyType.unknown:
      return UnknownProperty.fromMap(pMap);
    case PropertyType.alignment:
      return AlignmentProperty.fromMap(pMap);
    case PropertyType.color:
      return ColorProperty.fromMap(pMap);
    case PropertyType.double:
      return DoubleProperty.fromMap(pMap);
    case PropertyType.edgeInserts:
      return EdgeInsertsProperty.fromMap(pMap);
    case PropertyType.boxConstraints:
      return BoxConstraintsProperty.fromMap(pMap);
    case PropertyType.mainAxisAlignment:
      return MainAxisAlignmentProperty.fromMap(pMap);
    case PropertyType.crossAxisAlignment:
      return CrossAxisAlignmentProperty.fromMap(pMap);
    case PropertyType.string:
      return StringProperty.fromMap(pMap);
    case PropertyType.bool:
      return BoolProperty.fromMap(pMap);
    case PropertyType.int:
      return IntProperty.fromMap(pMap);

  }

  throw Exception("Paring unknonw value");

}
