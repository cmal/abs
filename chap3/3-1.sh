#!/bin/bash

# Example 3-1. 代码块和IO重定向

# 从 /etc/fstab 中读行

File=/etc/fstab  # bash中空格很重要

{
    read line1
    read line2
} < $File

echo "First line in $File is:"
echo "$line1"
echo
echo "Second line in $File is:"
echo "$line2"
exit 0

# 使用 awk 分析每行的分割域
