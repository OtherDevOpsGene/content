#!/bin/bash
# packages = audit

mkdir -p /etc/audit/rules.d/
echo "-a always,exit -F path=/sbin/unix2_chkpwd -F perm=x -F auid>=1000 -F auid!=unset -F key=privileged" >> /etc/audit/rules.d/privileged.rules
