//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SendCodeOut {
  /// Returns a new [SendCodeOut] instance.
  SendCodeOut({
    this.errorLogin,
    this.errorDev,
    this.done,
    this.errorInvalidMobile,
    this.errorOnSend,
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

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? errorInvalidMobile;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? errorOnSend;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SendCodeOut &&
    other.errorLogin == errorLogin &&
    other.errorDev == errorDev &&
    other.done == done &&
    other.errorInvalidMobile == errorInvalidMobile &&
    other.errorOnSend == errorOnSend;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (errorLogin == null ? 0 : errorLogin!.hashCode) +
    (errorDev == null ? 0 : errorDev!.hashCode) +
    (done == null ? 0 : done!.hashCode) +
    (errorInvalidMobile == null ? 0 : errorInvalidMobile!.hashCode) +
    (errorOnSend == null ? 0 : errorOnSend!.hashCode);

  @override
  String toString() => 'SendCodeOut[errorLogin=$errorLogin, errorDev=$errorDev, done=$done, errorInvalidMobile=$errorInvalidMobile, errorOnSend=$errorOnSend]';

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
    if (this.errorInvalidMobile != null) {
      json[r'errorInvalidMobile'] = this.errorInvalidMobile;
    } else {
      json[r'errorInvalidMobile'] = null;
    }
    if (this.errorOnSend != null) {
      json[r'errorOnSend'] = this.errorOnSend;
    } else {
      json[r'errorOnSend'] = null;
    }
    return json;
  }

  /// Returns a new [SendCodeOut] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SendCodeOut? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SendCodeOut[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SendCodeOut[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SendCodeOut(
        errorLogin: mapValueOfType<bool>(json, r'errorLogin'),
        errorDev: mapValueOfType<String>(json, r'errorDev'),
        done: mapValueOfType<bool>(json, r'done'),
        errorInvalidMobile: mapValueOfType<bool>(json, r'errorInvalidMobile'),
        errorOnSend: mapValueOfType<bool>(json, r'errorOnSend'),
      );
    }
    return null;
  }

  static List<SendCodeOut> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SendCodeOut>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SendCodeOut.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SendCodeOut> mapFromJson(dynamic json) {
    final map = <String, SendCodeOut>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SendCodeOut.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SendCodeOut-objects as value to a dart map
  static Map<String, List<SendCodeOut>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SendCodeOut>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SendCodeOut.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

