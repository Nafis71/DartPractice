//poly means many and morphism means many forms

class Animal{
  void eat(){
    print("Animal is eating");
  }
}
class Bird extends Animal{
  @override
  void eat(){
    print("Bird is eating");
  }
}

main(){
  Bird bird = Bird();
  bird.eat();
}