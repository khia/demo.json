%% @author Mochi Media <dev@mochimedia.com>
%% @copyright demo.json Mochi Media <dev@mochimedia.com>

%% @doc Callbacks for the demo.json application.

-module(demo.json.app).
-author("Mochi Media <dev@mochimedia.com>").

-behaviour(application).
-export([start/2,stop/1]).


%% @spec start(_Type, _StartArgs) -> ServerRet
%% @doc application start callback for demo.json.
start(_Type, _StartArgs) ->
    demo.json.deps:ensure(),
    demo.json.sup:start_link().

%% @spec stop(_State) -> ServerRet
%% @doc application stop callback for demo.json.
stop(_State) ->
    ok.
