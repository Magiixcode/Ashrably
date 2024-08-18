import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'ashrably_state.dart';

class AshrablyCubit extends Cubit<AshrablyState> {
  AshrablyCubit() : super(AshrablyInitial());
}
