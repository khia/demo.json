#!/bin/sh
# NOTE: mustache templates need \ because they are not awesome.
exec erl -pa ebin  edit deps/*/ebin -boot start_sasl \
    -sname demo_json_dev \
    -s demo.json.main start \
    -s reloader



