---
layout: post
title: How-to Curl
categories: Network
tag: curl
---
 
* content
{:toc}

> Syntax: curl [option] URL

1) *Basic using*
> curl https://www.google.com

This command will show the page on terminal.


2) *Save the page*
> curl -o page.html https://www.google.com

You can redirect the output of the step 1 to a file wiht '>'.

But with '-o' option would be more elegant. 

It will save the page to file. And show status of the action.

3) *Proxy*
> curl -x 10.1.1.1:8080 -o page.html https://www.google.com

While an URL cannot be accessed, perhaps the proxy hasn't been specified.

With '-x' option that http can use, you can specify the server and port.


