import 'package:apipack/api.dart';

class CoreApi {
  String? token;
  String? userId;
  final String host;
  final Duration retryDelay = Duration(milliseconds: 2000);
  late StartApi start;

  CoreApi({required this.host}) {
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
