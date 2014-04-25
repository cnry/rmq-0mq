-module(r0mq).

%% Just the application; responsible for invoking the supervisor, on
%% start.

%% Application callbacks
-export([start/2, stop/1]).

%% -- Callbacks --

start(normal, []) ->
    {ok, Services} = application:get_env(services),
    r0mq_sup:start_link(Services).

stop(_State) ->
    ok.
