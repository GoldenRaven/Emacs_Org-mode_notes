# set term png font "Times New Roman,20" # 输出到屏幕
set term qt font "Times New Roman,20" # 输出到屏幕
# set output 'plot2D.png' # 设置输出文件名
reset
set border 0 # 取消边框
lw_=1 # 设置默认线条宽度
set zeroaxis lt -1 lw lw_ # 设置显示位于原点的坐标轴

xmin=-2 # x轴最小范围
xmax=5 # x轴最大范围
xtic=1 # x轴刻度间隔
xarrow=xmax+(xtic/2.0) # x轴箭头位置

ymin=-1 # y轴最大范围
ymax=5 # y轴最大范围
ytic=1 # y轴刻度间隔
yarrow=ymax+(ytic/2.0) # y轴箭头位置

set title "用plot绘制二维图形" offset 0,2*ytic # 设置标题
set rmargin 10 # 为横坐标箭头设置右空白
set xrange [xmin:xmax] # 设置x轴范围
set yrange [ymin:ymax] # 设置y轴范围
set xtics axis xmin,xtic,xmax offset xtic,0 # 将x刻度显示在坐标轴上，并向右偏移
set ytics axis ymin,ytic,ymax offset 0,ytic # 将y刻度显示在坐标轴上，并向上偏移
set arrow 1 from xmax,0 to xarrow,0 filled size 0.2,15,60 lw lw_ # 绘制横轴箭头
set arrow 2 from 0,ymax to 0,yarrow filled size 0.2,15,60 lw lw_ # 绘制纵轴箭头
set label 1 "x" at xarrow,-ytic/5.0 font "Times,25" # 设置x轴名称
set label 2 "y" at -xtic/5.0,yarrow font "Times,25" # 设置y轴名称
# set xlabel "x" # 设置x坐标轴名称
# set ylabel "y" # 设置y坐标轴名称

f1(x) = -x + 3 #定义函数
f2(x) = f1(x) - 1 #定义函数
f3(x) = f1(x) + 1 #定义函数

plot f1(x) w l lw lw_+1 t 'x+y-3=0', f2(x) w lp lw lw_+1 t 'x+y-3=-1', f3(x) w lp lw lw_+1 t 'x+y-3=1' # 绘制二维图
# set output # 输出到文件
pause mouse close # 允许鼠标拖动
