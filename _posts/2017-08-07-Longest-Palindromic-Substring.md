---
layout: post
title: "Longest Palindromic Substring"
categories: LeetCode
tag: algorithm  LeetCode
---
 
* content
{:toc}

## Question  

Given a string s, find the longest palindromic substring in s. You may assume that the maximum length of s is 1000.  

**Example 1:**

>Input: "babad"  

>Output: "bab"  

>Note: "aba" is also a valid answer.  




**Example 2:**

>Input: "cbbd"  

>Output: "bb"  

## Solution

[1]O(n2)  
The direct way is to find all palimdromes. The time complexity would be O(n3).  

Here revising it using O(n2) space. With space recoding palimdromes found previously, the time complexity would be O(n2).  

Each palimdrome is made up of smaller palimdrome. The length difference is 1 or 2.  
> "bab" -> "a"+"b"*2, 1+2

> "baab" -> "aa"+"b"*2, 2+2

> "cbabc" -> "bab"+"b"*2, 3+2

So the problem is simplified to judge a string with 2 condition.  

a. the edge is the same;  
b. the sub string without the left and right edge is palimdrome.

The code line is like below.
```python
for i in xrange(0,sLen): 
            pSet.add((i,i))
            pSet.add((i,i-1))

for k in xrange(2,sLen+1):
    for i in xrange(0,sLen):
        if i+k-1 < sLen and s[i] == s[i+k-1] and (i+1,i+k-2) in pSet:
            pStart, pEnd = i, i+k-1
            pSet.add((i,i+k-1))
return s[pStart:pEnd+1]
```

  
[Complete codes](https://github.com/deniswu1202/LeetCode/blob/master/src/5_Longest_Palindromic_Substring.py)  


