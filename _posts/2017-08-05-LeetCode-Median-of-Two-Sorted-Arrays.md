---
layout: post
title: "Median of Two Sorted Arrays"
categories: LeetCode
tag: algorithm, LeetCode
---
 
* content
{:toc}

## Question

There are two sorted arrays **nums1** and **nums2** of size m and n respectively.

Find the median of the two sorted arrays. The overall run time complexity should be O(log (m+n)).

**Example 1:**

> nums1 = [1, 3]  
> nums2 = [2]
>
> The median is 2.0

**Example 2:**

> nums1 = [1, 2]  
> nums2 = [3, 4]
> 
> The median is (2 + 3)/2 = 2.5



## Solution

### [1]O(m)
If the time complexity is O(m+n), that is relatively easy. Using two pointer poiting to the small postion of each array. Then find the first (m+n)/2 postion.  
The diffcult is how to deal with the lenght of the 2 array is even number that should be dealt with respectively.

### [2]O(log (m+n))

Assume the position of median is k of sorted array of the two arrays.  

So this issue is changed to find the k-th element of the two arrays.


