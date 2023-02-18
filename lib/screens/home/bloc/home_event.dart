part of 'home_bloc.dart';

abstract class HomeEvent {}

class StartedEvent extends HomeEvent {}

class SearchNextPage extends HomeEvent {}

class PullToRefresh extends HomeEvent {}
