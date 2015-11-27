#!/usr/bin/env sh

erlc -pz ./priv -pa ./ebin +debug_info -o ebin/ xsrc/merl.erl
erlc -DMERL_NO_TRANSFORM +debug_info -o priv/ xsrc/merl_transform.erl
erlc -pz ./priv -pa ./ebin +debug_info -o ebin/ xsrc/merl_transform.erl
erlc -pz ./priv -pa ./ebin +debug_info -o ebin/ xsrc/merl_tests.erl

