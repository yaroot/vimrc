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

# protobuf
_install "http://protobuf.googlecode.com/svn/trunk/editors/proto.vim" $VIMD/syntax/proto.vim
