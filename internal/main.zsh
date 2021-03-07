#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function wtfutil::internal::main::factory {
    # shellcheck source=/dev/null
    source "${ZSH_WTFUTIL_PATH}/internal/base.zsh"
    case "${OSTYPE}" in
    darwin*)
        # shellcheck source=/dev/null
        source "${ZSH_WTFUTIL_PATH}/internal/osx.zsh"
        ;;
    linux*)
        # shellcheck source=/dev/null
        source "${ZSH_WTFUTIL_PATH}/internal/linux.zsh"
      ;;
    esac
}

wtfutil::internal::main::factory

if ! type -p rsync > /dev/null; then wtfutil::internal::rync::install; fi
if ! type -p wtfutil > /dev/null; then wtfutil::internal::wtfutil::install; fi
