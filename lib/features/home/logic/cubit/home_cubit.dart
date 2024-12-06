// ignore_for_file: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:recipes/core/api/repiesRepo.dart';
import 'package:recipes/core/models/recpiesModel.dart';
import 'package:recipes/features/home/ui/data/countrys.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final Recpiesrepo recipesRepo;
  final Countrys country;
  
  HomeCubit(this.recipesRepo, this.country) : super(HomeInitial());

  Future<List<Recpies>> fetchAllData() async {
    try {
      emit(HomeLoading());
      final response = await recipesRepo.getRecpies(country.ap);
      emit(HomeLoaded(resipes: response));
      return response;
    } catch (e) {
      emit(HomeFailure(error: e.toString()));
      rethrow;
    }
  }
}
