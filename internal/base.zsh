#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function wtfutil::internal::wtfutil::install {
    message_info "Installing ${WTFUTIL_PACKAGE_NAME}"
    if ! type -p brew > /dev/null; then
        message_warning "${WTFUTIL_MESSAGE_BREW}"
        return
    fi
    brew install wtfutil
    message_success "Installed ${WTFUTIL_PACKAGE_NAME}"
}

function wtfutil::internal::rsync::install {
    if ! type -p brew > /dev/null; then
        message_warning "${WTFUTIL_MESSAGE_BREW}"
        return
    fi
    message_info "Installing rsync for ${WTFUTIL_PACKAGE_NAME}"
    brew install rsync
    message_success "Installed rsync ${WTFUTIL_PACKAGE_NAME}"
}
