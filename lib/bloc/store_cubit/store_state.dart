part of 'store_cubit.dart';

sealed class StoreState {}

final class StoreInitial extends StoreState {}

final class StoreData extends StoreState {}

final class ReadData extends StoreState {
  final bool newUser;

  ReadData({required this.newUser});
}
