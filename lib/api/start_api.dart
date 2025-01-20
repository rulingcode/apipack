//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class StartApi {
  StartApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'POST /Registration/Login' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [Login] login (required):
  Future<Response> registrationLoginPostWithHttpInfo(Login login,) async {
    // ignore: prefer_const_declarations
    final path = r'/Registration/Login';

    // ignore: prefer_final_locals
    Object? postBody = login;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [Login] login (required):
  Future<LoginOut?> registrationLoginPost(Login login,) async {
    final response = await registrationLoginPostWithHttpInfo(login,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'LoginOut',) as LoginOut;
    
    }
    return null;
  }

  /// Performs an HTTP 'POST /Registration/SendCode' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [SendCode] sendCode (required):
  Future<Response> registrationSendCodePostWithHttpInfo(SendCode sendCode,) async {
    // ignore: prefer_const_declarations
    final path = r'/Registration/SendCode';

    // ignore: prefer_final_locals
    Object? postBody = sendCode;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [SendCode] sendCode (required):
  Future<SendCodeOut?> registrationSendCodePost(SendCode sendCode,) async {
    final response = await registrationSendCodePostWithHttpInfo(sendCode,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SendCodeOut',) as SendCodeOut;
    
    }
    return null;
  }
}
