---
layout: post
title: "Median of Two Sorted Arrays"
categories: LeetCode
tag: algorithm  LeetCode
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

[1]O(m)
If the time complexity is O(m+n), that is relatively easy. Using two pointer pointing to the small postion of each array. Then find the first (m+n)/2 postion.  
The diffcult is how to deal with the length of the 2 array is even number that should be dealt with respectively.

[2]O(log (m+n))

The position of median is the first k of sorted array of the two arrays.  
So this issue is changed to find the k-th element of the two arrays.

```python
def findK(self, nums1, nums2, k):
    m, n = len(nums1), len(nums2)
    if m==0 or n==0:
        return nums2[k-1] if m==0 else nums1[k-1]
    if k == 1:
        return min(nums1[0],nums2[0])
    if m > n:
        nums1, nums2, m, n = nums2, nums1, n, m

    pm = min(k/2, m)
    pn = k - pm

    if nums1[pm-1] == nums2[pn-1]:
        return nums1[pm-1]
    elif nums1[pm-1] < nums2[pn-1]:
        return self.findK(nums1[pm:], nums2, k-pm)
    else:
        return self.findK(nums1, nums2[pn:], k-pn)
```
The critical point is that comparing nums1[k/2] and nums2[k-k/2]. If nums1 is smaller, then only needing to find the postion in nums1[k/2:] and nums2.  
[Complete codes](https://github.com/deniswu1202/LeetCode/blob/master/src/4_Median_of_Two_Sorted_Arrays.py).  


