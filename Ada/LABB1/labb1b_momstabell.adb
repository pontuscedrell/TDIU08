with Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO;

procedure Labb1_momstabell is
  
  Forsta_Pris : Integer;
  Sista_Pris : Float; 
  Steg : Float;
  Momsprocent : Float;
  Produkt : Float; 
  Moms : Float; 
  I : Integer := 0; 
  AntalVarv : Float;
   
  
begin
   
    
  -- InLasning("Första pris: ", in Svar);
   Get(Forsta_Pris);
   Skip_Line;
   
   Forsta_Pris := Forsta_Pris / 7; 
   Put(5 mod Forsta_Pris); 
    
    Put("Sista pris: ");
    Get(Sista_Pris);
    Skip_Line;
    
    Put("Steg: ");
    Get(Steg);
    Skip_Line;
    
    Put("Momsprocent: ");
    Get(Momsprocent);
    Skip_Line;
    
    New_Line;
    
    Put("=== Momstabell ===");
    New_Line;
    Put("Pris utan moms Moms Pris med moms");
    New_Line;
    
    AntalVarv := ((Sista_Pris - Forsta_Pris) / Steg);   
    
    Moms := (Momsprocent * Forsta_Pris) / 100.00;
    
    for I in 1..Integer(AntalVarv) loop
      
       Produkt := Moms + Forsta_Pris;
       Put(Forsta_Pris, Fore=>6, Aft=>2, Exp=>0);
       Put(Moms, Fore=>6, Aft=>2, Exp=>0);
       Put(Produkt, Fore=>6, Aft=>2, Exp=>0);
       
       Forsta_Pris := Forsta_Pris + Steg;
       
       New_Line;
    end loop;
    

  end Labb1_momstabell;

