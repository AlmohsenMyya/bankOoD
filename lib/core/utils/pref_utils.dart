import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

// ignore_for_file: must_be_immutable
class PrefUtils {
  PrefUtils() {
    SharedPreferences.getInstance().then((value) {
      _sharedPreferences = value;
    });
  }

  static SharedPreferences? _sharedPreferences;

  /// Initializes the [SharedPreferences] instance and sets it to the
  /// [_sharedPreferences] variable.
  ///
  /// This method should be called at the beginning of the application startup to
  /// ensure that [SharedPreferences] is ready to use.
  ///
  /// Throws an exception if there is an error while initializing the instance.
  Future<void> init() async {
    _sharedPreferences ??= await SharedPreferences.getInstance();
    debugPrint('SharedPreference Initialized');
  }

  /// Clears all data from the SharedPreferences instance.
  void clearPreferencesData() async {
    _sharedPreferences!.clear();
  }

  Future<void> setId(String value) {
    return _sharedPreferences!.setString('id', value);
  }

  String getId() {
    try {
      return _sharedPreferences!.getString('id') ?? '';
    } catch (e) {
      return '';
    }
  }

  Future<void> setToken(String value) {
    return _sharedPreferences!.setString('token', value);
  }

  String getToken() {
    try {
      return _sharedPreferences!.getString('token') ?? '';
    } catch (e) {
      return '';
    }
  }
}
