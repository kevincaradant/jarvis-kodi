#!/bin/bash
# Here you can create functions which will be available from the commands file
# You can also use here user variables defined in your config file
callUrlKodi(){
    curl -s -H "Content-Type: application/json" -X POST -d ${1} http://$kodiIp:$kodiPort/jsonrpc
}

getMovieId(){
    callUrlKodi '{"jsonrpc":"2.0","method":"VideoLibrary.GetMovies","id":"1484897668671","params":{"properties":["title"],"limits":{"start":0,"end":1},"sort":{"method":"title","order":"ascending","ignorearticle":true},"filter":{"operator":"contains","field":"title","value":"'$1'"}}}' | jq .result.movies[0].movieid
}

getActivePlayerId(){
    callUrlKodi '{"jsonrpc":"2.0","method":"Player.GetActivePlayers","id":1}' | jq .result[0].playerid
}

playMovieSearched(){
    movieId=$(getMovieId $1)
    callUrlKodi '{"jsonrpc":"2.0","method":"Player.Open","params":{"item":{"movieid":'$movieId'}},"id":1}'
}

