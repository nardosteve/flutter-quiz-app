//Function to add two numbers
double addNumbers(double num1, double num2) {
  return num1 + num2;
}

void getAverage() {
  print("The Average: 76.5");
}

//Data types
//int, string, double, boolean

//Objects: car/house
//class - is a blueprint in which individual objects are created
//Mobile App: Button, Textfield
class Person {
  String? name;
  int? age;
  double? weight;

  //Create a constructor with the same class name
  //Creating named arugments using - the curly braces
  Person(
      {required String inputName,
      required int inputAge,
      required double inputWeight}) {
    //this.name - we are saying we want the class level name
    //this.name = inputName;
    name = inputName;
    age = inputAge;
    weight = inputWeight;
  }
  //Shorter method of creating a constructor
  //Person({this.name, this.age, this.weight});

  //Another type of constructor
  Person.veryOld(this.name) {
    age = 22;
  }
}

//Main method
void main() {
  //Calling the function addNumbers() - and passing arguments
  double sum = addNumbers(53.9, 39);
  print(sum);

  //Calling a void method - doesn't return anything
  getAverage();

  //Creating an instance of the class - Person
  //Accessing class properties using the . operator
  var stephen =
      Person(inputName: 'Stephen M Muroki', inputAge: 22, inputWeight: 63.3);
  print(
    stephen.name,
  );
  print(stephen.age);
  print(stephen.weight);

  var newUser = Person.veryOld('Nardosteve');
  print(newUser.name);
  print(newUser.age);

  //If statements
  var isLoggedIn = false;
  var userName = 'nardosteve';
  var password = '12345';

  //Helper variable
  //var hasCorrectCredentials = userName == 'nardosteve' && password == '12345';

  var age = 20;

  if (userName == 'nardosteve' && (password == '12345' && isLoggedIn == true)) {
    print('Logged In!');
  } else if (password.length < 5) {
    print("Your password is short");
  } else {
    print('Incorrect Credentials');
  }

  //Question mark - it may or may not be null
  String? accountName = 'nardosteve';
  var link = 'www.youtube.com/nardosteve';

  //Check isEmpty
  if (accountName != null) {
    //Do something
  }
}
