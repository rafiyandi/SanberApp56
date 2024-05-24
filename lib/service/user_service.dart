import 'package:dio/dio.dart';

import '../model/users_model.dart';

class UserService {
  Dio dio = Dio();
  static const url = 'https://reqres.in/api/users';
  Future<List<UsersModel>> fetchDataUser() async {
    try {
      final response = await dio.get(url,
          options: Options(headers: {'Accept': 'aplication/json'}));

      if (response.statusCode == 200 || response.statusCode == 201) {
        final data = response.data['data'];
        List<UsersModel> users = List<UsersModel>.from(
            data.map((user) => UsersModel.fromJson(user)));
        return users;
      }
      throw Exception();
    } catch (e) {
      rethrow;
    }
  }
}
