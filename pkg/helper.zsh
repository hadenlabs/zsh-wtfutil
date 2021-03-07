#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

# editwtfutil edit settings for wtfutil
function editwtfutil {
    if [ -z "${EDITOR}" ]; then
        message_warning "it's neccesary the var EDITOR"
        return
    fi
    "${EDITOR}" "${WTFUTIL_FILE_SETTINGS}"
}
