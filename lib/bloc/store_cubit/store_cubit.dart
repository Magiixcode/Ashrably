import 'package:ashrably_app/model/water_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'store_state.dart';

class StoreCubit extends Cubit<StoreState> {
  StoreCubit() : super(StoreInitial());
  void storeData({bool? user}) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    late bool? newUser;
    newUser = prefs.getBool('NewUser');
    if (newUser == null || user == null) {
      await prefs.setBool('NewUser', true);
      emit(StoreData());
      newUser = true;
    } else {
      await prefs.setBool('NewUser', user);
      emit(StoreData());
    }
  }

  Future<bool> readData() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    bool? newUser = prefs.getBool('NewUser');

    if (newUser == null) {
      await prefs.setBool('NewUser', true);
      newUser = prefs.getBool('NewUser');
      return newUser!;
    } else {
      newUser = prefs.getBool('NewUser');
      emit(ReadData(newUser: newUser!));
      return newUser;
    }
  }

  void saveDoubleData({required double value, required String name}) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setDouble(name, value);
  }

  void saveIntData({required int value, required String name}) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt(name, value);
  }

  Future<double> getDoubleData({required String name}) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    // prefs.setDouble('liters', 1);
    // prefs.setInt('SizeCup', 250);
    double? liters = prefs.getDouble(name);

    emit(StoreData());
    return liters!;
  }
}
