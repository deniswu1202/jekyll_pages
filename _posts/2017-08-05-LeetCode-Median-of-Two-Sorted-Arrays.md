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

If the time complexity is O(m+n), that is relatively easy. Using two pointer poiting to the small postion of each array.  
The code is like below.
```python
    def findMedianSortedArrays(self, nums1, nums2):  
        m, n = len(nums1), len(nums2)  
        target = (m+n+1)/2  
        i, j = 0, 0  
  
        while target > 1 and i < m and j < n:  
            if nums1[i]<nums2[j]:  
                i += 1  
            else:  
                j + = 1  
            target -= 1  

        if i == m:  
            j += target - 1  
        else:  
            i += target - 1  
  
        if (m+n)%2 == 1:  
            return nums1[i] if nums1[i]<nums2[j] else nums2[j]  
        else:  
            if i == m:  
                return (nums2[j]+nums2[j+1])/2.0  
            elif j == n:  
                return (nums1[i]+nums1[i+1])/2.0  
            else:  
                if  nums1[i]<nums2[j]:  
                    return (nums1[i]+nums1[i+1])/2.0 if nums1[i+1]<nums2[j] else (nums1[i]+nums2[j])/2.0  
                else:  
                    return (nums1[i]+nums2[j])/2.0 if nums1[i]<nums2[j+1] else (nums2[j]+nums2[j+1])/2.0  
```
The diffcult is how to deal with the lenght of the 2 array is even number that should be dealt with respectively.







Assume the position of median is k of sorted array of the two arrays.  

So this issue is changed to find the k-th element of the two arrays.


