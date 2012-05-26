#! /usr/bin/python

import os
import shutil

def srcpath(file):
  return os.path.join(os.getcwd(), file)

def dstpath(file):
  return os.path.join(os.environ["HOME"], '.' + file) 

def shouldcopy(file):
  return (
         not file.startswith('.') 
         and not file == 'install.py'
         and not file.endswith('.swp')
         )

def isdir(file):
  return os.path.isdir(file)

def cpfiles(files, basepath=''):
  for dotfile in files:
    if shouldcopy(dotfile):
      print 'copying ' + basepath + '.' + dotfile
      src = srcpath(basepath + dotfile)
      dst = dstpath(basepath + dotfile)

      if isdir(src):
        cpfiles(os.listdir(src), dotfile + '/')
      else: 
        shutil.copy(src, dst)    

cpfiles(os.listdir('.'))
