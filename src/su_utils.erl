%%%-------------------------------------------------------------------
%%% @author tihon
%%% @copyright (C) 2016, <COMPANY>
%%% @doc
%%%
%%% @end
%%%-------------------------------------------------------------------
-module(su_utils).
-author("tihon").

%% API
-export([to_lower/1]).

-spec to_lower(binary() | string()) -> binary() | string().
to_lower(Bin) when is_binary(Bin) ->
  list_to_binary(to_lower(binary_to_list(Bin)));
to_lower(List) -> string:to_lower(List).