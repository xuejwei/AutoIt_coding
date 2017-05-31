#Region
#AccAu3Wrapper_Icon=										;程序图标
#AccAu3Wrapper_UseX64=n										;是否编译为64位程序(y/n)
#AccAu3Wrapper_OutFile=										;输出的Exe名称
#AccAu3Wrapper_OutFile_x64=									;64位输出的Exe名称
#AccAu3Wrapper_UseUpx=n										;是否使用UPX压缩(y/n) 注:开启压缩极易引起误报问题
#AccAu3Wrapper_Res_Comment=									;程序注释
#AccAu3Wrapper_Res_Description=								;程序描述
#AccAu3Wrapper_Res_Fileversion=1.0.0.1						;文件版本
#AccAu3Wrapper_Res_FileVersion_AutoIncrement=y				;自动更新版本 y/n/p=自动/不自动/询问
#AccAu3Wrapper_Res_ProductVersion=1.0						;产品版本
#AccAu3Wrapper_Res_Language=2052							;资源语言, 英语=2057/中文=2052
#AccAu3Wrapper_Res_LegalCopyright=							;程序版权
#AccAu3Wrapper_Res_RequestedExecutionLevel=					;请求权限: None/asInvoker/highestAvailable/requireAdministrator
#AccAu3Wrapper_Run_Tidy=y									;编译前自动整理脚本(y/n)
#AccAu3Wrapper_Run_Obfuscator=y								;启用脚本加密(y/n)
#Obfuscator_Parameters=/cs=1 /cn=1 /cf=1 /cv=1 /sf=1 /sv=1	;脚本加密参数: 0/1不加密/加密, /cs字符串 /cn数字 /cf函数名 /cv变量名 /sf精简函数 /sv精简变量
#AccAu3Wrapper_DBSupport=y									;使字符串加密支持双字节字符(y/n) <- 可对中文字符等实现字符串加密
#AccAu3Wrapper_AntiDecompile=y								;是否启用防反功能(y/n) <- 简单防反, 用于应对傻瓜式反编译工具
#EndRegion

#cs ＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿

	欢迎使用 AutoIt v3 中文版 !

	IT天空:		https://www.itiankong.com/
	Au3专区:	https://www.itiankong.net/forum-au3-1.html

	Au3版本:	3.3.14.2
	脚本作者:   丁啸林
	脚本功能:
	更新日志:
	联系方式:

#ce ＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿脚本开始＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿

;Once I read in an article:
;
;Take a piece of paper,right now,and write out the word ATTITUDE.
;Now assign each letter the number that letter corresponds to and
;add those numbers up.Guess what,they add up to 100%.A=1,T=20,
;T=20,I=9,T=20,U=21,D=4,E=5=100%.Attitude is everything folks.
;You can't hide it;you can't even deny it.;
;It's who you are.It's the outside of your inside.
;
;I thought,Oh! Really?
;Seconds later, I became suspicious of this claim...
;OK,let's find out the truth,since we have tools to utilze...
InetGet("http://www.kilgarriff.co.uk/BNClists/lemma.al", "lemma.al", 0)

$file = FileOpen("lemma.al", 0)
While 1
	$line = FileReadLine($file)
	If @error = -1 Then ExitLoop
	$lineElements = StringSplit($line, " ")
	If AddUpCharactersInWordAsNumber($lineElements[3]) == 100 Then
		ConsoleWrite($lineElements[3] & @CRLF) 
	EndIf
	WEnd
	FileClose($file)

	MsgBox(0, "", "Finished!")

	Func AddUpCharactersInWordAsNumber($word)
		$wordLowerCase = StringLower($word)
		$Characters = StringSplit($wordLowerCase, "")
		$count = 0
		For $i = 1 To $Characters[0]
			$count = $count + Asc($Characters[$i]) - 96
		Next
		Return $count
	EndFunc   ;==>AddUpCharactersInWordAsNumber


