cd ../client
python3 -m pip install -r requirements.txt py2app
py2applet --make-setup app.py icon.icns "icon.png" "taskbarDark.png" "taskbarLight.png"
sed -i '' -e "s/)/    name='NSO-RPC')/" setup.py
python3 setup.py py2app --arch=x86_64 -O2
open dist
