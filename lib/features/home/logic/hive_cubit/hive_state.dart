part of 'hive_cubit.dart';

@immutable
sealed class HiveState {}

final class HiveInitial extends HiveState {}

final class RecpiesSuccess extends HiveState {}

final class AddRecpiesSuccess extends HiveState {}

final class AddRecpiesfailure extends HiveState {
  final String error;

  AddRecpiesfailure({required this.error});
}
