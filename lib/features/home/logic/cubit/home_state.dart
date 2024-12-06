part of 'home_cubit.dart';

@immutable
sealed class HomeState {}

final class HomeInitial extends HomeState {}
final class HomeLoading extends HomeState {}
final class HomeLoaded extends HomeState {
  final List<Recpies> resipes;

  HomeLoaded({required this.resipes});
}
final class HomeFailure extends HomeState {
  final String error;

  HomeFailure({required this.error});
}