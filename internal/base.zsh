#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function wtfutil::internal::wtfutil::install {
    message_info "Installing ${ZSH_WTFUTIL_PACKAGE_NAME}"
    if ! type -p brew > /dev/null; then
        message_warning "${ZSH_WTFUTIL_MESSAGE_BREW}"
        return
    fi
    brew install wtfutil
    message_success "Installed ${ZSH_WTFUTIL_PACKAGE_NAME}"
}
