# YYTimer-Block
YYTimer(GCD Timer) block extension

## 对源码的扩展
[YYTimer](https://github.com/ibireme/YYKit/blob/master/YYKit/Utility/YYTimer.m) 对 GCD Timer 封装了一套类似于 NSTimer 的 API，但是没有增加以块作为参数的 API。本项目对此进行了添加。

## 对源码的修正

源码第 34 行
```objc
    return [[self alloc] initWithFireTime:interval interval:interval target:target selector:selector repeats:repeats];
```
改为
```objc
    return [[self alloc] initWithFireTime:0 interval:interval target:target selector:selector repeats:repeats];
```
疑为作者笔误。

---

## Extensions On the Source Code

[YYTimer](https://github.com/ibireme/YYKit/blob/master/YYKit/Utility/YYTimer.m) encapsulates a set of NSTimer-like APIs for GCD Timer, but does not include APIs that take a block as a parameter. This project adds two of them.

## Corrections On the Source Code

Line 34 of source code
```objc
    return [[self alloc] initWithFireTime:interval interval:interval target:target selector:selector repeats:repeats];
```
is modified as
```objc
    return [[self alloc] initWithFireTime:0 interval:interval target:target selector:selector repeats:repeats];
```
This is likely to be a typo of the developer.
