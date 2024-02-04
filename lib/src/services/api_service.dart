import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio = Dio();

  Future<Response> login(String login, String password) async {
    final data = {'login': login, 'password': password};

    try {
      final response = await _dio.post(
        'https://peanut.ifxdb.com/api/ClientCabinetBasic/IsAccountCredentialsCorrect',
        data: data,
      );

      return response;
    } catch (e) {
      throw Exception('Failed to log in');
    }
  }
}
