import 'package:get/get.dart';
import 'package:projek/domain/entity/banner_response_entity.dart';
import 'package:projek/domain/usecase/get_banners_usecase.dart';

class HomeController extends GetxController {
  final GetBannersUsecase bannersUsecase;
  HomeController(this.bannersUsecase);
  RxList<BannerDataEntity> banner = <BannerDataEntity>[].obs;
  Rx<List<BannerDataEntity>> banner2 = Rx([]);

  void getBanners() async {
    final result = await bannersUsecase.call();
    banner(result.data);
    banner2.value = result.data;
    update();
  }
}
