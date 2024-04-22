import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'activity_state.dart';

class ActivityCubit extends Cubit<ActivityState> {
  ActivityCubit() : super(ActivityInitial());
  static ActivityCubit get(context) => BlocProvider.of(context);

  Future<void> getActivity() async {
    emit(GetActivityLoading());
  }
}
