---
title: ImageMagick命令大全
date: 2021-06-15
url: Imagemagick
cover_img: https://cdn.jsdelivr.net/gh/htmlmi/hexo/img/20210615164708.png
fenlei: WEB
categories: 
- WEB
tags:
- imagemagick
- image
-图片压缩
---

image magick Windows CMD命令大全
######################################## 
#         ImageMagick CMD              #
######################################## 

# mogrify:直接替换	convert:相当于另存为

# PNG图片批量去除的多余透明区域
magick mogrify -trim +repage *.png

# 批量等比例缩小图片尺寸，加>表示只修改大于此数值的图片
magick mogrify -resize "44x44>" *.png
magick mogrify -resize "680x680>" *.png
magick mogrify -resize "1024x1024>" *.png
magick mogrify -resize "2048x2048>" *.png
magick mogrify -resize "3072x3072>" *.png
magick mogrify -resize "5000x5000>" *.png

# 批量等比例指定图片宽度，高度随比例缩放，加>表示只修改大于此数值的图片
magick mogrify -resize "680>" *.png

# 批量等比例指定图片高度，宽度随比例缩放，加>表示只修改大于此数值的图片
magick mogrify -resize "x680>" *.png

#  图片靠左裁剪1024px，另存为JPG格式
FOR %a IN ( *.png ) DO ( ( magick convert "%a" -gravity west -crop 1024 -quality 95 "%a.jpg" ) & ( DEL "%a";"%a-1.jpg" )  )  
FOR %a IN ( *.png ) DO ( ( magick convert "%a" -gravity west -crop 750 -quality 95 "%a.jpg" ) & ( DEL "%a";"%a-1.jpg";"%a-2.jpg" )  )  
magick convert "PPT_159_preview.png" -gravity west -crop 1024 -quality 93 "PPT_159_preview.jpg"

#  图片靠左上裁剪1024x1024px
magick convert  -gravity northwest -crop 1024x1024 *.jpg

#  当前目录图片靠左裁剪1024px
magick convert  -gravity west -crop 1024 -quality 93  *.png

#  图片靠上裁剪10000px，另存为JPG格式
magick convert "source" -gravity north -crop 1024x10000 -quality 93 "dest"
#  图片靠上裁剪10000px
magick convert -gravity north -crop 1024x10000 -quality 93  *.png

#  图片靠上裁剪1153px
FOR %a IN ( *.png ) DO ( magick convert "%a" -gravity north -crop 2050x1153 -quality 93 "%a"  ) 

# 将当前目录下所有的JPG图片，不改变宽高：修改为300dpi
magick mogrify -units PixelsPerInch -density 300 *.jpg

# 将当前目录下所有的JPG图片，重新采样：修改为300dpi
magick mogrify -units PixelsPerInch -resample 300 *.jpg

# 将当前目录下的所有PNG文件，转换为JPG格式，并将其存放在当前目录下
magick mogrify -quality 95 -format jpg  *.png

# 将当前目录下的所有EPS文件，转换为PNG格式，并将其存放在当前目录下
magick mogrify -quality 100 -format png  *.eps

# 将当前目录下的所有*.*文件，转换为JPG格式，并将其存放在newdir目录下
magick mogrify -quality 100 -path newdir -format jpg  *.*

# PSD格式转PNG（两个结果 ==>	-0：原始大小，-1：去除多余透明区域）
magick convert "source" "dest"

# PNG去除图片白色背景变透明
magick mogrify -transparent white *.png
magick mogrify -transparent #fefefe *.png
magick convert "source.png" -transparent white "dest.png"

# 将彩色图转成RGB
magick mogrify -colorspace RGB *.png

# 将彩色图转成灰度图
magick mogrify -colorspace Gray *.png

# 去除多余信息（元数据）
magick mogrify -strip *.jpg
magick mogrify -strip *.psd
magick convert -strip "source" "dest"