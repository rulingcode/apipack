//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SendCode {
  /// Returns a new [SendCode] instance.
  SendCode({
    this.sessionID,
    this.userID,
    this.mobile,
  });

  String? sessionID;

  String? userID;

  String? mobile;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SendCode &&
    other.sessionID == sessionID &&
    other.userID == userID &&
    other.mobile == mobile;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (sessionID == null ? 0 : sessionID!.hashCode) +
    (userID == null ? 0 : userID!.hashCode) +
    (mobile == null ? 0 : mobile!.hashCode);

  @override
  String toString() => 'SendCode[sessionID=$sessionID, userID=$userID, mobile=$mobile]';

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
    if (this.mobile != null) {
      json[r'mobile'] = this.mobile;
    } else {
      json[r'mobile'] = null;
    }
    return json;
  }

  /// Returns a new [SendCode] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SendCode? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SendCode[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SendCode[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SendCode(
        sessionID: mapValueOfType<String>(json, r'_SessionID'),
        userID: mapValueOfType<String>(json, r'_userID'),
        mobile: mapValueOfType<String>(json, r'mobile'),
      );
    }
    return null;
  }

  static List<SendCode> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SendCode>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SendCode.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SendCode> mapFromJson(dynamic json) {
    final map = <String, SendCode>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SendCode.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SendCode-objects as value to a dart map
  static Map<String, List<SendCode>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SendCode>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SendCode.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

