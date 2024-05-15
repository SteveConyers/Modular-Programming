000100230313**Free
000101230313
000102230322// ----------------------------------------------------------------------------------*
000103230322// This program uses prototyping to create a User ID.                                *
000104230322// To create the User ID, fields are pulled from physical file CSCSTP.               *
000105230322// Built-in functions are used to create the user ID along with concatenation.       *
000107230322// to create a single alphanumeric string.                                           *
000108230322//                                                                                   *
000109230322// Program: MAKEID     By: Steven Conyers       Date: 3/13/2023   Revised: 3/22/2023 *
000110230322// ----------------------------------------------------------------------------------*
000111230313
000112230317// -----Control Statement--------------------------------------
000113230317Ctl-opt option(*srcStmt: *nodebugio);
000114230319
000123230313// ------------------For upper and lower case characters------------------------------
000124230313DCL-C Lowercase 'abcdefghijklmnopqrstuvwxwz';
000125230313DCL-C Uppercase 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
000127230313
000128230313// Define the prototype for the MAKEID program
000129230313DCL-PR Main Extpgm('MAKEID');
000130230321  *N  Zoned(6) Const;
000131230321  *N  Char(6);
000132230321  *N  Char(33);
000133230319  *N  Char(10);
000135230319  *N  Char(15);
000136230319  *N  Char(33);
000137230313END-PR;
000138230313
000139230313// Procedure Interface
000140230313DCL-PI Main;
000141230321  CUSTNO  Zoned(6) Const;
000142230321  UIDNO   Char(6);
000143230321  UID     Char(33);
000144230319  CFNAME  Char(10);
000145230319  CLNAME  Char(15);
000146230319  FULLUID Char(33);
000147230313END-PI;
000148230313
000149230315//-----------------Main Logic for User ID Creation-----------------------------------
000153230313UIDNO = %Char(CUSTNO); // convert CUSTNO to CHAR
000154230313UID = %TRIM(CFNAME) + '.' + %TRIM(CLNAME) + '.' + UIDNO; //concatenate and trim name
000155230319FULLUID = %XLATE(Uppercase:Lowercase:UID); //Turn uppercase to lowercase in UID
000156230319
000166230319
000167230313*Inlr = *On;
000168230313Return;
