#!/bin/bash
# packages = audit
echo "local_events = yes" >> "/etc/audit/auditd.conf"
echo "local_events = no" >> "/etc/audit/auditd.conf"
