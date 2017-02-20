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
    if [ "un" == $1 ]
    then
       echo 1
    elif [ "deux" == $1 ] || [ "de" == $1 ]
    then
       echo 2
    elif [ "trois" == $1 ] || [ "troie" == $1 ]
    then
       echo 3
    elif [ "quatre" == $1 ]
    then 
       echo 4
    elif [ "cinq" == $1 ]
    then 
       echo 5
    elif [ "six" == $1 ]
    then 
       echo 6
    elif [ "sept" == $1 ] || [ "cette" == $1 ] || [ "cet" == $1 ]
    then 
       echo 7
    elif [ "huit" == $1 ]
    then 
       echo 8
    elif [ "neuf" == $1 ]
    then 
       echo 9
    elif [ "dix" == $1 ] || [ "dis" == $1 ] || [ "dit" == $1 ]
    then 
       echo 10
    elif [ "onze" == $1 ]
    then 
       echo 11
    elif [ "douze" == $1 ]
    then 
       echo 12
    elif [ "treize" == $1 ]
    then 
       echo 13
    elif [ "quatorze" == $1 ]
    then 
       echo 14
    elif [ "quinze" == $1 ]
    then 
       echo 15
    elif [ "seize" == $1 ]
    then 
       echo 16
    elif [ "dix sept" == $1 ] || [ "dix-sept" == $1 ] || [ "dix cette" == $1 ] || [ "dis sept" == $1 ] || [ "dit sept" == $1 ] || [ "dix cet" == $1 ] || [ "dis cette" == $1 ] || [ "dis cet" == $1 ] || [ "dit cette" == $1 ] || [ "dit cet" == $1 ]
    then 
       echo 17
    elif [ "dix huit" == $1 ] || [ "dix-huit" == $1 ] || [ "dis huit" == $1 ] || [ "dit huit" == $1 ]
    then 
       echo 18
    elif [ "dix neuf" == $1 ] || [ "dix-neuf" == $1 ] || [ "dis neuf" == $1 ] || [ "dit neuf" == $1 ]
    then 
       echo 19
    elif [ "vingt" == $1 ] || [ "vin" == $1 ] || [ "vain" == $1 ]
    then 
       echo 20
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



