enum ModelDownloadStategy {
  localFirst('local'),
  remoteFirst('remote'),
  backgroundUpdate('background');

  final String string;
  const ModelDownloadStategy(this.string);
}
