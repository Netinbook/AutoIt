#cs ----------------------------------------------------------------------------

	AutoIt Version: 3.3.6.1
	Author:         myName

	Script Function:
	Template AutoIt script.

#ce ----------------------------------------------------------------------------

; Script Start - Add your code below here

#include <Process.au3>
#include <GuiTab.au3>
#include <GuiTreeView.au3>

$janela01 = "Preparar para a instala��o do BrOffice.org 3.2"
$janela02 = "BrOffice.org 3.2 - Assistente de instala��o"
$janela03 = "Compatibility Pack for Office system de 2007"

$base = "C:\temp"
$arquivo01 = "BrOOo_3.2.1_Win_x86_install_pt-BR.exe"
$arquivo02 = "DicSin-BR.oxt"
$programa = "BrOffice"
$origem01 = "\\aw-001\basebasebase$\20 OpenOffice"
$destino = $base & "\" & $programa

;verificar se existe unidade C
If FileExists("C:\") Then
Else
	MsgBox(4096, "C:\", "Unidade 'C:' n�o existe")
	Exit
EndIf

;verificar se existe BrOffice
If FileExists("C:\") Then
Else
	MsgBox(4096, "C:\", "Unidade 'C:' n�o existe")
	Exit
EndIf

If FileExists("C:\Arquivos de programas\BrOffice.org 3\program\swriter.exe") Then
	MsgBox(4096, $programa & " existe, instala��o ser� abortada.")
	Exit
Else
EndIf

If FileExists($base) Then
Else
	DirCreate($base)
EndIf

If FileExists($destino) Then
Else
	DirCreate($destino)
EndIf

If FileExists($destino & "\" & $arquivo01) Then
Else
	FileCopy($origem01 & "\" & $arquivo01, $destino)
EndIf

If FileExists($destino & "\" & $arquivo02) Then
Else
	FileCopy($origem01 & "\" & $arquivo02, $destino)
EndIf

;instalando
Run($destino & "\" & $arquivo01)
WinWait($janela01, "Obrigado por fazer o download do BrOffice.org 3.2.", 200)
ControlClick($janela01, "", "Button2")
WinWait($janela01, "Selecione a pasta", 200)
ControlClick($janela01, "", "Button2")
WinWait($janela02, "Vers�o criada pela Oracle em colabora��o", 2000)
ControlClick($janela02, "", "Button1")
WinWait($janela02, "Informa��es do cliente", 200)
ControlClick($janela02, "", "Button5")
WinWait($janela02, "Tipo de instala��o", 200)
ControlClick($janela02, "", "Button5")
WinWait($janela02, "Pronto para instalar o programa", 200)
ControlClick($janela02, "", "Button4")
Sleep(200)
ControlClick($janela02, "", "Button1")
WinWait($janela02, "Clique em Concluir para sair do Assistente de Instala��o.", 200)
ControlClick($janela02, "", "Button1")
Sleep(2000)
DirRemove("C:\Documents and Settings\Master\Desktop\BrOffice.org 3.2 (pt-BR) Installation Files", 1)




Exit

$hTree = ControlGetHandle($janela01, "", "[CLASS:SysTreeView32; INSTANCE:1]")
$hItem = _GUICtrlTreeView_FindItem($hTree, "Microsoft Office Excel")
_GUICtrlTreeView_SelectItem($hTree, $hItem, $TVGN_CARET)
ControlFocus($janela01, "", $hTree)
ControlSend($janela01, "", $hTree, "{SPACE}")
Sleep(200)
Send("{down 2}")
Sleep(200)
Send("{ENTER}")

Sleep(200)
$hTree = ControlGetHandle($janela01, "", "[CLASS:SysTreeView32; INSTANCE:1]")
$hItem = _GUICtrlTreeView_FindItem($hTree, "Microsoft Office PowerPoint")
_GUICtrlTreeView_SelectItem($hTree, $hItem, $TVGN_CARET)
ControlFocus($janela01, "", $hTree)
ControlSend($janela01, "", $hTree, "{SPACE}")
Sleep(200)
Send("{down 2}")
Sleep(200)
Send("{ENTER}")

Sleep(200)
$hTree = ControlGetHandle($janela01, "", "[CLASS:SysTreeView32; INSTANCE:1]")
$hItem = _GUICtrlTreeView_FindItem($hTree, "Microsoft Office Word")
_GUICtrlTreeView_SelectItem($hTree, $hItem, $TVGN_CARET)
ControlFocus($janela01, "", $hTree)
ControlSend($janela01, "", $hTree, "{SPACE}")
Sleep(200)
Send("{down 2}")
Sleep(200)
Send("{ENTER}")

Sleep(200)
$hTree = ControlGetHandle($janela01, "", "[CLASS:SysTreeView32; INSTANCE:1]")
$hItem = _GUICtrlTreeView_FindItem($hTree, "Recursos compartilhados do Office")
_GUICtrlTreeView_SelectItem($hTree, $hItem, $TVGN_CARET)
ControlFocus($janela01, "", $hTree)
ControlSend($janela01, "", $hTree, "{SPACE}")
Sleep(200)
Send("{down 2}")
Sleep(200)
Send("{ENTER}")

Sleep(200)
$hTree = ControlGetHandle($janela01, "", "[CLASS:SysTreeView32; INSTANCE:1]")
$hItem = _GUICtrlTreeView_FindItem($hTree, "Ferramentas do Office")
_GUICtrlTreeView_SelectItem($hTree, $hItem, $TVGN_CARET)
ControlFocus($janela01, "", $hTree)
ControlSend($janela01, "", $hTree, "{SPACE}")
Sleep(200)
Send("{down 2}")
Sleep(200)
Send("{ENTER}")
Sleep(200)

WinWait($janela01, "Personaliza��o Avan�ada", 200)
ControlClick($janela01, "", "Button1")

WinWait($janela01, "Resumo", 200)
ControlClick($janela01, "", "Button1")

WinWait($janela01, "Instala��o Conclu�da", 200)
ControlClick($janela01, "", "Button1")
Sleep(200)
ControlClick($janela01, "", "Button2")

WinWait("Instala��o do Microsoft Office 2003", "Tem certeza de que deseja remover a fonte de instala��o do cache?", 200)
ControlClick("Instala��o do Microsoft Office 2003", "", "Button1")

Sleep(1000)
Run($destino & "\" & $arquivo02)
WinWait($janela02, "Deseja instalar esta atualiza��o?", 200)
ControlClick($janela02, "", "Button1")

WinWait($janela02, "Leia o Contrato de Licen�a a seguir. Pressione a tecla PAGE DOWN para ver a continua��o do contrato.", 200)
ControlClick($janela02, "", "Button1")

WinWait($janela02, "A atualiza��o foi aplicada com �xito.", 200)
ControlClick($janela02, "", "Button1")

Sleep(1000)
_RunDos("C:\Arquiv~1\Alcoho~1\Alcoho~1\AxCmd.exe S: /U")
Sleep(500)
Run($destino & "\" & $arquivo03)

WinWait($janela03, "Tem de aceitar os Termos de Licenciamento para Software Microsoft para continuar a instala��o.", 200)
ControlClick($janela03, "", "Button1")
Sleep(200)
ControlClick($janela03, "", "Button2")

WinWait($janela03, "A instala��o est� conclu�da.", 200)
ControlClick($janela03, "", "Button1")

_RunDos("C:\Arquiv~1\Alcoho~1\Alcoho~1\AxCmd.exe S: /U")
Sleep(1500)

;Configurando o Office
;Excel
Run("C:\Arquivos de programas\Microsoft Office\OFFICE11\EXCEL.EXE")
WinWait("Microsoft Excel", "", 200)
Send("!m")
Sleep(200)
Send("o")
Sleep(200)
WinWait("Op��es", "", 200)
Send("!a")
Sleep(200)
Send("{ENTER}")
Sleep(200)
Send("!x")
Sleep(200)
Send("f")
Sleep(200)
Send("z")
Sleep(200)
Send("!l")
Sleep(200)
Send("!e")
Sleep(200)
Send("{ENTER}")
WinClose("Microsoft Excel", "")

;Word
Run("C:\Arquivos de programas\Microsoft Office\OFFICE11\WINWORD.EXE")
WinWait("Microsoft Word", "", 200)
Send("!m")
Sleep(200)
Send("o")
Sleep(200)
WinWait("Op��es", "", 200)
Send("!�")
Sleep(200)
Send("{ENTER}")
Sleep(200)
Send("!x")
Sleep(200)
Send("f")
Sleep(200)
Send("z")
Sleep(200)
Send("!l")
Sleep(200)
Send("!e")
Sleep(200)
Send("{ENTER}")
Sleep(200)
Send("!x")
Sleep(200)
Send("z")
Sleep(200)
Send("!l")
Send("{ENTER}")
WinClose("Microsoft Word", "")

;PowerPoint




FileDelete($destino & "\" & $arquivo01)
FileDelete($destino & "\" & $arquivo02)
FileDelete($destino & "\" & $arquivo03)


