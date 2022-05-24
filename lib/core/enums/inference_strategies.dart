enum InferenceStrategy {
  none('none'),
  resizeImage('resize'),
  tileImage('tile');

  final String string;
  const InferenceStrategy(this.string);
}
