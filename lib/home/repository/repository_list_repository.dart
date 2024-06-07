import 'package:dio/dio.dart';
import 'package:repository_viewer/core/network/api_endpoints.dart';
import 'package:repository_viewer/home/models/repository_list.dart';

import '../../core/network/dio_client.dart';
import '../../core/network/dio_exceptions.dart';

class GetRepositoryListRepository {
  final DioClient _dioClient;

  GetRepositoryListRepository(this._dioClient);

  Future<dynamic> getRepository() async {
    try {
      print('yess in 3rd stage');
      final response = await _dioClient.get(ApiEndpoints.getRepository, null);
      return RepositoriesListResponse.fromJson(
          response.data as Map<String, dynamic>);
    } on DioException catch (e) {
      return DioExceptions.fromDioError(e).message;
    }
  }
}
