enum ModelSource {
  local('local'),
  firebase('firebase');

  final String string;
  const ModelSource(this.string);
}
