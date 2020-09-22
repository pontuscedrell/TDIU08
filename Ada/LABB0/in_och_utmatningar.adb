with Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO;

procedure In_Och_Utmatningar is
   
   A : Integer;
   B : Float;
   C : String(1..2);
   X : Integer;
   
   
begin
   
   Put("Skriv in fem heltal: ");
   A := 0;
   --A := A + Get(X);
   Put("Summan blev: ");
   Get(X);
   
   
   
      
   Put("Skriv in ett tecken: ");
   Get(C);
   Put("Du skrev in tecknet: ");
   Put(C(1));
   
   
   
   
   Put("Skriv in ett heltal: ");
   Get(A);
   Put("Du skrev in talet: ");
   Put(A,Width=>0); 
   New_Line(3);
   Skip_Line;
   
   -- #######################
   
   Put("Skriv in fem heltal: ");
   
   Get(A);
   Put("Du skrev in talen: ");
   Put(A, Width=>0);
   Put(" ");
   Get(A);
   Put(A, Width=>0);
   Put(" ");
   Get(A);
   Put(A, Width=>0);
   Put(" ");
   Get(A);
   Put(A, Width=>0);
   Put(" ");
   Get(A);
   Put(A, Width=>0);
   Put(" ");
   
   New_Line(3);
   
   -- ###########################
   
   Put("Skriv in ett flyttal: ");
   Get(B);
   Put("Du skrev in flyttalet: ");
    Put(B, Fore=>0, Aft=>3, Exp=>0); 
   New_Line(3);
   Skip_Line;
   
   --############################
   
   Put("Skriv in ett heltal och ett flyttal: ");
   Get(A);
   Get(B);
   
   Put("Du skrev in heltalet: ");
   Put(A, Width=>0);
   
   New_Line;
   Put("Du skrev in flyttal: ");
   Put(B, Fore=>0, Aft=>4, Exp=>0);
   Skip_Line;
   
   --############################
   
   Put("Skriv in ett tecken");
   Put(C(1));
   
   
   
   
   
end In_Och_Utmatningar;
