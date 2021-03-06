#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

#
# Defines install wtfutil for osx or linux.
#
# Authors:
#   Luis Mayta <slovacus@gmail.com>
#

ZSH_WTFUTIL_PATH=$(dirname "${0}")

# shellcheck source=/dev/null
source "${ZSH_WTFUTIL_PATH}"/config/main.zsh

# shellcheck source=/dev/null
source "${ZSH_WTFUTIL_PATH}"/internal/main.zsh

# shellcheck source=/dev/null
source "${ZSH_WTFUTIL_PATH}"/pkg/main.zsh
