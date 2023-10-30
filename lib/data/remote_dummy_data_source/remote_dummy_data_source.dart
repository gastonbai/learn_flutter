import 'package:dio/dio.dart';
import 'dart:developer';
import 'package:learn_flutter/data/remote_dummy_data_source/remote_dummy_data_source.dart';
import 'package:learn_flutter/domain/lockal_evilinsult_data_source.dart';

class EvilinsultDataSource {
  final Dio dio;

  EvilinsultDataSource(this.dio);

  Future<EvilinsultResponse?> getData() async {
    const url = 'https://evilinsult.com/generate_insult.php';
    try {
      final result = await dio.get(
        url,
        queryParameters: {
          'lang': 'en',
          'type': 'json',
        },
      );

      log('$result.data');

      return EvilinsultResponse.fromJson(result.data);
    } on DioException catch (e) {
      log('${e.response?.statusCode}');
      log('Нет авторизации');
    }
    return null;
  }
}
