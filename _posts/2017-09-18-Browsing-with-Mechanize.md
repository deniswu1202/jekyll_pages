---
layout: post
title: Browsing with Mechanize
categories: Web
tag: python web
---
 
* content
{:toc}

A very useful python module for navigating through web forms is Mechanize. 

It gives you a browser like object to interact with web pages.

Here is an example on how to use it in a program.

```python
import mechanize
br = mechanize.Browser()
br.open("http://www.example.com/")
```




Follow second link with element text matching regular expression

```python
response1 = br.follow_link(text_regex=r"cheeses*shop", nr=1)
assert br.viewing_html()
print br.title()
print response1.geturl()
print response1.info()  # headers
print response1.read()  # body
```

To get the response code from a website, you can the response.code

```python
from mechanize import Browser
browser = Browser()
response = browser.open('http://www.google.com')
print response.code
```

Get all forms from a website

```python
import mechanize
br = mechanize.Browser()
br.open("http://www.google.com/")
for f in br.forms():
    print f
```

Browsing with Python ignoring robots.txt

```python
#!/usr/bin/python
import re
from mechanize import Browser
br = Browser()
br.set_handle_robots(False)
```

Google demands a user-agent that isn't a robot

```python 
br.addheaders = [('User-agent', 'Firefox')]
```
Using coockie. Some website may need cookie to access pages.

```python
import mechanize  
import cookielib 
br = mechanize.Browser()  
cj = cookielib.LWPCookieJar()  
br.set_cookiejar(cj)##关联cookies  
```


The script above is split up to make it easier to read.
