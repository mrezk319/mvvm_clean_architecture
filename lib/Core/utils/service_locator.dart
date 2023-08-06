import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:mvvm_clean_arch/Core/utils/api_service.dart';
import 'package:mvvm_clean_arch/Features/home/data/repos/home_repo.dart';
import 'package:mvvm_clean_arch/Features/home/data/repos/home_repo_impl.dart';
import 'package:mvvm_clean_arch/Features/search/data/repo/search_repo_impl.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(getIt.get<ApiService>()));
  getIt.registerSingleton<SearchRepoImpl>(
      SearchRepoImpl(getIt.get<ApiService>()));
// Alternatively you could write it if you don't like global variables
}
