// ignore_for_file: depend_on_referenced_packages

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:recipes/core/api/repiesRepo.dart';
import 'package:recipes/core/models/recpiesModel.dart';
import 'package:recipes/features/home/data/countrys.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final Recpiesrepo recipesRepo;
  
  
  HomeCubit(this.recipesRepo,) : super(HomeInitial());

  Future<List<Recpies>> fetchAllData(String country) async {
    try {
      emit(HomeLoading());
      final response = await recipesRepo.getRecpies(country);
      emit(HomeLoaded(resipes: response));
      return response;
    } catch (e) {
      emit(HomeFailure(error: e.toString()));
      rethrow;
    }
  }
}
