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
# better syntax
_install https://github.com/hdima/vim-scripts/raw/master/syntax/python/python.vim $VIMD/syntax/python.vim

# better indent
_install "http://www.vim.org/scripts/download_script.php?src_id=4316" $VIMD/indent/python.vim

# protobuf
_install "http://protobuf.googlecode.com/svn/trunk/editors/proto.vim" $VIMD/syntax/proto.vim
