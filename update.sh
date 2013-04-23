#!/usr/bin/env sh

_install()
{
  local url="$1"
  local file="$2"

  echo "curling [$url]"
  curl -sL "$url" | tee "$file" > /dev/null
}

VIMD="$HOME/.vim"

mkdir -p $VIMD/{indent,syntax}

# http://www.vim.org/scripts/script.php?script_id=790
_install "http://www.vim.org/scripts/download_script.php?src_id=19619" $VIMD/syntax/python.vim

# protobuf
_install "http://protobuf.googlecode.com/svn/trunk/editors/proto.vim" $VIMD/syntax/proto.vim
