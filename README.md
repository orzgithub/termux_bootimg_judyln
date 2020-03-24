# termux_bootimg_judyln
## Write before introduce:
Firstly I want to give the thanks to the author who made the script for V20 ([link](https://forum.xda-developers.com/v20/how-to/guide-hide-unlocked-bootloader-warning-t3879658)) and another author from China who made it work with V40 ([link](https://www.coolapk.com/feed/17516456?shareKey=MDJlNzY0M2ZhZDY3NWU3YTA5MGU~)). I just made a script to make it possible to work on android with Termux and fixed a little bug.
## How to use:
It's quite simple.Just clone it to a folder,add the raw_resources.img and images in the same folder and run the script.Everything will be done after a while and you'll get "new.img".Just flash it into your raw_resources_a/b partition and reboot, enjoy it :)
Well I know you can't get any helpful information. Here's more info:
### The files required:
* raw.img:The raw_resources.img from your raw_resources_a/b partition.Rename it as raw.img.It's the only file which must added to.

* logo.png:The logo for **LG G7** which will replace the logo of LG G7 at boot.The resolution should be 1060x260.

* logop.png:The logo for **LG G7+** which will replace the logo of LG G7+ at boot.The resolution should be 1180x270.

* charge.png:The whole screen image which will show at first while you charge your G7 when power is off.The resolution should be 1440x2760.

* droid.png:The logo below the boot screen which often show as **powered by android**.The resolution should be 590x200

### The simple example to use:
Of cource you need to install git.Type these in termux:  
`pkg i git`  
Then type the following code into termux:  
`git clone https://github.com/orzgithub/termux_bootimg_judyln.git /sdcard/cbootpic && cd /sdcard/cbootpic`  
Of course you can use other name and path.It's just for greenhands who have no experience on it.  
Copy the files required into /sdcard/cbootpic with your filemanger or term.
You can get raw.img by this (**root access needed!**):  
`pkg i tsu && tsudo dd if=/dev/block/by-name/raw_resources_a of=/sdcard/cbootpic/raw.img`  
If you want to get raw.img from partition b, you can replace raw_resources_a with raw_resources_b.  
After add the images into /sdcard/cbootpic, type the code following:  
`cd /sdcard/cbootpic && bash run.sh`  
You need a good internet connection.It won't take much time.If you are in China you can replace the line 8 with this:  
`pip install -i https://pypi.doubanio.com/simple/ Pillow`  
After the script done, flash new.img. That's all.
