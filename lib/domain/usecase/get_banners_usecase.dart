import 'package:projek/domain/entity/banner_response_entity.dart';
import 'package:projek/domain/repository/banner_repository.dart';

class GetBannersUsecase {
  final BannerRepository repository;
  const GetBannersUsecase({required this.repository});
  Future<BannerResponseEntity> call() async => await repository.getBanners();
}
