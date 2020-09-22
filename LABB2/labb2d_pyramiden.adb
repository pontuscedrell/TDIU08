with Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO, Ada.Numerics.Discrete_Random;
use Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO;


procedure Labb2d_Pyramiden is
   
     
     procedure AntalMellanslag(Antal : in Integer)  is
     begin
	for I in 1..Integer(Antal) - 1 loop
	   Put(" ");
	end loop;
	
	
     end AntalMellanslag;
     
     
     procedure RitaOga(Storlek : in Integer) is
	
     begin
	AntalMellanslag(Storlek);
	Put("    -_ | _-    ");
	New_Line;
	
	AntalMellanslag(Storlek);
	Put("_ _ / /.\ \ _ _");
	New_Line;
	
	AntalMellanslag(Storlek);
	Put("  _ \ \""/ / _  ");
	New_Line;
	
	AntalMellanslag(Storlek);
	Put("    -  |  - ");
	New_Line;
	
     end RitaOga;
     
     procedure RandomBokstaver(Storlek : in Integer) is
	
	subtype Sexifem_Till_Nittio is
	  Integer range 65..90; 
	
	package My_Random_Package is
	   new Ada.Numerics.Discrete_Random(Sexifem_Till_Nittio);
	
	use My_Random_Package;
	
	G : Generator; 
	N : Integer; 

     begin
	Reset(G);
	for I in 1..Integer(Storlek) loop
	   N := Random(G);
	   Put(Character'Val(N));
      end loop;
   end RandomBokstaver;
   
   
   
   
   procedure RitaPyramid(Storlek : in Integer) is
      
     
      
   begin
      
      AntalMellanslag(Storlek);
      Put("   _________");
      New_Line;
      
      for I in 1..Integer(Storlek) loop
	 
	 AntalMellanslag(Storlek - I + 3);
	 Put("/");
	 RandomBokstaver(7 + I * 2);
	 Put("\");
	 New_Line;
	 
	 
	 
      end loop;
      
      
   end RitaPyramid;
   

   Storlek : Integer; 
   
begin
   
   Put("Ange pyramidens storlek: ");
   Get(Storlek);
   
   RitaOga(Storlek);
   RitaPyramid(Storlek);
   

   
end Labb2d_Pyramiden;
