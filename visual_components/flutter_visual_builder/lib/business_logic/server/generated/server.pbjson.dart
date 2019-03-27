///
//  Generated code. Do not modify.
//  source: server.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

const Empty$json = const {
  '1': 'Empty',
};

const SourceCode$json = const {
  '1': 'SourceCode',
  '2': const [
    const {'1': 'sourceCode', '3': 1, '4': 1, '5': 9, '10': 'sourceCode'},
  ],
};

const InitSourceCodeStream$json = const {
  '1': 'InitSourceCodeStream',
};

const FieldUpdate$json = const {
  '1': 'FieldUpdate',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'propertyName', '3': 2, '4': 1, '5': 9, '10': 'propertyName'},
    const {'1': 'property', '3': 3, '4': 1, '5': 9, '10': 'property'},
  ],
};

const Field$json = const {
  '1': 'Field',
};

const DoubleField$json = const {
  '1': 'DoubleField',
  '2': const [
    const {'1': 'value', '3': 1, '4': 1, '5': 1, '10': 'value'},
  ],
};

const AlignmentField$json = const {
  '1': 'AlignmentField',
  '2': const [
    const {'1': 'x', '3': 1, '4': 1, '5': 1, '10': 'x'},
    const {'1': 'y', '3': 2, '4': 1, '5': 1, '10': 'y'},
  ],
};

const ColorField$json = const {
  '1': 'ColorField',
  '2': const [
    const {'1': 'color', '3': 1, '4': 1, '5': 5, '10': 'color'},
  ],
};

const InitializeFileRequest$json = const {
  '1': 'InitializeFileRequest',
  '2': const [
    const {'1': 'path', '3': 1, '4': 1, '5': 9, '10': 'path'},
  ],
};

const HelloReply$json = const {
  '1': 'HelloReply',
  '2': const [
    const {'1': 'message', '3': 1, '4': 1, '5': 9, '10': 'message'},
  ],
};

const GetFieldsRequest$json = const {
  '1': 'GetFieldsRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

const GetFieldsResponse$json = const {
  '1': 'GetFieldsResponse',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'fields', '3': 2, '4': 3, '5': 11, '6': '.helloworld.GetFieldsResponse.FieldsEntry', '10': 'fields'},
  ],
  '3': const [GetFieldsResponse_FieldsEntry$json],
};

const GetFieldsResponse_FieldsEntry$json = const {
  '1': 'FieldsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.helloworld.Field', '10': 'value'},
  ],
  '7': const {'7': true},
};

const SelectStream$json = const {
  '1': 'SelectStream',
};

const RemovedWidget$json = const {
  '1': 'RemovedWidget',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

const SelectedWidgetWithProperties$json = const {
  '1': 'SelectedWidgetWithProperties',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'type', '3': 2, '4': 1, '5': 9, '10': 'type'},
    const {'1': 'properties', '3': 3, '4': 3, '5': 11, '6': '.helloworld.SelectedWidgetWithProperties.PropertiesEntry', '10': 'properties'},
  ],
  '3': const [SelectedWidgetWithProperties_PropertiesEntry$json],
};

const SelectedWidgetWithProperties_PropertiesEntry$json = const {
  '1': 'PropertiesEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

