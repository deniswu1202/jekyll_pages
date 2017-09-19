#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Specify the article title."
    exit
fi

ntpdate cn.pool.ntp.org > /dev/null 2>&1

time=`date -d today +%Y-%m-%d`
title=`echo $* | sed -n 's/ /-/gp'`

post_name=./_posts/${time}"-"${title}".md"

if [ -f ${post_name} ]; then 
    echo "Post already exists."
    exit
fi

touch ${post_name}

echo "---" > ${post_name}
echo "layout: post" >> ${post_name}
echo "title: $*" >> ${post_name}
echo "categories: " >> ${post_name}
echo "tags: " >> ${post_name}
echo "---" >> ${post_name}

echo " " >> ${post_name}
echo "* content" >> ${post_name}
echo "{:toc}" >> ${post_name}
 
