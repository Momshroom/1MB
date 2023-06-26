#!/bin/bash

# We are all getting hit quite a bit by these rather intrusive people that scan the IPv4 ranges to find Minecraft servers and surely do fantastic things with the results for whatever reason. 
# This little script is just a quick handy tool I use to point to the /logs/ directory's .log and .gz files, and help generate a separate .log file to hand over to abuse departments who request it.
# Secondly, to help yourself, filter out the intrusive poking, this will pull out the IPv4 addresses they've used, sort them uniqieuly and put them in a separate .txt file. You can then review that manually, or automatically add it to your firewall rules with a crontab.

# This is the initial draft, will try to help identify who we're looking for, what folder to look in for the files, and which files to write the output too. 
# I will clean it up once I have something working. 
# This is version 0.0.5, build 006, parsing log files from Minecraft 1.20.1, generated by Paper 1.20.1
# You do not have to have a (running) server, just the /logs/ directory. 
# To start, edit this file to your liking, then chmod a+x the .sh file, and ./file.sh <username> to start. It will use a default entry of cuute, since it's the latest one.

### Configurable area

# who are we looking for: (playername) that we expect to find in the log files
# In case no ./sh playername was provided, we default to which one?
default_playername="cuute"

# what directory do we expect these files to reside in (~serverdirectory/logs/, but can be fullpath instead of ./logs/)
# Where are the expected /logs/ files? (can be full path)
path_logs_folder="./logs/"

# what files are we outputting to? (playername.log) and (playername-iplist.txt)

### internal configurable area

# process default username, unless one is provided
# Check if a command-line argument is provided
if [[ $# -gt 0 ]]; then
  find_playername=$1
else
  find_playername=$default_playername
fi

### functions and code

# use grep on any .log files, so we dont forget about latest.log or any unpacked ones or old backups we dumped in here

# use zgrep on any .gz files 

# echo results to output files .log and .txt for playername

# count results from new .log file 

# sort to uniques for the ip addresses .txt file

### output

# print to screen the amount øf times we found occurances of playername in the log files history, and the list of unique ips

#EOF