#!/usr/bin/env bash
#                      __ __       ___
#                     /\ \\ \    /'___`\
#                     \ \ \\ \  /\_\ /\ \
#                      \ \ \\ \_\/_/// /__
#                       \ \__ ,__\ // /_\ \
#                        \/_/\_\_//\______/
#                           \/_/  \/_____/
#                                         Algoritimos
#
#
#       Author: Ivan carlos da Silva Lopes
#         Mail: ivanlopes (at) 42algoritimos (dot) com (dot) br
#      License: gpl
#        Site: http://www.42algoritmos.com.br
#       Phone: +1 561 801 7985
#    Language: Shell Script
#        File: get.sh
#        Date: Tue 15 Oct 2013 06:54:00 PM BRT
# Description:

##############################################################################
##############################################################################
##############################################################################
u=wwwww
# ----------------------------------------------------------------------------

# Run!

files = (
Makefile
README.md
Vagrantfile
)

for f in ${files[*]}; do
  wget $u/$f
done

# ----------------------------------------------------------------------------
exit 0
