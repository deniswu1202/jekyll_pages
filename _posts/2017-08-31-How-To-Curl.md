---
layout: post
title: How-to Curl
categories: Network
tag: curl
---
 
* content
{:toc}

> Syntax: curl [option] URL

1) **Basic using**
> curl https://www.google.com

This command will show the page on terminal.





2) **Save the page**
> curl **-o** page.html https://www.google.com

You can redirect the output of the step 1 to a file with '>'.

But with '-o' option, it would be more elegant. 

It will save the page to file. And show status of the action.


3) **Proxy**
> curl **-x** 10.1.1.1:8080 -o page.html https://www.google.com

While an URL cannot be accessed, perhaps the proxy hasn't been specified.

With '-x' option, you can specify the proxy server and port.


4) **Header info**
> curl -o page.html **-D** header.txt https://www.google.com

Sometimes, we may need to check the header information.

The '-D' option would work.

5) **Cookie**
> curl -o page.html **-c** cookie1.txt https://www.google.com

Modern brower can deal with cookie automaticly, but how can curl...

The '-c' option would save the cookie when page is saved.

6) **Access with cookie**
> curl -o page.html -c cookie2.txt **-b** cookie1.txt https://www.google.com

The '-b' option will make curl request URL with cookie.

7) **Redirect**
> curl **-o** page.html -L https://www.google.com
If the server reports that the requested page has moved to a different location 
(indicated with a Location: header and a 3XX response code), this option will make curl redo the request on the new place.



To be continued...













