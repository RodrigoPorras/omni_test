part of 'dashboard_bloc.dart';

abstract class DashboardEvent {}

class DashboardChangedIndexBnbEvent extends DashboardEvent {
  final int newIndex;

  DashboardChangedIndexBnbEvent({required this.newIndex});
}
