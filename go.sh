#!/bin/bash
stack build && lessc ./css/all.less ./css/all.css && stack exec personal-webpage rebuild
