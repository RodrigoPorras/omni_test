part of 'dashboard_bloc.dart';

class DashboardState {
  final int currentIndexBnb;

  DashboardState([this.currentIndexBnb = 0]);
}

class DashboardInitialState extends DashboardState {
}

class DashboardNewBnbIndex extends DashboardState {
  DashboardNewBnbIndex({required int newIndex}) : super(newIndex);
}

