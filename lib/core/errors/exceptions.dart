class ServerException implements Exception {}

class CacheException implements Exception {}

class NetworkException implements Exception {}

/// An exception that is thrown when there is no internet connectivity.
///
/// This exception can be used to handle cases where internet connectivity is required
/// but is not available. It takes an optional [message] parameter that can be used
/// to display a message to the user. If [message] is not provided, a default message will be used.
class NoInternetException implements Exception {
  late String _message;

  NoInternetException([String message = 'NoInternetException Occurred']) {
    _message = message;
  }

  @override
  String toString() {
    return _message;
  }
}
