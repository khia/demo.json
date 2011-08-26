%% @author Mochi Media <dev@mochimedia.com>
%% @copyright 2010 Mochi Media <dev@mochimedia.com>

%% @doc demo.json.

-module(demo.json.main).
-author("Mochi Media <dev@mochimedia.com>").

-import(application).

-export([start/0, stop/0]).

ensure_started(App) ->
    case application:start(App) of
        ok ->
            ok;
        {error, {already_started, App}} ->
            ok
    end.


%% @spec start() -> ok
%% @doc Start the demo.json server.
start() ->
    demo.json.deps:ensure(),
    ensure_started(crypto),
    application:start(demo.json).


%% @spec stop() -> ok
%% @doc Stop the demo.json server.
stop() ->
    application:stop(demo.json).
