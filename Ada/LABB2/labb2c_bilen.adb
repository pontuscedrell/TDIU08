with Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO;

procedure Labb2c_Bilen is
   
   
   function BeraknaK(T2, S2 : in Float) return Float is
      
      K : Float;
      
   begin
      
      K := T2 / S2;
      return K; 
      
      
   end BeraknaK;
      
   
   function BeraknaT0(T1, S1, K : in Float) return Float is
      
      T0 : Float;
      
   begin
      T0 := T1 - S1 * K;
      return T0;
      
   end BeraknaT0;
   
   function BeraknaS3(T0, K : in Float) return Float is
      
      S3 : Float; 
      
   begin
      
      S3 := T0 / K;
      return S3; 
      
   end BeraknaS3;
   
   
   
   
   S1 : Float;
   T1 : Float;
   S2 : Float;
   T2 : Float;
   T0 : Float; 
    K : Float;
   S3 : Float; 
   
   
begin
   
   Put("F�rst k�r vi str�ckan S1 (i mil): ");
   Get(S1);
   Skip_Line; 
   
   Put("Vi tankar nu full tank, T1 (i liter): ");
   Get(T1);
   Skip_Line;
   
   Put("Nu k�r vi str�ckan S2 (i mil): ");
   Get(S2);
   Skip_Line;
   
   Put("Vi tankar nu full tank igen, T2 (i liter): ");
   Get(T2);
   Skip_Line;
   
   K := BeraknaK(T2, S2);
   T0 := BeraknaT0(T1, S1, K);
   S3 := BeraknaS3(T0, K);
   
   New_Line(1);
   
   Put("Bilen drar ");
   Put(K,1,2,0);
   Put(" liter / mil.");
   New_Line;
   
   Put("Ur tanken saknades det fr�n b�rjan ");
   Put(T0,1,2,0);
   Put(" liter");
   New_Line;
   
   Put("vi k�r sedan exakt ");
   Put(S3,1,2,0);
   Put(" mil och l�mnar bilen d�r");
   
end Labb2c_Bilen;
  
