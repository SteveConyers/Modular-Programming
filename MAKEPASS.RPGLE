000100230315**Free
000101230315
000102230322// -----------------------------------------------------------------------------------*
000103230322// This program uses prototyping to create a User Password.                           *
000104230322// To create the password, fields are pulled from physical file CSCSTP.               *
000105230322// Built-in functions are used to create password along with concatenation.           *
000106230322// to create a single alphanumeric string.                                            *
000107230322//                                                                                    *
000108230322// Program: MAKEPASS    By: Steven Conyers    Created: 3/15/2023   Revised: 3/22/2023 *
000109230322// -----------------------------------------------------------------------------------*
000110230315
000111230319// -----Control Statement--------------------------------------
000112230319Ctl-opt option(*srcStmt: *nodebugio);
000113230319
000118230315// ------------------For upper and lower case characters------------------------------
000119230315DCL-C Lowercase 'abcdefghijklmnopqrstuvwxwz';
000120230315DCL-C Uppercase 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
000121230315
000122230315// -----------------Prototype for the MAKEPASS program----------------------------------
000123230315DCL-PR Main Extpgm('MAKEPASS');
000124230322  *N  Zoned(6) Const;
000125230322  *N  Char(6);
000126230319  *N  Char(10) Const;
000127230322  *N  Char(1);
000128230319  *N  Char(15) Const;
000129230322  *N  Char(1);
000130230315  *N  Char(9);
000131230315END-PR;
000132230315
000136230315// -----------------Procedure Interface-----------------------------------------------
000137230315DCL-PI Main;
000138230322  CUSTNO    Zoned(6) Const;
000139230322  UIDNO     Char(6);
000140230322  CFNAME    Char(10) Const;
000141230322  PWRDLTR1  Char(1);
000142230322  CLNAME    Char(15) Const;
000143230322  PWRDLTR2  Char(1);
000144230322  PWRD      Char(9);
000145230315END-PI;
000146230315
000151230315//-----------------Main Logic for Password Creation-----------------------------------
000152230317UIDNO = %Char(CUSTNO);
000153230317
000154230315PWRDLTR1 = %Subst(CFNAME:1:1);
000155230315PWRDLTR1 = %Xlate(Uppercase:Lowercase:PWRDLTR1:1);
000156230315PWRDLTR2 = %Subst(CLNAME:1:1);
000157230315PWRDLTR2 = %Xlate(Uppercase:Lowercase:PWRDLTR2:1);
000158230321PWRD = %Trim(PWRDLTR1) + %Trim(PWRDLTR2) + UIDNO + '!';
000159230315
000160230315*Inlr = *On;
000161230315Return;
