#!/usr/bin/env sh

VIMD="$HOME/.vim"

mkdir -p $VIMD/{indent,syntax}
mkdir -p $VIMD/plugged
mkdir -p $VIMD/tmp/{backup,swap,undo}

unterladen()
{
  local url="$1"
  local file="$2"

  echo "curling [$url] -> [$file]"
  curl -sL "$url" | tee "$file" > /dev/null
}


# http://www.vim.org/scripts/script.php?script_id=790
#unterladen 'http://www.vim.org/scripts/download_script.php?src_id=21056'    $VIMD/syntax/python.vim
unterladen 'https://github.com/google/protobuf/raw/master/editors/proto.vim'        $VIMD/syntax/proto.vim
unterladen 'http://haproxy.1wt.eu/download/contrib/haproxy.vim'                     $VIMD/syntax/haproxy.vim
unterladen 'http://svn.apache.org/repos/asf/thrift/attic/trunk/contrib/thrift.vim'  $VIMD/syntax/thrift.vim
unterladen 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'    $VIMD/autoload/plug.vim
unterladen 'https://gist.githubusercontent.com/yaroot/395629013a9ca17a0eb3f77b5c4f1058/raw/36889c805541afb28e23c0c34365f7c809a9f0c6/rsc.vim' $VIMD/syntax/rsc.vim
unterladen 'https://github.com/docker/docker-ce/raw/master/components/engine/contrib/syntax/vim/syntax/dockerfile.vim' $VIMD/syntax/dockerfile.vim

