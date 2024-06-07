import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:repository_viewer/home/models/repository_list.dart';
import 'package:repository_viewer/home/repository/repository_list_repository.dart';

import '../../core/shared_provider/shared_providers.dart';

final getRepositoryListRepositoryProvider =
    Provider<GetRepositoryListRepository>((ref) {
  return GetRepositoryListRepository(ref.read(dioClientProvider));
});

final isLoadingProvider = StateProvider<bool>((ref) {
  return false;
});

final getRepositoryListNotifierProvider = StateNotifierProvider((ref) {
  print('yess in 1st step');
  return GetRepositoryListNotifier(
      ref.watch(getRepositoryListRepositoryProvider));
});

class GetRepositoryListNotifier extends StateNotifier<AsyncValue> {
  final GetRepositoryListRepository _getRepositoryListRepository;

  GetRepositoryListNotifier(this._getRepositoryListRepository)
      : super(const AsyncData(null));

  Future<Either<String, RepositoriesListResponse>> getRepository() async {
    print('yess in 2nd stage');
    final response = await _getRepositoryListRepository.getRepository();
    if (response is RepositoriesListResponse) {
      return right(response);
    } else {
      return left(response);
    }
  }
}
