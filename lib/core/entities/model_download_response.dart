class ModelDownloadResponse {
  final String name;
  final DateTime downloadDate;
  final bool success;

  ModelDownloadResponse({
    required this.name,
    required this.downloadDate,
    required this.success,
  });
}
