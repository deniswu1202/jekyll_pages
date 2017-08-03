---
layout: post
title:  "Get an mail with .eml format from Microsoft Outlook"
date:   2017-08-03 19:18:00 +0800
categories: MAIL
---

{:toc}

## Problem
Sometimes, we may need analyze mail. But Outlook cannot save file to .eml format. 
The mail can only be saved as .msg format. The .msg file cannot be open by plain text.

## Solution
As other MTA can save .eml format mails, we can use a fake MTA to receive the mail.
![](https://raw.githubusercontent.com/deniswu1202/jekyll_pages/master/pic/20170803.1.png)
Here using  hMailServer as SMTP server. Fake MTA is a SMTP server which can store mail in local place.

## Details
hMailServer configuration:
http://www.azurecurve.co.uk/2015/09/hmailserver-connecting-outlook/
Set the fake MTA IP as SMTP Relayer.
![]()

