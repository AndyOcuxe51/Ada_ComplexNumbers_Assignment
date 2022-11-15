with Ada.Text_IO, Ada.Exceptions,ComplexNumbers; use Ada.Text_IO, Ada.Exceptions,ComplexNumbers;



with ComplexNumbers; --object used to handle ComplexNumbers objects

-- Course: CS 4308, Concepts of Programming Language

-- Name: Andy Martinez Reyes
-- Professor: Dr. Garrido
-- Assignment #: Four
-- main.adb
--designed after Tester.java from Assignment One


--Purpose of this project is to create a program that can do basic math operations
--this is the main that tests the program functions of the Calcuator files
procedure Main is
--Creation of varibales used in this program
   userNumberInputReal: Float;
   userNumberInputComplex: Float;

   userMenuSelection: Integer := 8; --used for menu selection
begin --start of program
   Put_Line ("Please Input the starting numbers");

   Put("Input the starting real number: "); --used to start the numbers. Change of logic this step is not needed
   userNumberInputReal := Float'Value(Get_Line);
   Put("Input the starting Complex number: ");
   userNumberInputComplex := Float'Value(Get_Line);
   ComplexNumbers.starting(userNumberInputReal,userNumberInputComplex); --puts the user input into the ComplexNumbers

   --Start of menu
   while userMenuSelection /= 0 loop
      Put_Line(""); --For formatting
      Put_Line("Calculator Menu (type number and press enter to do operation)");
      Put_Line("1) Add");
      Put_Line("2) Subtract");
      Put_Line("3) Multiply");
      Put_Line("4) Divide");
      Put_Line("5) Clear Numbers");
      Put_Line("6) Displays Current Results");
      Put_Line("0) Exit");

      --Asks user for selection
      --User must use integers for menu selection
      Put("Select: ");
      userMenuSelection := Integer'Value(Get_Line);



      case userMenuSelection is


      when 0 =>
         Put_Line("Closing Program, Goodbye!");
      when 1 => --Adding numbers
         Put_Line("Insert real number to add: ");
         userNumberInputReal := Float'Value(Get_Line);
         Put_Line("Insert Complex number to add: ");
         userNumberInputComplex := Float'Value(Get_Line);

         ComplexNumbers.Addition(userNumberInputReal,userNumberInputComplex);


      when 2 =>--Subtracting numbers
         Put_Line("Insert real number to Subtract: ");
         userNumberInputReal := Float'Value(Get_Line);
         Put_Line("Insert Complex number to Subtract: ");
         userNumberInputComplex := Float'Value(Get_Line);

         ComplexNumbers.Subtraction(userNumberInputReal,userNumberInputComplex);
      when 3 =>--Multiplying numbers
         Put_Line("Insert real number to Multiply: ");
         userNumberInputReal := Float'Value(Get_Line);
         Put_Line("Insert Complex number to Multiply: ");
         userNumberInputComplex := Float'Value(Get_Line);

         ComplexNumbers.Multiplication(userNumberInputReal,userNumberInputComplex);
      when 4 =>--Dividing numbers
         Put_Line("Insert real number to Divide: ");
         userNumberInputReal := Float'Value(Get_Line);
         Put_Line("Insert Complex number to Divide: ");
         userNumberInputComplex := Float'Value(Get_Line);

         ComplexNumbers.Division(userNumberInputReal,userNumberInputComplex);
      when 5 =>--Clears the numbers
         Put_Line("Calculator has been cleared!");
         ComplexNumbers.starting(0.0,0.0);

         when 6 =>--Displays the numbers used
            ComplexNumbers.Dysplay(0.0,0.0);
         when others =>
            Put_Line("invalid menu option, please try again");

      end case;

   end loop;


exception --Basic exception catching in case the user uses improper values.
   when E: Constraint_Error =>
      Put_Line ("Opps, something went Wrong.");
      Put_Line(Exception_Message (E));
      Put_Line("Please use proper inputs");
end Main;


--References
--https://stackoverflow.com/questions/42336795/ada-how-to-get-input-a-list-of-integer-from-a-user-and-put-it-into-an-array
--https://learn.adacore.com/courses/Ada_For_The_CPP_Java_Developer/chapters/04_Statements_Declarations_and_Control_Structures.html#loops
