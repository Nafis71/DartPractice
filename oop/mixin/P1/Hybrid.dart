import 'electricVariant.dart';
import 'patrolVariant.dart';

class Hybrid with PatrolVariant,ElectricVariant{
  @override
  void useFuel() {
    print("Hybrid car's engine has started..");
    super.useFuel();
  }
}