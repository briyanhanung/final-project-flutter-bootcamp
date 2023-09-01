import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:projek/data/datasource/banner_remote_datasource.dart';
import 'package:projek/data/repository/banner_repository_impl.dart';
import 'package:projek/domain/repository/banner_repository.dart';
import 'package:projek/domain/usecase/get_banners_usecase.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GetBannersUsecase>(
      () => GetBannersUsecase(repository: Get.find<BannerRepository>()),
    );
    Get.lazyPut<BannerRepository>(
      () => BannerRepositoryImpl(
          remoteDatasource: Get.find<BannerRemoteDatasource>()),
    );
    Get.lazyPut<BannerRemoteDatasource>(
      () => BannerRemoteDatasource(client: Get.find<Dio>()),
    );
    Get.lazyPut<Dio>(
      () => Dio(),
    );
  }
}
