
class ApiExceptions implements Exception {
  final String? message;
  final String? url;
  final String? prefix;

  const ApiExceptions({this.message, this.prefix, this.url});
}

class BadRequestException extends ApiExceptions {
  BadRequestException({String? message, String? url})
      : super(message: 'Bad Request', url: url);
}


class UnAuthorizedException extends ApiExceptions {
  UnAuthorizedException({String? message, String? url})
      : super(message: 'UnAuthorized Request', url: url);
}

class FetchDataException extends ApiExceptions {
  FetchDataException({String? message, String? url})
      : super(message: 'Bad Request', url: url);
}


class TimeOutException extends ApiExceptions {
  TimeOutException({String? message, String? url})
      : super(message: 'TimeOut', url: url);
}

class SocketExceptionError extends ApiExceptions {
  SocketExceptionError({String? message, String? url})
      : super(message: 'TimeOut', url: url);
}




