#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function wtfutil::dependences {
    message_info "Installing ${WTFUTIL_PACKAGE_NAME}"
    message_success "Installed ${WTFUTIL_PACKAGE_NAME}"
}

function wtfutil::post_install {
    message_info "Installing ${WTFUTIL_PACKAGE_NAME}"
    message_success "Installed ${WTFUTIL_PACKAGE_NAME}"
}

function wtfutil::install {
    wtfutil::dependences
    message_info "Installing ${WTFUTIL_PACKAGE_NAME}"
    wtfutil::internal::wtfutil::install
    message_success "Installed ${WTFUTIL_PACKAGE_NAME}"
}

function wtfutil::post_install {
    message_info "Post Install ${WTFUTIL_PACKAGE_NAME}"
    wtfutil::sync
    message_success "Success Install ${WTFUTIL_PACKAGE_NAME}"
}

function wtfutil::sync {
    rsync -avzh --progress "${ZSH_WTFUTIL_PATH}/conf/" "${WTFUTIL_CONF_DIR}/"
}
