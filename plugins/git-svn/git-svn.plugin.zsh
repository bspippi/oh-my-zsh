#
# git equivalent of svnversion
#
get_svnversion()
{
    alias git_svnversion="git svn find-rev `git describe --always` 2>/dev/null"
    LANG=C SVN_VERSION=`/usr/bin/svnversion`
    if [ "X$SVN_VERSION" == "Xexported" -o "X$SVN_VERSION" == "X" ]; then
        git_svnversion
    else
        echo $SVN_VERSION
    fi
}
alias svnversion=get_svnversion

