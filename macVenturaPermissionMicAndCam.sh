# get app id (Zoom.us used in example):
echo "Digite o nome do app (e.g. Brave Browser): "
read appName
echo appName: $appName

appId=$(osascript -e "id of app \"$appName\"")
# output: us.zoom.xos
echo appId: $appId

echo "Permitindo acesso ao microfone o app $appName"
sudo sqlite3 ~/Library/Application\ Support/com.apple.TCC/TCC.db "INSERT or REPLACE INTO access VALUES('kTCCServiceMicrophone','$appId',0,2,0,1,NULL,NULL,NULL,'UNUSED',NULL,0,1541440109);"

echo "Permitindo acesso à câmera o app $appName"
sudo sqlite3 ~/Library/Application\ Support/com.apple.TCC/TCC.db "INSERT or REPLACE INTO access VALUES('kTCCServiceCamera','$appId',0,2,0,1,NULL,NULL,NULL,'UNUSED',NULL,0,1541440109);"