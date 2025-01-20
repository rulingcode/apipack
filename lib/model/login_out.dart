//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class LoginOut {
  /// Returns a new [LoginOut] instance.
  LoginOut({
    this.errorLogin,
    this.errorDev,
    this.done,
    this.userID,
    this.sessionID,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? errorLogin;

  String? errorDev;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? done;

  String? userID;

  String? sessionID;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LoginOut &&
    other.errorLogin == errorLogin &&
    other.errorDev == errorDev &&
    other.done == done &&
    other.userID == userID &&
    other.sessionID == sessionID;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (errorLogin == null ? 0 : errorLogin!.hashCode) +
    (errorDev == null ? 0 : errorDev!.hashCode) +
    (done == null ? 0 : done!.hashCode) +
    (userID == null ? 0 : userID!.hashCode) +
    (sessionID == null ? 0 : sessionID!.hashCode);

  @override
  String toString() => 'LoginOut[errorLogin=$errorLogin, errorDev=$errorDev, done=$done, userID=$userID, sessionID=$sessionID]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.errorLogin != null) {
      json[r'errorLogin'] = this.errorLogin;
    } else {
      json[r'errorLogin'] = null;
    }
    if (this.errorDev != null) {
      json[r'errorDev'] = this.errorDev;
    } else {
      json[r'errorDev'] = null;
    }
    if (this.done != null) {
      json[r'done'] = this.done;
    } else {
      json[r'done'] = null;
    }
    if (this.userID != null) {
      json[r'userID'] = this.userID;
    } else {
      json[r'userID'] = null;
    }
    if (this.sessionID != null) {
      json[r'sessionID'] = this.sessionID;
    } else {
      json[r'sessionID'] = null;
    }
    return json;
  }

  /// Returns a new [LoginOut] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LoginOut? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LoginOut[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LoginOut[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LoginOut(
        errorLogin: mapValueOfType<bool>(json, r'errorLogin'),
        errorDev: mapValueOfType<String>(json, r'errorDev'),
        done: mapValueOfType<bool>(json, r'done'),
        userID: mapValueOfType<String>(json, r'userID'),
        sessionID: mapValueOfType<String>(json, r'sessionID'),
      );
    }
    return null;
  }

  static List<LoginOut> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LoginOut>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LoginOut.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LoginOut> mapFromJson(dynamic json) {
    final map = <String, LoginOut>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LoginOut.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LoginOut-objects as value to a dart map
  static Map<String, List<LoginOut>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LoginOut>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LoginOut.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

