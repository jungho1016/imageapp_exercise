import 'package:imageapp_exercise/01_image_app/domain/model/photo.dart';

abstract interface class PixabayApiRepository {
  Future<List<Photo>> getPhoto(String query);
}
