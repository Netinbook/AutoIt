$n = InputBox("Convers�o de n�mero", "Digite o n�mero que voc� deseja converter para bin�rio","", "")
$temp = $n
$a = 1
$bin = ""

While $temp >0.5
	$a = mod($temp,2)
	$temp = int($temp/2)
	$bin = $a & $bin
WEnd
ConsoleWrite("O n�mero decimal: " & $n & " � " & $bin & " em bin�rio." & @CRLF)

Func resto($dividendo,$divisor)
	Return (($dividendo / $divisor)-int(($dividendo / $divisor)))*2
EndFunc