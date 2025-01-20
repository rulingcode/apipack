//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Login {
  /// Returns a new [Login] instance.
  Login({
    this.sessionID,
    this.userID,
    this.username,
    this.password,
  });

  String? sessionID;

  String? userID;

  String? username;

  String? password;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Login &&
    other.sessionID == sessionID &&
    other.userID == userID &&
    other.username == username &&
    other.password == password;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (sessionID == null ? 0 : sessionID!.hashCode) +
    (userID == null ? 0 : userID!.hashCode) +
    (username == null ? 0 : username!.hashCode) +
    (password == null ? 0 : password!.hashCode);

  @override
  String toString() => 'Login[sessionID=$sessionID, userID=$userID, username=$username, password=$password]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.sessionID != null) {
      json[r'_SessionID'] = this.sessionID;
    } else {
      json[r'_SessionID'] = null;
    }
    if (this.userID != null) {
      json[r'_userID'] = this.userID;
    } else {
      json[r'_userID'] = null;
    }
    if (this.username != null) {
      json[r'username'] = this.username;
    } else {
      json[r'username'] = null;
    }
    if (this.password != null) {
      json[r'password'] = this.password;
    } else {
      json[r'password'] = null;
    }
    return json;
  }

  /// Returns a new [Login] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Login? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Login[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Login[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Login(
        sessionID: mapValueOfType<String>(json, r'_SessionID'),
        userID: mapValueOfType<String>(json, r'_userID'),
        username: mapValueOfType<String>(json, r'username'),
        password: mapValueOfType<String>(json, r'password'),
      );
    }
    return null;
  }

  static List<Login> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Login>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Login.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Login> mapFromJson(dynamic json) {
    final map = <String, Login>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Login.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Login-objects as value to a dart map
  static Map<String, List<Login>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Login>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Login.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

