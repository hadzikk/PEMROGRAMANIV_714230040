import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'user.dart';

final Dio dio = Dio(
  BaseOptions(
    baseUrl: 'https://reqres.in/api',
    headers: {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'x-api-key': 'reqres_bbca121c38f748198e21e44314b34e2b'
    }
  )
);

class DataService {
  Future<dynamic> getUsers() async {
    try {
      final response = await dio.get('/users');
      debugPrint('STATUS: ${response.statusCode}');
      debugPrint('DATA: ${response.data}');
      return response.data;
    } catch (e) {
      debugPrint('ERROR: $e');
      return null;
    }
  }

  Future postUser(String name, String job) async {}

  Future putUser(String idUser, String name, String job) async {}

  Future deleteUser(String idUser) async {}

  Future<Iterable<User>?> getUserModel() async {
    return [];
  }
}