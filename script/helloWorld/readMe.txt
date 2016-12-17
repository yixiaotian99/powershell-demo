1、使用超级管理员运行 Windows PowerShell ISE
2、切换到当前目录，开始运行 helloWorld.ps1 使用如下命令
PS E:\opensource\JetBrains\github\powershell-demo\script\helloWorld> & .\helloWorld.ps1
& : 无法加载文件 E:\opensource\JetBrains\github\powershell-demo\script\helloWorld\helloWorld.ps1，因为在此系统上禁止运行脚本。有关详细信息，请参阅 http://go.microsoft.com/fwlink/?Li
nkID=135170 中的 about_Execution_Policies。
所在位置 行:1 字符: 3
+ & .\helloWorld.ps1
+   ~~~~~~~~~~~~~~~~
    + CategoryInfo          : SecurityError: (:) []，PSSecurityException
    + FullyQualifiedErrorId : UnauthorizedAccess


3、若要了解计算机上的现用执行策略，请键入：
PS E:\opensource\JetBrains\github\powershell-demo\script\helloWorld> get-executionpolicy
Restricted

Restricted 执行策略不允许任何脚本运行。
AllSigned 和 RemoteSigned 执行策略可防止 Windows PowerShell 运行没有数字签名的脚本


4、设置允许脚本运行的执行策略
PS E:\opensource\JetBrains\github\powershell-demo\script\helloWorld> set-executionpolicy AllSigned
#PS E:\opensource\JetBrains\github\powershell-demo\script\helloWorld> set-executionpolicy AllSigned -Scope CurrentUser

PS E:\opensource\JetBrains\github\powershell-demo\script\helloWorld> get-executionpolicy
AllSigned


5、若再执行则会提示未进行数字签名的脚本不允许执行
PS E:\opensource\JetBrains\github\powershell-demo\script\helloWorld> & .\helloWorld.ps1
& : 无法加载文件 E:\opensource\JetBrains\github\powershell-demo\script\helloWorld\helloWorld.ps1。未对文件 E:\opensource\JetBrains\github\powershell-demo\script\
helloWorld\helloWorld.ps1 进行数字签名。无法在当前系统上运行该脚本。有关运行脚本和设置执行策略的详细信息，请参阅 http://go.microsoft.com/fwlink/?LinkID=135170 中的 about_Execution_Policies。
所在位置 行:1 字符: 3
+ & .\helloWorld.ps1
+   ~~~~~~~~~~~~~~~~
    + CategoryInfo          : SecurityError: (:) []，PSSecurityException
    + FullyQualifiedErrorId : UnauthorizedAccess