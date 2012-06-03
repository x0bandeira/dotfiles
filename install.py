#! /usr/bin/python

import os
import shutil
import filecmp

def srcpath(file):
  return os.path.join(os.getcwd(), file)

def dstpath(file):
  return os.path.join(os.environ["HOME"], '.' + file) 

def shouldcopy(file):
  return (
         not file.startswith('.') 
         and not file == 'install.py'
         and not file.startswith('README')
         and not file.endswith('.swp')
         )

def isdir(file):
  return os.path.isdir(file)

def has_changes(dst, src):
  return (
         os.path.exists(dst)
         and not filecmp.cmp(src, dst) 
         and os.stat(dst).st_mtime > os.stat(src).st_mtime
         )


def cpfiles(files, basepath=''):
  for dotfile in files:
    if shouldcopy(dotfile):
      src = srcpath(basepath + dotfile)
      dst = dstpath(basepath + dotfile)

      if isdir(src):
        if not os.path.exists(dst):
          os.mkdir(dst)
        print '-> into folder ' + basepath + '.' + dotfile
        cpfiles(os.listdir(src), dotfile + '/')
      else: 
        if has_changes(dst, src):
          print "ERROR! " + dst + " has changes, please fix it"
          break

        print 'copying ' + basepath + '.' + dotfile
        shutil.copy(src, dst)    

cpfiles(os.listdir('.'))
