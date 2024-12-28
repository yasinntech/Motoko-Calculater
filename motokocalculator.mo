// Calculator with Motoko 
// To be used in the project 
// Operator
// Variables (let - > immutable , var -> mutable)
// If Condition
// Async Method


actor calculator {

  var hucre: Int = 0;

  // Addition function
  public func addition(s: Int) : async Int {
    hucre += s;
    hucre;
  };

  // Subtraction function
  public func subtraction(s: Int) : async Int {
    hucre -= s;
    hucre;
  };

  // Multiplication function
  public func multiplication(s: Int) : async Int { 
    hucre *= s;
    hucre;
  };
  
  // Division function
  public func division(s: Int) : async ?Int { 
    if (s == 0) {
      null;
    } else {
      hucre /= s;
      ?hucre;
    };
  };

  // Cleaner function
  public func clean() : async () {
    hucre := 0;
  };
};
