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

getTvShowId(){
    callUrlKodi '{"jsonrpc":"2.0","method":"VideoLibrary.GetTvShows","id":"1484897668671","params":{"properties":["title"],"limits":{"start":0,"end":1},"sort":{"method":"title","order":"ascending","ignorearticle":true},"filter":{"operator":"contains","field":"title","value":"'$1'"}}}' | jq .result.tvshows[0].tvshowid
}

# Table to match between an integer and a string
getNumberIntFromStr(){
    if [ "one" == $1 ]
    then
       echo 1
    elif [ "two" == $1 ] || [ "too" == $1 ] || [ "to" == $1 ]
    then
       echo 2
    elif [ "three" == $1 ] || [ "tree" == $1 ]
    then
       echo 3
    elif [ "four" == $1 ] || [ "for" == $1 ]
    then
       echo 4
    elif [ "five" == $1 ]
    then
       echo 5
    elif [ "six" == $1 ]
    then
       echo 6
    elif [ "seven" == $1 ]
    then
       echo 7
    elif [ "eight" == $1 ]
    then
       echo 8
    elif [ "nine" == $1 ]
    then
       echo 9
    elif [ "ten" == $1 ]
    then
       echo 10
    elif [ "eleven" == $1 ]
    then
       echo 11
    elif [ "twelve" == $1 ]
    then
       echo 12
    elif [ "thirteen" == $1 ]
    then
       echo 13
    elif [ "fourteen" == $1 ]
    then
       echo 14
    elif [ "fifteen" == $1 ]
    then
       echo 15
    elif [ "sixteen" == $1 ]
    then
       echo 16
    elif [ "seventen" == $1 ]
    then
       echo 17
    elif [ "eighteen" == $1 ]
    then
       echo 18
    elif [ "nineteen" == $1 ]
    then
       echo 19
    elif [ "twenty" == $1 ]
    then
       echo 20
    elif [ "twenty-one" == $1 ] || [ "twenty one" == $1 ]
    then
       echo 21
    elif [ "twenty-two" == $1 ] || [ "twenty two" == $1 ] || [ "twenty too" == $1 ] || [ "twenty to" == $1 ]
    then
       echo 22
    elif [ "twenty-three" == $1 ] || [ "twenty tree" == $1 ] || [ "twenty three" == $1 ]
    then
       echo 23
    elif [ "twenty-four" == $1 ] || [ "twenty four" == $1 ] || [ "twenty for" == $1 ]
    then
       echo 24
    elif [ "twenty-five" == $1 ] || [ "twenty five" == $1 ]
    then
       echo 25
    elif [ "twenty-six" == $1 ] || [ "twenty six" == $1 ]
    then
       echo 26
    elif [ "twenty-seven" == $1 ] || [ "twenty seven" == $1 ]
    then
       echo 27
    elif [ "twenty-eight" == $1 ] || [ "twenty eight" == $1 ]
    then
       echo 28
    elif [ "twenty-nine" == $1 ] || [ "twenty nine" == $1 ]
    then
       echo 29
    elif [ "thirty" == $1 ]
    then
       echo 30
    else
       echo $1
    fi
}

getEpisodeId(){
    callUrlKodi '{"jsonrpc":"2.0","method":"VideoLibrary.GetEpisodes","params":{"tvshowid":'$1',"season":'$2',"limits":{"start":0,"end":100},"sort":{"order":"ascending","method":"track","ignorearticle":true}},"id":1}' | jq .result.episodes[$(($3-1))].episodeid
}

playTvShowSearched(){
    tvShowId=$(getTvShowId $1)
    tvShowSeasonNumberInt=$(getNumberIntFromStr $2)
    tvShowEpisodeNumberInt=$(getNumberIntFromStr $3)
    tvShowEpisodeId=$(getEpisodeId $tvShowId $tvShowSeasonNumberInt $tvShowEpisodeNumberInt)
    callUrlKodi '{"jsonrpc":"2.0","method":"Player.Open","params":{"item":{"episodeid":'$tvShowEpisodeId'},"options":{"resume":true}},"id":3}'
}

