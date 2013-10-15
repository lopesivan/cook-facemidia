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
u=https://raw.github.com/lopesivan/cook-facemidia/master/box
# ----------------------------------------------------------------------------

# Run!

files=(
Makefile
README.md
Vagrantfile
)

for f in ${files[*]}; do
  wget $u/$f
done

# cria env diretório
make env

cat <<EOF > env/Cheffile
#!/usr/bin/env ruby
#^syntax detection

site 'http://community.opscode.com/api/v1'

cookbook 'facemidia', 
  :git => 'git://github.com/lopesivan/cook-facemidia.git'

#cookbook 'hello_world', 
#  :git => 'git://github.com/lopesivan/cook-hello_world.git',
#  :ref => "tags/0.1.0"
EOF

cat <<EOF > env/exemplo.json
{
  "name":"my_node",
  "run_list": [
    "recipe[facemidia]"
  ]
}
EOF

# ----------------------------------------------------------------------------
exit 0
