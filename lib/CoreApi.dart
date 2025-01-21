

import 'package:apipack/api.dart';

class CoreApi {
  CoreApi({required this.host});

  String? token;
  String? userId;
  final String host;
  final Duration retryDelay = Duration(milliseconds: 100);
  late StartApi start;

  void initializeApi() {
    start = StartApi(ApiClient(basePath: host));
  }

  Future<SendCodeOut?> registrationSendCode(SendCode p) async {
    while (true) {
      try {
        p.sessionID = token;
        p.userID = userId;
        return await start.registrationSendCodePost(p);
      } catch (e) {
        _logRetryAttempt(e.toString());
        await Future.delayed(retryDelay);
      }
    }
  }

  void _logRetryAttempt(String error) {
    print('Error occurred: $error');
  }
}
