#!/usr/bin/env sh

unterladen()
{
  local url="$1"
  local file="$2"

  echo "curling [$url]"
  curl -sL "$url" | tee "$file" > /dev/null
}

VIMD="$HOME/.vim"

mkdir -p $VIMD/{indent,syntax}

# http://www.vim.org/scripts/script.php?script_id=790
unterladen 'http://www.vim.org/scripts/download_script.php?src_id=21056'    $VIMD/syntax/python.vim

unterladen 'http://protobuf.googlecode.com/svn/trunk/editors/proto.vim'     $VIMD/syntax/proto.vim
unterladen 'http://haproxy.1wt.eu/download/contrib/haproxy.vim'             $VIMD/syntax/haproxy.vim
unterladen 'http://www.vim.org/scripts/download_script.php?src_id=19394'    $VIMD/syntax/nginx.vim
unterladen 'http://svn.apache.org/repos/asf/thrift/attic/trunk/contrib/thrift.vim'  $VIMD/syntax/thrift.vim


