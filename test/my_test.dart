import 'package:flutter_test/flutter_test.dart';
import 'package:apipack/CoreApi.dart';
import 'package:apipack/api.dart';

void main() {
  test('Registration send code', () async {
    var core = CoreApi(host: "https://localhost:44384");
    var a = await core.registrationSendCode(SendCode(mobile: "123"));
    expect(a, isNotNull);
  });
}
