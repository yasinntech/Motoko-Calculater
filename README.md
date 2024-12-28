# Calculator Smart Contract

This project contains a Motoko-based calculator smart contract designed to perform basic arithmetic operations. It demonstrates key programming concepts like variable mutability, conditions, and asynchronous methods in Motoko.

## Features

The calculator provides the following functionalities:

1. Addition
   - Adds a given integer to the current value stored in the calculator.
   - Function: `addition(s: Int) : async Int`

2. **Subtraction**
   - Subtracts a given integer from the current value stored in the calculator.
   - Function: `subtraction(s: Int) : async Int`

3. **Multiplication**
   - Multiplies the current value stored in the calculator by a given integer.
   - Function: `multiplication(s: Int) : async Int`

4. **Division**
   - Divides the current value stored in the calculator by a given integer.
   - Handles division by zero by returning `null`.
   - Function: `division(s: Int) : async ?Int`

5. **Reset (Clean)**
   - Resets the current value stored in the calculator to `0`.
   - Function: `clean() : async ()`

## Implementation Details

- **Variable Mutability**
  - The state variable `hucre` ("cell") is declared as `var`, allowing it to be mutable.
- **Asynchronous Methods**
  - Each function uses the `async` keyword to handle potentially asynchronous computations, a common pattern in distributed systems.
- **Error Handling**
  - The `division` function includes a safeguard for division by zero, returning `null` instead of throwing an error.

### Initialization
Create an instance of the `calculator` actor to start using the calculator:
```motoko
let calc = calculator;
```

### Perform Operations

1. **Addition**
   ```motoko
await calc.addition(10); // Adds 10 to the current value
```

2. **Subtraction**
   ```motoko
await calc.subtraction(5); // Subtracts 5 from the current value
```

3. **Multiplication**
   ```motoko
await calc.multiplication(3); // Multiplies the current value by 3
```

4. **Division**
   ```motoko
await calc.division(2); // Divides the current value by 2
await calc.division(0); // Returns null (safe handling of division by zero)
```

5. **Reset**
   ```motoko
await calc.clean(); // Resets the value to 0
```

## Requirements
- Internet Computer SDK
- Motoko compiler


