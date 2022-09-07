part of 'event_cubit.dart';

abstract class EventState {}

class EventInitial extends EventState {}

class EventLoaded extends EventState {
  final List<EventModel> events;

  EventLoaded({required this.events});
}

class EventLoading extends EventState {}

class EventError extends EventState {
  final String message;

  EventError({required this.message});
}
