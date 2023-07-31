import 'package:imageapp_exercise/01_image_app/core/result.dart';
import 'package:imageapp_exercise/01_image_app/domain/repository/pixabay_api_repository.dart';
import 'package:injectable/injectable.dart';

import '../model/photo.dart';

@singleton
class GetTopFiveMostViewdImageUseCase {
  final PixabayApiRepository _repository;

  GetTopFiveMostViewdImageUseCase(this._repository);

  Future<Result<List<Photo>>> execute(String query) async {
    try {
      final photos = await _repository.getPhoto(query);
      photos.sort((a, b) => -a.views.compareTo(b.views));
      return Result.success(photos.take(5).toList());
    } catch (e) {
      return Result.error('네트워크 에러');
    }
  }
}
