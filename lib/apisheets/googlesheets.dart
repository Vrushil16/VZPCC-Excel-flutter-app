import 'package:gsheets/gsheets.dart';
import 'package:vzpcc/model/user.dart';

class UserSheetsApi {
  static const _Credential = r'''
  {
  "type": "service_account",
  "project_id": "arboreal-vector-380711",
  "private_key_id": "3edbc83e101b2095ac74a94e70a8d9c448bd5240",
  "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQCuQJkPFYasTyNa\nD3OKSb4CSZ6zUp7cbptUOo+Pb1QpOIYBGTDZ+/girDF7ZhXXmiLH9F8DSMMYWkhL\ne+k55bxEfmSjCPBnNdpJZCv65VkBSDhyBQXn0teiOBWsK9s8QsZgbwuaWKthwgrP\n4xL0AJuikEQGjROeiAS4l52T7b1PYU8VRlNuZEovL2xdpSsT4rQcCFcddPXo4baS\nZaw6yNavr52jV7DouHelKyoJtwRao5oypeWMM7FeBkno2r7b9d6WeNLfswkJFa1d\nL67WHjMdYe+hK5Cd4Rbg6jqjUfSGzYH/78h1f7b1XaIcsjSn704Jh7p78QYn8bW5\npZxk8F/fAgMBAAECggEACxPJff40Zkmp6buKJ7i9YSkihYdltBgYzsUrHwc/sekk\nwNJof2Z3bmaOEChga820JVVBanAapBIJyBRhaUcKkjvUJq1o3vo7OLnh/0oUdqBU\no2uFCoSBbljsiFo3YOUb0XiSSFQ8RgXhhDhodYpcEVgtwuNsml1zYRhwn4ZzlYDz\nMIvkBqJcffp6nVhkHNq7cdL/oxCoxjMdAA02CtchyPHD8qL47GHWFw3mIlAK6apY\nqO7Ijce2z7+ionsck29ejE9A1LEBMmNVbqNqtJzM9XvCrxK6kth3sgWWCa5xCevn\nTpJhzpKAsb6Cw/fXSMt8khmeVIjrjDHmJQsz/yyB8QKBgQDrSOttTGz/oSVk8xay\n8S3PgGTj+ROBIQ4neqJFmxE0Rp3AqsWQGyXXz1F7AJ4k/4TIOB9QjlQ32DMMziya\nvQk1jEdupAdYYgPWCiHDdTwBBuBlhyDVaXF5O2LImA79vQiwKbcbYXsMOfJezEhz\n8AWEcs+v6jSN85m92dqDL8S6kQKBgQC9mBFbI4bRiWSYfC2eZbpmgvQdNHzjicAP\nLnNRIcfKpP/HM/NlAA2D2Cae9oeHSkJh2z1bH2FJz8wLHnYtX9rhnefHUJp2DEC/\nx2ZWby7GmIkfSpKV0Zi0HEMJ256mnzCYpQau+iFR3pNp0g39Fxc0bi7mpy7q7VdE\nX9pp68tLbwKBgQCSEhhPJ+Z3oaTkkmJiP4cwTsbUHbt1LH9sFR+PVSEOMlUX2y2C\nNMh+vfAZDB4iXBwkbWtLiMFSVkADUDCy9G82NlvWnbENtvQouuuRPEQ/YvSHM6g3\nthnDqRG/9V9BOk2diJhsQE2zHnqRTgQhLj9OpjS4Qw/TnQuyqQCW914McQKBgFRE\np8ozczPk9mJUJ06U9pGjuO7WKoBT9JqK0dSIyC2Iwur+aztEF723MAtNlhWK6xBl\nitLakrpk8tMqWep3BWlsbt2HNPAtKAZVkWXviwHYQHI5CggvHclIGn/iLpTugoIG\nL39MS80AudK5+1+3iKfUJWJ9gnwGu9f3JrQXisdfAoGBAITfgrLOq1oKeF1MgiAd\na9DJiT7hQNPVIG4UhMU9Kbeq8WtrsWXGuPxPyr7aB18w72IK+mcC9CJDk22+7pxw\njFjiajasFebhHxVX2s1FGZbcpDw20kDw4edcfDQv3ALitHLoBaEaTCpibZ4RyiNk\n3l5HdeHHX4KwBCKbytmrNcnW\n-----END PRIVATE KEY-----\n",
  "client_email": "gsheets@arboreal-vector-380711.iam.gserviceaccount.com",
  "client_id": "107952738600117998914",
  "auth_uri": "https://accounts.google.com/o/oauth2/auth",
  "token_uri": "https://oauth2.googleapis.com/token",
  "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
  "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/gsheets%40arboreal-vector-380711.iam.gserviceaccount.com"
}


''';
  static final _spreadsheetId = "1Y7H2Hc6qfHpcgM-t_SYcyZJRTpmtp253XSpyeDlJFCE";
  static final _gsheets = GSheets(_Credential);
  static Worksheet? _userSheet;

  static Future init() async {
    try {
      final spreedsheet = await _gsheets.spreadsheet(_spreadsheetId);

      _userSheet = await _getWorkSheet(spreedsheet, title: "GFY");
      final firstRow = UserFields.getFields();
      _userSheet!.values.insertRow(1, firstRow);
    } catch (e) {
      print('Init Error: $e');
    }
  }

  static Future<Worksheet> _getWorkSheet(
    Spreadsheet spreadsheet, {
    required String title,
  }) async {
    try {
      return await spreadsheet.addWorksheet(title);
    } catch (e) {
      return spreadsheet.worksheetByTitle(title)!;
    }
  }

  static Future<int> getRowCount() async {
    if (_userSheet == null) return 0;
    final lastRow = await _userSheet!.values.lastRow();
    return lastRow == null ? 0 : int.tryParse(lastRow.first) ?? 0;
  }

  static Future<List<User>> getAll() async {
    if (_userSheet == null) return <User>[];

    final users = await _userSheet!.values.map.allRows();
    return users == null ? <User>[] : users.map(User.fromJson).toList();
  }

  static Future<User?> getById(int id) async {
    if (_userSheet == null) return null;

    final json = await _userSheet!.values.map.rowByKey(id, fromColumn: 1);
    return json == null ? null : User.fromJson(json);
  }

  static Future insert(List<Map<String, dynamic>> rowList) async {
    if (_userSheet == null) return;
    _userSheet!.values.map.appendRows(rowList);
  }

  static Future<bool> update(
    int id,
    Map<String, dynamic> user,
  ) async {
    if (_userSheet == null) return false;

    return _userSheet!.values.map.insertRowByKey(id, user);
  }

  static Future<bool> updateCell({
    required int id,
    required String key,
    required dynamic value,
  }) async {
    if (_userSheet == null) return false;

    return _userSheet!.values.insertValueByKeys(
      value,
      columnKey: key,
      rowKey: id,
    );
  }

  static Future<bool> deleteById(int id) async {
    if (_userSheet == null) return false;
    final index = await _userSheet!.values.rowIndexOf(id);
    if (index == -1) return false;

    return _userSheet!.deleteRow(index);
  }
}
