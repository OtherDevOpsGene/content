# platform = multi_platform_all
# reboot = false
# strategy = restrict
# complexity = low
# disruption = low

for user in $(awk -F':' '{ if ($3 >= {{{ uid_min }}} && $3 != 65534) print $1 }' /etc/passwd); do
    home_dir=$(getent passwd "$user" | cut -d: -f6)
    find "${home_dir}/.netrc" -exec chmod 0600 {} \;
done
