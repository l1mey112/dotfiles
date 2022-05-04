#!/usr/bin/python3

import sys
import subprocess
from subprocess import PIPE
import time
if not len(sys.argv) == 4 or not (sys.argv[1]=="to" or sys.argv[1]=="from"):
        print("Usage: %s <to,from> <local path> <filter path>" % sys.argv[0])
        exit() # exit with code 0

if sys.argv[3].endswith('/') or sys.argv[3].endswith('\\'):
    filterpath=sys.argv[3]
else:
    filterpath=sys.argv[3]+"/"

""" always=open(filterpath+"always", 'r')
downloading=open(filterpath+"downloading", 'r')
lin=open(filterpath+"lin", 'r')
win=open(filterpath+"win", 'r') """

#! check if same, do this, then open keepass

#todo start cmd /c "echo 1 & pause"

# process.py computer name, backup keepass directory

#rclone copy -u -v onedrive: %location% --backup-dir %BACKUP%  --ignore-case --checksum --suffix %datetime%

#sudo rclone copy onedrive:Passwords.kdbx 
# "/home/ubuntu/ssd1/Keepass backups/$(date -I)" --checksum --ignore-case -u -vv >/dev/null 2>&1
def go(tofrom,local):
    print('Using filters: ')
    print('--filter-from '+filterpath+"always")

    try:
        if sys.argv[1]=='from':
            if sys.platform=="linux":
                filtering=filterpath+"lin"
            if sys.platform=="win32":
                filtering=filterpath+"win"
            
            print('--filter-from '+filtering)
            print('--filter-from '+filterpath+"downloading") #! START
            print('')
            with subprocess.Popen(['rclone','copy','onedrive:',local,
                                '--drive-chunk-size', '512M',
                                '--max-backlog','999999',
                                '--fast-list',
                                '--buffer-size=75M',
                                '--transfers=4',
                                '--checkers=16', # do not run multiple times because can go over limit
                                '--multi-thread-streams=4',
                                '--filter-from',filterpath+"always",
                                '--filter-from',filterpath+"downloading",
                                '--filter-from',filtering,
                                '-v', '-u'
                                ], stdout=PIPE, bufsize=1,universal_newlines=True) as p:
                for line in p.stdout:
                    print(line, end='')
                    
        elif sys.argv[1]=='to': #! START
            print('')
            with subprocess.Popen(['rclone','copy',local,'onedrive:',
                                '--drive-chunk-size', '512M',
                                '--max-backlog','999999',
                                '--fast-list',
                                '--buffer-size=75M',
                                '--transfers=4',
                                '--checkers=16', # do not run multiple times because can go over limit
                                '--multi-thread-streams=4',
                                '--filter-from',filterpath+"always",
                                '-v', '-u'
                                ], stdout=PIPE, bufsize=1,universal_newlines=True) as p:
                for line in p.stdout:
                    print(line, end='')
        else:
            print('error bruh (this shouldnt even call!)')
            exit()
        print('Sync '+sys.argv[3]+' completed successfully!')
        print('-------------------------------------------')
        zenitybox('Sync '+sys.argv[3]+' completed successfully!')
    except Exception as e:
        print('error with command!')
        print(str(e))
        print('+++++++++++++++++++++++++++++++++++++++++++')
        zenitybox('Sync Failure!')
    except KeyboardInterrupt:
        print('')
        print('keyboard interuption!')
        print('+++++++++++++++++++++++++++++++++++++++++++')
        
def zenitybox(text):
    if(sys.platform=="linux"):
        out = subprocess.run(['zenity','--notification','--text='+text])



print('-------------------------------------------')
go(sys.argv[1],sys.argv[2])

