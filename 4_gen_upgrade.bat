set appver=1.0.8
set appdesc=修改SubHD不能下载问题


md _publish\upgrade

set upgradeurl=http://upgrade.res.pslib.com/my-apps/go/tools/GoSubTitleSearcher/GoSubTitleSearcher_%appver%.exe
set appname=GoSubTitleSearcher
set appfile=E:\workspace\go\_my_tools\GoSubTitleSearcher\_publish\upgrade\GoSubTitleSearcher_%appver%.exe
set savefile=E:\workspace\go\_my_tools\GoSubTitleSearcher\_publish\upgrade\last

del E:\workspace\go\_my_tools\GoSubTitleSearcher\_publish\upgrade\GoSubTitleSearcher*.*
copy /Y GoSubTitleSearcher_x64.exe %appfile%
copy /Y _publish\GoSubTitleSearcher_x64.zip _publish\GoSubTitleSearcher_x64_%appver%.zip
_bin\app_upgrade_config -savefile=%savefile% -appver=%appver% -appname=%appname% -appdesc="%appdesc%" -appfile=%appfile% -upgradeurl=%upgradeurl%


