import 'package:anime_app/features/home/view.dart';
import 'package:anime_app/features/profile/view.dart';
import 'package:anime_app/features/search/view.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'base_state.dart';

class BaseCubit extends Cubit<BaseState> {
  BaseCubit() : super(BaseInitial());
  static BaseCubit of(context) => BlocProvider.of(context);
  int bottomNvaIndex = 0;

  // int get bottomNavIndex => bottomNvaIndex;
  // set bottomNavIndex(int bottomNavIndex) => bottomNavIndex = bottomNvaIndex;

  List page = const [
    HomeView(),
    SearchView(),
    ProfileView(),
  ];

  void bottomNAvController(int value) {
    bottomNvaIndex = value;
    emit(BaseChangeBottomNavBar());
  }
}
