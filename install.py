#! /usr/bin/python

import os
import shutil

def srcpath(file):
  return os.path.join(os.getcwd(), file)

def dstpath(file):
  return os.path.join(os.environ["HOME"], '.' + file) 

def shouldcopy(file):
  return (not file.startswith('.') 
         and not file.endswith('.swp')
         and not os.path.isdir(srcpath(file)))

for dotfile in os.listdir('.'):
  if shouldcopy(dotfile):
    print 'copying ' + dotfile
    shutil.copy(srcpath(dotfile), dstpath(dotfile))    
