

-- Course: CS 4308, Concepts of Programming Language

-- Name: Andy Martinez Reyes
-- Professor: Dr. Garrido
-- Assignment #: Four
-- Calculators.ads

package ComplexNumbers is
   --Main two variables used
   realMem: Float;
   ComplexNum: Float;
 --Variables can be changed to doubles, but would require a bit of change in the methods
--Currently set to Floats, and it is shown in scientific notation. This can be changed.

   
   --All the methods used for calculations
   procedure Addition(userInputReal: Float; userInputComplex: Float);
   procedure Subtraction(userInputReal: Float;  userInputComplex: Float);
   procedure Multiplication(userInputReal:Float; userInputComplex: Float);
   procedure Division(userInputReal: Float;  userInputComplex: Float);
   procedure starting(userInputReal:Float;  userInputComplex: Float);

   --Method to display the current numbers
   procedure Dysplay(userInputReal: Float; userInputComplex: Float);
   
end ComplexNumbers;
