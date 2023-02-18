abstract class BaseNetworkModel<T> {
  //fromMap instead fromJson is used for avoid Freezed issues
  T fromMap(Map<String, dynamic> json);
}
