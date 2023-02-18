part of 'home_bloc.dart';

class HomeState extends Equatable {
  final List<Photo> photos;

  const HomeState(this.photos);

  @override
  List<Object?> get props => [photos];
}

class InitialState extends HomeState {
  const InitialState({required List<Photo> data}) : super(data);
}

class PhotosLoadedState extends HomeState {
  const PhotosLoadedState({required List<Photo> data}) : super(data);
}

class LoadingNextPhotosState extends HomeState {
  const LoadingNextPhotosState({required List<Photo> data}) : super(data);
}

class PullToRefreshState extends HomeState {
  const PullToRefreshState({required List<Photo> data}) : super(data);
}

class ErrorState extends HomeState {
  final String errorMessage;
  const ErrorState({required this.errorMessage, required List<Photo> data})
      : super(data);
}
