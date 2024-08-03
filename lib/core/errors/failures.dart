
abstract class Failures{
  final String errMessage;

 const Failures({required this.errMessage});
}

class ServerFailuer extends Failures {
  ServerFailuer({required super.errMessage});

  
}