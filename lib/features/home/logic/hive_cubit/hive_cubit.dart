import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:recipes/core/models/recpiesModel.dart';

part 'hive_state.dart';

class HiveCubit extends Cubit<HiveState> {
  HiveCubit() : super(HiveInitial());


  List<Recpies>? recpies;

   addArtical(Recpies recpies) async {
    try {
      var notebox = Hive.box<Recpies>('recpiesBox');

      await notebox.add(recpies);
      print('object');
      emit(AddRecpiesSuccess());
    } catch (e) {
      emit(AddRecpiesfailure(error: e.toString()));
    }
  }
  fatchAllArticales() {
    var notebox = Hive.box<Recpies>('recpiesBox');
    recpies = notebox.values.toList();
    emit(RecpiesSuccess());
  }
  
}
