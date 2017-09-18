---
layout: post
title: Browsing with Mechanize
categories: Web
tag: python, web
---
 
* content
{:toc}

The mechanize module in Python is similar to perl WWW:Mechanize.

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

I found this post at http://stockrt.github.com that very accurate describes how
to emulate a browser in Python using mechanize.

Browsing with Python (written of Drew Stephens)

```python
#!/usr/bin/python
import re
from mechanize import Browser
br = Browser()
```

Ignore robots.txt

```python
br.set_handle_robots( False )
```

Google demands a user-agent that isn't a robot

```python
br.addheaders = [('User-agent', 'Firefox')]
```

Retrieve the Google home page, saving the response

```python
br.open( "http://www.google.com" )
```

Select the search box and search for 'foo'

```python
br.select_form( 'f' )
br.form[ 'q' ] = 'foo'
```

Get the search results

```python
br.submit()
```

Find the link to foofighters.com; why did we run a search?

```python
resp = None

for link in br.links():
    siteMatch = re.compile( 'www.foofighters.com' ).search( link.url )

    if siteMatch:
        resp = br.follow_link( link )
        break
Print the site
content = resp.get_data()
print content
```

The script above is split up to make it easier to read.
