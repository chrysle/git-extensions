#!/bin/sh source-this-script

completeAsCommand git-autostash git-inside \
    git-brrefdo git-localbrcdo git-localbrcrefdo git-localbrdo git-localbrrefdo git-rbrrefdo git-subIdo git-subdo git-subido git-substdo git-wc-with-suffix-do git-wcdo git-wcs-in-dir-do

gitCompleteAs()
{
    typeset sourceCommand="${1:?}"; shift
    typeset cmd; for cmd
    do
	eval "_git_${cmd}() { _git_${sourceCommand} \"\$@\"; }"
    done
}

gitCompleteAs checkout co \
    inout iofiles iosubmodules io ab \
    oinout oiofiles oiosubmodules oio oab \
    uinout uiofiles uiosubmodules uio uab \
    ominout omiofiles omiosubmodules omio omab \
    uminout umiofiles umiosubmodules umio umab

unset -f gitCompleteAs
