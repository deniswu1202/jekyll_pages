---
layout: post
title: Use mechanize to simulate browser
categories:python, web 
tag: 
---
 
* content
{:toc}


###Create a browser object

Create a browser object and give it some optional settings.

```python
import mechanize
br = mechanize.Browser()
br.set_all_readonly(False)    # allow everything to be written to
br.set_handle_robots(False)   # ignore robots
br.set_handle_refresh(False)  # can sometimes hang without this
br.addheaders =   	      	# [('User-agent', 'Firefox')]
```

###Open a webpage

Open a webpage and inspect its contents

```python
response = br.open(url)
print response.read()      # the text of the page
response1 = br.response()  # get the response again
print response1.read()     # can apply lxml.html.fromstring()
```

###Using forms

List the forms that are in the page

```python
for form in br.forms():
    print "Form name:", form.name
    print form
```

To go on the mechanize browser object must have a form selected

```python
br.select_form("form1")         # works when form has a name
br.form = list(br.forms())[0]  # use when form is unnamed
```
