part of 'activity_cubit.dart';

@immutable
sealed class ActivityState {}

final class ActivityInitial extends ActivityState {}

class GetActivityLoading extends ActivityState {}

class GetActivitySuccess extends ActivityState {}

class GetActivityError extends ActivityState {
  final String error;
  GetActivityError(this.error);
}
