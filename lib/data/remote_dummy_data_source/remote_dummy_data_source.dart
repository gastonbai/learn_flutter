import 'package:dio/dio.dart';
import 'dart:developer';
import 'package:flutter/foundation.dart';

class evilinsultDataSource {
  final Dio dio;

  evilinsultDataSource(this.dio);

  Future<EvilinsultResponse?> getData() async {
    const url = 'https://evilinsult.com/generate_insult.php';
    try {
      final result = await dio.get(
        url,
        queryParameters: {
          'lang': 'ru',
          'type': 'json',
        },
      );

      log(evilinsultModel.toString());
    } on DioException catch (e) {
      log('${e.response?.statusCode}');
      log('Нет авторизации');
    }

    return null;
  }
}

class EvilinsultResponse {
  final int number;
  final String language;
  final String insult;
  final String createdby;
  final String comment;

  EvilinsultResponse({
    required this.number,
    required this.language,
    required this.insult,
    required this.createdby,
    required this.comment,
  });









  factory TestResponse.fromJson(Map<String, dynamic> json) {
    return TestResponse(
      lat: json['lat'] as double,
      lon: json['lon'] as double,
      current: CurrentTest.fromJson(json['current']),
    );
  }
}


