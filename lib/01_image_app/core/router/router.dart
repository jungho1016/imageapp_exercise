import 'package:go_router/go_router.dart';
import 'package:imageapp_exercise/01_image_app/core/di/di_setting.dart';
import 'package:imageapp_exercise/01_image_app/domain/model/photo.dart';
import 'package:imageapp_exercise/01_image_app/presentation/detail/detail.dart';
import 'package:imageapp_exercise/01_image_app/presentation/main/main_screen.dart';
import 'package:imageapp_exercise/01_image_app/presentation/main/main_view_model.dart';
import 'package:provider/provider.dart';

// GoRouter configuration
final router = GoRouter(
  routes: [
    GoRoute(
        path: '/',
        builder: (context, state) {
          return ChangeNotifierProvider(
            create: (_) => getIt<MainViewModel>(),
            child: MainScreen(),
          );
        },
        routes: [
          GoRoute(
              path: '/main/detail',
              builder: (context, state) {
                final photo = state.extra as Photo;
                return DetailScreen(photo: photo);
              }),
        ]),
  ],
);
