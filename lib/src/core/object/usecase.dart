abstract class UseCase<O, I> {
  Future<O> call(I params);
}
