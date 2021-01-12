part of 'time_cubit.dart';

@immutable
abstract class TimeState {
  const TimeState();
}

class TimeInitial extends TimeState {
  const TimeInitial();
}

class TimeLoading extends TimeState {
  const TimeLoading();
}

class TimeLoaded extends TimeState {
  final Time time;
  const TimeLoaded(this.time);

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is TimeLoaded && o.time == time;
  }

  @override
  int get hashCode => time.hashCode;
}

class TimeError extends TimeState {
  final String message;
  const TimeError(this.message);

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is TimeError && o.message == message;
  }

  @override
  int get hashCode => message.hashCode;
}
