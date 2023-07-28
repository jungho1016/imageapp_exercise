import 'package:imageapp_exercise/01_image_app/data/data_source/pixabay_api.dart';
import 'package:imageapp_exercise/01_image_app/data/dto/pixabay_api_dto.dart';
import 'package:imageapp_exercise/01_image_app/data/mapper/pixabay_api_mapper.dart';
import 'package:imageapp_exercise/01_image_app/domain/model/photo.dart';
import 'package:imageapp_exercise/01_image_app/domain/repository/pixabay_api_repository.dart';

class PixabayApiRepositoryImple implements PixabayApiRepository {
  final PixabayApi _api = PixabayApi();
  @override
  Future<List<Photo>> getPhoto(String query) async {
    final PixabayApiDto resultDto = await _api.getImage(query);
    if (resultDto.hits == null) {
      return [];
    }
    return resultDto.hits!.map((e) => e.tophoto()).toList();
  }
}
