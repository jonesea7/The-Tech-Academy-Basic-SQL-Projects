/* DRILLS OF SYNTACTICAL VARIETY*/

PRINT 'Hello World!'

/*====== It's variable time ======*/
/*====== We need to declare use @ and give it a data type too.======*/
DECLARE @eddysVariable INT

SET @eddysVariable = 7
PRINT @eddysVariable

/*====== HERE WE SET TWO VARIABLES AT THE SAME TIME, DON'T FORGET
THE DATA TYPE ======*/

DECLARE @var1 INT, @var2 INT

/*====== SET is how you put something into 
the variable 'container' once you've declared it. ======*/

SET @var1 = 3
SET @var2 = 5

/*====== string concatenation ======*/

PRINT 'Feeling good' + ' in the hood.'

/*====== yo' man this ain't gonna' work,
these are two differen data types,
What shall we do? ======*/

PRINT 'I have ' + @var1 + 'dollars...'

/*====== CONVERT IT 
the syntax is:
CONVERT(newdataType,@myvar)
======*/

PRINT 'I have ' + CONVERT(varchar(50),@var1) + 'dollars...'

 
DECLARE @var3 INT
SET @var3 = 2

PRINT 'I have ' +  CONVERT(varchar(50),@var3) + ' dollars...'

/*======  LINE BREAK======*/

+ CHAR(13)

/*====== TAB ======*/

+ CHAR(9)

/*====== with char(13) we insuring the second string prints on another
line ======*/

DECLARE @num1 INT, @num2 INT
SET @num1 = 3
SET @num2 = 5
PRINT 'Variable 1 = ' + CONVERT(varchar(5),@num1) + char(13) + 'Variable 2 = ' + CONVERT(varchar(5),@num2)

/*====== tsql is smart of to know that these are two ints
 so we will just add them together like a mathmatical operation ======*/

PRINT @num1 + @num2


/*====== if thens and so forth======*/

/*====== SYNTAX======*/

IF
	BEGIN

	END

ELSE
	BEGIN

	END

/*====== IDEALLY EVERY IF SHOULD HAVE AN ELSE ======*/

/*====== REMEMBER TO DECLARE THE DATA TYPE ALONG WITH THE VARIABLE======*/
DECLARE @num1 INT
SET @num1 = 2

IF @num1 <= 3
	BEGIN
		PRINT 'Var 1 <= '+ CONVERT(varchar(5),@num1) + char(13)
	END

ELSE
	BEGIN
		PRINT 'Var 1 is not < '+ CONVERT(varchar(5),@num1) + char(13)
	END

/*====== '!=' MEANS NOT EQUAL TO ======*/

DECLARE @num1 INT
SET @num1 = 3


IF @num1 != 3
	BEGIN
		PRINT 'Number One is not equal to three.'
	END
ELSE
	BEGIN
		PRINT 'Yippee Skippee'
	END

/*====== let's get a bit more involved here======*/

DECLARE @num1 INT
SET @num1 = 6


IF @num1 < 2
	BEGIN
		PRINT '@num1 1 < 2'
	END
	/*====== AND is invoked to ensure that the variable is true for both, and false is False or true is True======*/
ELSE IF @num1 > 1 AND @num1 < 3
	BEGIN
		PRINT '@num1 > 1 AND @num1 < 3'
	END
ELSE IF @num1 = 4 OR @num1 < 6
	BEGIN
		PRINT '@num1 = 4 OR @num1 < 6'
	END
ELSE
	PRINT 'Does not compute, Playa.'

