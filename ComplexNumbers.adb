with Ada.Text_IO; use Ada.Text_IO;
with Ada.Exceptions;
use Ada.Exceptions;

-- Course: CS 4308, Concepts of Programming Language

-- Name: Andy Martinez Reyes
-- Professor: Dr. Garrido
-- Assignment #: Four
-- Calculators.adb
--designed after Calculator.java from Assignment One

--Program does not have any mutators and Accessor 
package body ComplexNumbers is
   
   
   
   
   --Used to first populate the objects and to rest variables
   --Could be changed to using a constructor instead
   procedure starting(userInputReal: Float; userInputComplex: Float) is
   begin
      realMem := userInputReal;
      ComplexNum := userInputComplex;
      
      
      
      Dysplay(realMem,ComplexNum);
      
      
      
   end starting;
   
   
--Method used for adding numbers based on the parameters
   procedure Addition(userInputReal: Float; userInputComplex: Float) is
   begin
      realMem := realMem + userInputReal;
      ComplexNum := ComplexNum + userInputComplex;
      
      
      
      Dysplay(realMem,ComplexNum);
   end Addition;

   --Method used for subtracting numbers based on the parameters
   procedure Subtraction(userInputReal: Float; userInputComplex: Float) is
   begin
      realMem := realMem - userInputReal;
      ComplexNum := ComplexNum - userInputComplex;
      
      
      
      Dysplay(realMem,ComplexNum);
   end Subtraction;
   --Method used for multiplying numbers based on the parameters
   procedure Multiplication(userInputReal: Float; userInputComplex: Float) is
   begin
      realMem := realMem * userInputReal;
      ComplexNum := ComplexNum * userInputComplex;
      
      
      
      Dysplay(realMem,ComplexNum);
   end Multiplication;
   --Method used for dividing numbers based on the parameters
   procedure Division(userInputReal: Float; userInputComplex: Float) is
   begin
      if(userInputReal /= 0.0 and userInputComplex /= 0.0) then
         realMem := realMem / userInputReal;
         ComplexNum := ComplexNum / userInputComplex;
      else
         Put_Line("Cannot divide by zero");
      end if;
      
      
      Dysplay(realMem,ComplexNum);
   end Division;
   
   
   
   --Displays the current numbers
   procedure Dysplay(userInputReal: Float; userInputComplex: Float) is
   begin
      
   
         Put(Float'Image(realMem) & " + " & Float'Image(ComplexNum ) & "i");
      
    
      Put_Line(""); --formatting purposes
      
   end Dysplay;

end ComplexNumbers; --end of program

--references
--https://stackoverflow.com/questions/8595469/how-to-output-integers-using-the-put-line-method
--https://learn.adacore.com/courses/Ada_For_The_CPP_Java_Developer/chapters/06_Functions_and_Procedures.html
