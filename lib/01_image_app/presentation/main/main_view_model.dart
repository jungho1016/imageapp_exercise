import 'dart:async';

import 'package:flutter/material.dart';
import 'package:imageapp_exercise/01_image_app/core/result.dart';
import 'package:imageapp_exercise/01_image_app/domain/use_case/get_top_five_most_viewed_images_use_case.dart';
import 'package:imageapp_exercise/01_image_app/presentation/main/main_state.dart';
import 'package:imageapp_exercise/01_image_app/presentation/main/main_ui_event.dart';
import 'package:injectable/injectable.dart';

@injectable
class MainViewModel with ChangeNotifier {
  final GetTopFiveMostViewdImageUseCase _getTopFiveMostViewdImageUseCase;

  MainState _state = const MainState();
  MainState get state => _state;

  final _eventController = StreamController<MainUiEvent>();

  Stream<MainUiEvent> get eventStream => _eventController.stream;

  MainViewModel(this._getTopFiveMostViewdImageUseCase);

  void getSearch(String query) async {
    _state = state.copyWith(isLoading: true);
    notifyListeners();

    final result = await _getTopFiveMostViewdImageUseCase.execute(query);

    switch (result) {
      case Success(:final data):
        {
          _state = state.copyWith(isLoading: false, photos: data);
        }
        notifyListeners();
      case Error(:final e):
        _eventController.add(ShowSnackBar(e));
    }
  }
}
