import 'electricVariant.dart';

class Tesla with ElectricVariant{
  @override
  void useFuel() {
    print("Tesla's engine has started..");
    super.useFuel();
  }
}