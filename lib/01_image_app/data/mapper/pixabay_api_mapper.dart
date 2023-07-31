import 'package:imageapp_exercise/01_image_app/data/dto/pixabay_api_dto.dart';
import 'package:imageapp_exercise/01_image_app/domain/model/photo.dart';

extension ToPhoto on Hits {
  Photo tophoto() {
    return Photo(
        type: type ?? '',
        previewURL: previewURL ?? '',
        id: id ?? 0,
        tags: tags ?? '',
        user: user ?? '',
        webformatURL: webformatURL ?? '',
        likes: likes ?? 0,
        userImageURL: userImageURL ?? '',
        views: views ?? 0);
  }
}
