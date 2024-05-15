000100230315**Free
000101230315
000102230322// -----------------------------------------------------------------------------------*
000103230322// This program uses prototyping.                                                     *
000107230322// Fields from physical file CSCSTP are being used and built-in functions             *
000108230322// are being used to convert the phone numebr into a characters and then using        *
000109230322// substring, it is retrieving the last 4 characters of the CHARPHN field.            *
000110230322//                                                                                    *
000111230322// Program: MAKEPASS    By: Steven Conyers    Created: 3/15/2023   Revised: 3/22/2023 *
000112230322// -----------------------------------------------------------------------------------*
000113230315
000115230315// -----------------Prototype for the MAKEFOUR program----------------------------------
000117230321// Prototype for main program
000118230321DCL-PR Main Extpgm('MAKEFOUR');
000119230321  *N Zoned(10:0) Const;
000120230321  *N Char(10);
000121230321  *N Char(4);
000122230321END-PR;
000124230315
000126230315// -----------------Procedure Interface-----------------------------------------------
000127230321DCL-PI Main;
000128230321  CPHONE  Zoned(10:0) Const;
000129230321  CHARPHN Char(10);
000130230321  PHN     Char(4);
000131230321END-PI;
000136230315
000137230315//-----------------Main Logic Phone Number-----------------------------------
000138230321CHARPHN = %Char(CPHONE);
000139230321PHN = %Subst(CHARPHN: 7 : 4);
000140230315
000141230315*Inlr = *On;
000155230315Return;
