

# Setup oh-my-zsh:
# -----------------
ZSH_THEME="robbyrussell"
#ZSH_THEME="kphoen"
plugins=(git)
ZSH=/home/michael/.zshconfig/oh-my-zsh/
source $ZSH/oh-my-zsh.sh
#
#
#
#
# General options:
setopt histignorealldups #sharehistory



export GRIN_ARGS="-I *.py  --follow"
alias pur="fur --python"
alias givm="gvim"

alias gwriting="cd /home/michael/hw_to_come/hw-writing/"
alias gsim3="cd /home/michael/hw_to_come/hw-results/src/simulations_for_thesis/chpt3/"
alias gsim6="cd /home/michael/hw_to_come/hw-results/src/simulations_for_thesis/chpt6/"
alias gsim="cd /home/michael/hw_to_come/hw-results/src/"

alias change="pdt patch  replace --apply "


export PYTHONPATH="$PYTHONPATH:/home/michael/hw_to_come/morphforge/src/"
export PYTHONPATH="$PYTHONPATH:/home/michael/hw_to_come/signalanalysis/src/"
export PYTHONPATH="$PYTHONPATH:/home/michael/hw_to_come/libs/mredoc/src/"
export PYTHONPATH="$PYTHONPATH:/home/michael/hw_to_come/libs/mreorg/src/"
export PYTHONPATH="$PYTHONPATH:/home/michael/hw_to_come/libs/NeuroUnits/src/"
export PYTHONPATH="$PYTHONPATH:/home/michael/hw_to_come/libs/mplpaperconfig/src/"
export PYTHONPATH="$PYTHONPATH:/home/michael/srcs/csa/trunk/"
export PYTHONPATH="$PYTHONPATH:/home/michael/srcs/svg_utils/src/"
export PYTHONPATH="$PYTHONPATH:/home/michael/srcs/scimath/"
export PYTHONPATH="$PYTHONPATH:/home/michael/srcs/yapsy/Yapsy-1.10-pythons2n3/src2/package/"

export PYTHONPATH="$PYTHONPATH:/home/michael/opt/lib/python2.7/site-packages/matplotlib-1.3.x-py2.7-linux-i686.egg/"

export PATH="$PATH:/home/michael/opt/bin/"
export PATH="$PATH:/home/michael/.local/bin/"
export PATH="$PATH:/home/michael/hw_to_come/libs/mreorg/bin/"
export PYTHONPATH="$PYTHONPATH:/home/michael/opt/lib/python2.7/site-packages/"


export PATH="$PATH:/home/michael/hw_to_come/python-devtools/bin"
export PATH="$PATH:/home/michael/srcs/scour/"


export PATH="$PATH:/home/michael/hw/python-devtools/bin"
export PYTHONPATH="$PYTHONPATH:/home/michael/hw/python-devtools/src"

export PATH="$PATH:/home/michael/hw_to_come/python-devtools/bin"
export PYTHONPATH="$PYTHONPATH:/home/michael/hw_to_come/python-devtools/src"


alias MFCLEAN='find /home/michael/old_home/mftmp/ -type f -exec rm {} \;'
export PATH="$PATH:/home/michael/srcs/lyx-gc-0.3g/"

alias 'mf-coverage'='python-coverage combine --rcfile=/home/michael/hw_to_come/morphforge/etc/.coveragerc '
alias 'mf-coverage-html'='python-coverage html --rcfile=/home/michael/hw_to_come/morphforge/etc/.coveragerc '
alias 'mf-coverage-clear'='rm -rf /tmp/morphforge_coverage_output/'




export INFANDANGO_ROOT="/home/michael/hw_to_come/infandango/infandango/"
export INFANDANGO_CONFIGFILE="$INFANDANGO_ROOT/examples/sample_config/infandango_conf.py"
export PATH="$PATH:$INFANDANGO_ROOT:"
export PYTHONPATH="$PYTHONPATH:$INFANDANGO_ROOT/src/labs/:"
export PYTHONPATH="$PYTHONPATH:/home/michael/srcs/xmlwitch/src/"
export PYTHONPATH="$PYTHONPATH:/home/michael/srcs/logbook/"
export PYTHONPATH="$PYTHONPATH:/home/michael/srcs/ply/"



export PATH="$PATH:/home/michael/hw_to_come/libs/NeuroUnits/bin/"

export PYTHONPATH="$PYTHONPATH:/home/michael/srcs/pymorph/"

export PATH="$PATH:/home/mh735/.gem/ruby/1.9.1/bin"

