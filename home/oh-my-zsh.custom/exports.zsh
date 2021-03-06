# History
# Remove duplicate of previous line
export HIST_IGNORE_DUPS=1
# Don’t store lines starting with space
export HIST_IGNORE_SPACE=1

# Very long history file
export HISTSIZE=5000000
export HISTFILESIZE=$HISTSIZE

# Mysql
export MYSQL_PS1="\\d@\\h> "

# Man
# man pager: more info -> http://vim.wikia.com/wiki/Using_vim_as_a_man-page_viewer_under_Unix
#export MANPAGER="sh -c \"col -bx | iconv -c | view -c 'set ft=man nomod nolist titlestring=MANPAGE' -\""
export PAGER=vimpager
export MANPAGER=vimpager

# cd options
export FIGNORE='.svn'

GREP_OPTIONS='--color=auto'

for PATTERN in .cvs .git .hg .svn target; do
    GREP_OPTIONS="$GREP_OPTIONS --exclude-dir=$PATTERN"
done


GREP_OPTIONS="$GREP_OPTIONS --exclude=tags"
export GREP_OPTIONS

export FCEDIT='vim -g -f'

# java
export JAVA_HOME=`/usr/libexec/java_home -v 1.7`

# jboss
export JBOSS_HOME=/usr/local/opt/jboss-as/libexec
export PATH=${PATH}:${JBOSS_HOME}/bin
