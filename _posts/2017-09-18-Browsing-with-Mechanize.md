---
layout: post
title: Browsing with Mechanize
categories: Web
tags: python web
---
 
* content
{:toc}

A very useful python module for navigating through web forms is Mechanize. 

It gives you a browser like object to interact with web pages.

Here is an example on how to use it in a program.




## Create a browser object
Create a browser object and give it some optional setting

```python
import mechanize
br = mechanize.Browser()
br.set_all_readonly(False)    # allow everything to be written to
br.set_handle_robots(False)   # ignore robots
br.set_handle_refresh(False)  # can sometimes hang without this
br.addheaders =   	      	# [('User-agent', 'Firefox')]
```

## Open a webpage
Open a webpage and inspect its contents

```python
response = br.open(url)
print response.read()      # the text of the page
response1 = br.response()  # get the response again
print response1.read()     # can apply lxml.html.fromstring()
```

## Using forms
List the forms that are in the page
```python
for form in br.forms():
    print "Form name:", form.name
    print form
```

To go on the mechanize browser object must have a form selected

```python
br.select_form("form1")        # works when form has a name
br.form = list(br.forms())[0]  # use when form is unnamed
br.select_form(nr=1)           # choose when you know which form is
```

## Submit the form
When your form is complete you can submit

```python
response = br.submit()
print response.read()
br.back()   # go back
```

The script above is split up to make it easier to read.
