#!/usr/bin/env bash
# -*- coding: utf-8 -*-

#shellcheck source=/dev/null
[ -r "script/bootstrap.sh" ] && source "script/bootstrap.sh"

cd "${SOURCE_DIR}" || echo 'path not found'

landslide "${ETC_DIR}/"landslide.cfg -w ./slides