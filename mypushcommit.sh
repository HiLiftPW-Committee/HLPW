#!/usr/bin/env bash
 
set -e
 
git log --reverse --pretty="%H %s" > tmpgitlog_msg
git log --reverse --pretty="%H" > tmpgitlog
 
commit_SHAs=$( awk 'NR >= 501 && NR <= 651 {print $1}' tmpgitlog )
 
for i in ${commit_SHAs} ; do
   echo "====push $i ===="
   git push origin $i:refs/heads/master
done
