abstract class ThingsException {
  final String message;
  final StackTrace? stackTrace;

  ThingsException(this.message, [this.stackTrace]);

  @override
  String toString() {
    var stackTraceMessage = '';
    if (stackTrace != null) {
      stackTraceMessage = '\n$stackTrace';
    }
    return '$runtimeType: $message$stackTraceMessage';
  }
}
