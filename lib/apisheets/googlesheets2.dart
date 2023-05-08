import 'package:gsheets/gsheets.dart';

import '../model/user2.dart';

class UserSheetsApi2 {
  static const _Credential2 = r'''
  {
  "type": "service_account",
  "project_id": "arboreal-vector-380711",
  "private_key_id": "44736dae52ac642d89c9a389c54ee0e2b56ac1fa",
  "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQC3PLVDpZvfdBxN\nNPZyDu8adPU8I0aWxy43EzitYN7xUweTrUygSB+ljndShVsyjsenwkIjmslIIuMd\ncdR2TzZJA+Sp4Mnrj08P2HiS+N+l2RlFT/p7g6Spy+IS3lCQeM0XGbLtLgtJfpQR\ny48il8Ls/AR8I3N/yQbOnmNUtE6V3l1j3A9n4LqET612Kp7MIh0vYXV/2ZvoBRhS\nELrMU4dJJB+/vxJRQZ7Txo7VGSA3+IEblijsqf8IKnFNMznbB62ruS69Gn7MMEoW\no1t6zSol9kTKmtznhxYAhI8vfs+BU0Qnyeh1CxJt+vX35doTMfFy5TPgBgL3Q9u7\nbwr+x3K5AgMBAAECggEABj+K881SIR7Bt01CyRViyF1sHlqaldohZI3ifSEEQSji\nZYH/jqie8aOHxJfZCgKN4tXQMQweaHgOFAs1YjplwLwiADvyzrZCjSkFxYc4gxyB\nzNgDE9KjmwmhgiC0ERUZczv0Wrua9WzcSjYNgbG4myGl2oDP96/IbGPAwdrrIheV\n91FatUqwnRxiT7ugy6TmJZ5rlrDqowDJSNfFdCTEkb2zEffkETx0Y6CUCo9J/K15\n6Vcjo3riooBjcV2RePulenwrTZ+jnCkoUUQlGZY3NQZGETRC6MyRFCCcfe6GGVgR\nHNxDLY3+RF7Mrp+IXYRdJvm69wkEBPuyJZoymgf/zQKBgQDrrbOgYR5Nx7XEFw1f\n/TAiHnUviiNMSHCGZL70ANlQ28jL1twU8drC4VQPNxI2Ox1EZY4Ml5DcMPaDjAFz\n+VGrVMBKh3M5DvvG6zQkrGn8+f/CSljMhoz2iQJW1CpurSPu85MoFgDdRLguZ1V4\nP2KQMK1Ta500sa3/PiDr9pJKtQKBgQDHCW5Ht7M6f7dGZ6B2w/un5dBxBPnU8ezN\nFFjuTBFXrO6jMM1zEANiFKU6CdeKXg9SCgXSbml0Po6E0pOmQkQ7i2R7ao4v2oAX\njgM7w0SkidBLodA9yuntcRJmzbXNlaXfbAQdNbHgzsFic2n6qmavxnwLGIKwUObO\nvMk3CJjWdQKBgBhQNizAeCjcBoNxQV76tsF+VOaPoK6Y9orWz+BKSiEOW3uz8cZz\nYPcj2dEsBEP1+0H4HBxucnJU1smhYvD88pDzUFcf/CIRyqWt1BZIdzKy89CubNTE\nuLwiTEx63NnIIOHg3PiQtIwfL8URwf6Cw39OlkL54iDyh5nCZhERwevVAoGAJ2GH\nT2taa/2vHqAMUNNwLIU9G8+XOvnvF5iqC+RDHizaPrG+RMDrWnGpS3V9DySTNXFE\nO6Ga/eQOwNsFWcUMyRdId17a6T77Ty3LF/0HzOJzszM+B6vpYxCXSn3zNc0hN7ag\njcL9AfUGsFsTogQrMyY7jtp3qTkoockaqufpja0CgYEAqDzb0wGjj/NadMaqSP/5\naOIxGqy30EgotCMXPYBoQ97PRcI/nCUE6LuvGB47hiNIL7QYrQA0uo+qDJ/KYNsJ\ntVWjRMxIt7FQu/6HMO7QvS2G1Cn4F372SrtBvupj2JYajXidKGcuxdk7wlOPk8Bc\nO7ULVs/pRz7xT1fDTX07q78=\n-----END PRIVATE KEY-----\n",
  "client_email": "gsheet@arboreal-vector-380711.iam.gserviceaccount.com",
  "client_id": "106599100224213774021",
  "auth_uri": "https://accounts.google.com/o/oauth2/auth",
  "token_uri": "https://oauth2.googleapis.com/token",
  "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
  "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/gsheet%40arboreal-vector-380711.iam.gserviceaccount.com"
}


''';
  static final _spreadsheetId2 = "1iE3Z8BwC_1rLBLQqACAX3bCgE57RneS4jVta4paLqxg";
  static final _gsheet2 = GSheets(_Credential2);
  static Worksheet? _userSheet2;

  static Future init() async {
    try {
      final spreedsheet2 = await _gsheet2.spreadsheet(_spreadsheetId2);

      _userSheet2 = await _getWorkSheet(spreedsheet2, title: "EFY");
      final firstRow = UserFields2.getFields2();
      _userSheet2!.values.insertRow(1, firstRow);
    } catch (e) {
      print('Init Error: $e');
    }
  }

  static Future<Worksheet> _getWorkSheet(
    Spreadsheet spreadsheet2, {
    required String title,
  }) async {
    try {
      return await spreadsheet2.addWorksheet(title);
    } catch (e) {
      return spreadsheet2.worksheetByTitle(title)!;
    }
  }

  static Future<int> getRowCount() async {
    if (_userSheet2 == null) return 0;
    final lastRow = await _userSheet2!.values.lastRow();
    return lastRow == null ? 0 : int.tryParse(lastRow.first) ?? 0;
  }

  static Future<List<User2>> getAll() async {
    if (_userSheet2 == null) return <User2>[];

    final users = await _userSheet2!.values.map.allRows();
    return users == null ? <User2>[] : users.map(User2.fromJson).toList();
  }

  static Future<User2?> getById(int id) async {
    if (_userSheet2 == null) return null;

    final json = await _userSheet2!.values.map.rowByKey(id, fromColumn: 1);
    return json == null ? null : User2.fromJson(json);
  }

  static Future insert(List<Map<String, dynamic>> rowList) async {
    if (_userSheet2 == null) return;
    _userSheet2!.values.map.appendRows(rowList);
  }

  static Future<bool> update(
    int id,
    Map<String, dynamic> user,
  ) async {
    if (_userSheet2 == null) return false;

    return _userSheet2!.values.map.insertRowByKey(id, user);
  }

  static Future<bool> updateCell({
    required int id,
    required String key,
    required dynamic value,
  }) async {
    if (_userSheet2 == null) return false;

    return _userSheet2!.values.insertValueByKeys(
      value,
      columnKey: key,
      rowKey: id,
    );
  }

  static Future<bool> deleteById(int id) async {
    if (_userSheet2 == null) return false;
    final index = await _userSheet2!.values.rowIndexOf(id);
    if (index == -1) return false;

    return _userSheet2!.deleteRow(index);
  }
}
