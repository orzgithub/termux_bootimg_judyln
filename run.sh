if [ ! -f "raw.img" ]; then
 echo "\033[31m-请在脚本用目录下放入提取的raw_resources.img镜像并重命名为raw.img\033[0m"
 echo "\033[31m-生成失败\033[0m"
 exit
fi
echo -e "\033[32m-安装运行环境\033[0m"
pkg i python libjpeg-turbo zlib
pip install -i https://pypi.doubanio.com/simple/ Pillow
echo "\033[32m-正在打包开机界面\033[0m"
mkdir decode
cd decode
python ../rrdecode.py ../raw.img
cd ..
cp raw.img rawbk.img
if [ -f "logo.png" ]; then
 python 1.py logo.png raw.img make.img
 rm raw.img
 mv make.img raw.img
fi
if [ -f "logop.png" ]; then
 python 1p.py logop.png raw.img make.img
 rm raw.img
 mv make.img raw.img
fi
if [ -f "charge.png" ]; then
 python 2.py charge.png raw.img make.img
 rm raw.img
 mv make.img raw.img
fi
if [ -f "droid.png" ]; then
 python 3.py droid.png raw.img make.img
 rm raw.img
 mv make.img raw.img
fi
mv raw.img new.img
mv rawbk.img raw.img
echo "\033[32m-完成，请自行刷入new.img至对应分区\033[0m"