<!---
IMPORTANT
=========
This README.md is displayed in the WebStore as well as within Jarvis app
Please do not change the structure of this file
Fill-in Description, Usage & Author sections
Make sure to rename the [en] folder into the language code your plugin is written in (ex: fr, es, de, it...)
For multi-language plugin:
- clone the language directory and translate commands/functions.sh
- optionally write the Description / Usage sections in several languages
-->

## Description
Permet de:
   - Donner des commandes de direction
   - D'état de lecture (Pause / Jouer)
   - Gérer le son (Bas, Normal ou Haut)
   - Lancer un film ou un épisode en le dictant
   - Ouvrir la liste des films et des musiques, des photos ou de favoris
   - Et d'autres

NB1: D'autres fonctionnalités viendront au fur et à mesure (votre contribution est la bienvenue)

NB2: * signifie n'importe quel mot à cet endroit

VERSION: V0.4


## Usage
```
Vous: `CONTROLE *KODI|*CODI*|*CODY*|*KODY*|*KAUDI*|*KAUDY*|*CAUDI*|*CAUDY*` (Commencer à intéragir avec KODI)
Vous: `*BAS*` (Dirige vers le bas)   
Vous: `*HAUT*` (Dirige vers le haut)   
Vous: `*GAUCHE*` (Dirige vers la gauche)   
Vous: `*DROITE*` (Dirige vers la droite)   
Vous: `*VOLUME*FAIBLE*` (Met le volume a 25 pourcents)   
Vous: `*VOLUME*NORMAL*` (Met le volume a 50 pourcents)   
Vous: `*VOLUME*FORT*` (Met le volume a 90 pourcents)   
Vous: `*AFFICHE*INFORMATION*FILM*` (Affiche les informations relative au film )   
Vous: `*CACHE*INFORMATION*FILM*` (Affiche les informations relative au film )   
Vous: `*MUET*` (Coupe le son du film et de Kodi)   
Vous: `*RETOUR*` (Revient en arrière de 1 cran dans le menu)   
Vous: `*NON*MUET*` (Active à nouveau le son du film et de Kodi)   
Vous: `*PAUSE*`   
Vous: `*MENU*PRINCIPAL*` (Affiche le menu principal de Kodi)   
Vous: `*LIRE* ou *REPRENDRE*` (Sort de pause un film)    
Vous: `*ACTIVE*SOUS*TITRE*`   
Vous: `*DESACTIVE*SOUS*TITRE*`   
Vous: `*SOUS*TITRE*SUIVANT*` (Charge les sous-titres suivant du film si disponible)   
Vous: `*VALIDE*` (Synonyme du OK)   
Vous: `*PLEIN*ECRAN*` (Active et désactive le plein écran)   
Vous: `*ARRET*` (Arrete la lecture du film)   
Vous: `*AFFICHE*LISTE*FAVORI* (Affiche la liste des favoris)   
Vous: `*LISTE*FILM*` (Ouvre la liste des films)   
Vous: `*LISTE*MUSIQUE*` (Ouvre la liste des musiques)   
Vous: `*LISTE*PHOTO*` (Ouvre la liste des photos)
Vous: `*AFFICHE*CODEC*VIDEO*` (Affiche les informations techniques de la vidéo)
Vous: `*CACHE*CODEC*VIDEO*` (Cache les informations techniques de la vidéo)
Vous: `*MET*A*JOUR*MEDIATHEQUE*VIDEO*` (Ajoute les nouveaux films et épisodes)
Vous: `*NETTOYAGE*MEDIATHEQUE*VIDEO*` (Supprime les films et épisodes qui n'existent plus)
Vous: `*MET*A*JOUR*MEDIATHEQUE*MUSIQUE*` (Ajoute les nouvelles musiques)
Vous: `*NETTOYAGE*MEDIATHEQUE*MUSIQUE*` (Supprime les anciennes musiques inexistantes)
Vous: `*AFFICHE*OSD*`
Vous: `*CACHE*OSD*`
Vous: `*PISTE*SUIVANTE*` (Piste de musique suivante si disponible)
Vous: `*PISTE*PRECEDENTE*` (Piste de musique précedente si disponible)
Vous: `*LANCE*FILM (LE NOM DU FILM)*` (Lancer un film en donnant son nom / mot clé)
Vous: `*LANCE * SERIE (LE NOM DE LA SERIE)* SAISON (LE NUMERO DE LA SAISON)* EPISODE (LE NUMERO DE L'EPISODE)*` (Lancer un épisode de série en donnant son nom / mot clé puis le numéro de la saison puis l'épisode souhaité)
Vous: `*LANCE PLUGIN (NOM DU PLUGIN)*|*EXECUTE PLUGIN (NOM DU PLUGIN) (Lance un plugin)
Vous: `TERMINE*AVEC*KODI|*CODI*|*CODY*|*KODY*|*KAUDI*|*KAUDY*|*CAUDI*|*CAUDY*` (Termine l'intéraction avec KODI)
Vous: `*RELANCE*KODI|*CODI*|*CODY*|*KODY*|*KAUDI*|*KAUDY*|*CAUDI*|*CAUDY*` (Permet d'arreter le processus Kodi actuel et d'en relancer un nouveau)   
Vous: `*QUITTE*KODI|*CODI*|*CODY*|*KODY*|*KAUDI*|*KAUDY*|*CAUDI*|*CAUDY*` (Permet de quitter Kodi)   
Vous: `*LANCE*KODI|*CODI*|*CODY*|*KODY*|*KAUDI*|*KAUDY*|*CAUDI*|*CAUDY*` (Permet de lancer Kodi si celui ci n'est pas encore actif)   
```




## Description
Allows:
   - Give directions commands
   - On the playback status (Pause / Play)
   - Manage the sound (Low / Normal / High)
   - Start a movie via your voice
   - Open a list of movies and musics, and photos
   - And others

NB1: Other features will come with the time  (your help is welcome)

NB2: * means any word at this location


VERSION: V0.4

## Use
```
You: `*KODI|*CODI*|*CODY*|*KODY*|*KAUDI*|*KAUDY*|*CAUDI*|*CAUDY* CONTROL` (Start the interactions with KODI)
You: `*BOTTOM*` (Directs down)   
You: `*HIGH*` (Runs up)   
You: `*LEFT*` (Directs to the left)   
You: `*RIGHT*` (Directs to the right)   
You: `*LOW SOUND*` (Met volume was 25 percent)   
You: `*NORMAL SOUND*` (Met volume was 50 percent)   
You: `*HIGH SOUND*` (Met volume was 90 percent)   
You: `*SHOW*INFORMATIONS*MOVIE*` (Displays the informations about the movie)   
You: `*MUTE*` (Mute the movie sound and Kodi)   
You: `*RETURN*` (Goes back to one step in the menu)   
You: `*NO MUTE*` (Turns again the movie and Kodi)   
You: `*MAIN MENU*` (Display the main menu of Kodi)   
You: `*PAUSE*` (Suspend the movie)   
You: `*PLAY*` (Play again the movie)   
You: `*ENABLE*SUBTITLES*`   
You: `*DISABLE*SUBTITLES*`   
You: `*NEXT SUBTITLE*` (load the next subtitle of the movie if available)   
You: `*CONFIRM*` (Synonym OK)   
You: `*FULLSCREEN*` (Put the movie in fullscreen)   
You: `*STOP*` (Stop to show the movie)   
You: `*MOVIES*LIST*` (Opens the list of films)   
You: `*MUSICS*LIST*` (Opens the list of music)   
You: `*FAVOURITE*LIST*` (Open the list of favourites)
You: `*PICTURES*LIST*` (Opens the list of photos)  
You: `*SHOW*VIDEO*CODEC*` (Show a technical configuration of your video)
You: `*HIDE*VIDEO*CODEC*` (Hide a technical configuration of your video)
You: `*UPDATE*VIDEO*LIBRARY*` (Update the library with the last videos added)
You: `*CLEAN*VIDEO*LIBRARY*` (Remove the videos which doesn't exist anymore)
You: `*UPDATE*MUSIC*LIBRARY*` (Update the library with the last musics added)
You: `*CLEAN*MUSIC*LIBRARY*` (Remove the musics which doesn't exist anymore)
You: `*SHOW*OSD*`
You: `*HIDE*OSD*` 
You: `*NEXT*TRACK*` (Play the next music track)
You: `*PREVIOUS*TRACK*` (Play the previous music track)
You: `*START*MOVIE (THE NAME OF YOUR MOVIE)*` (Start a movie giving it name)
You: `*START PLUGIN (NAME OF THE PLUGIN)*|*EXECUTE PLUGIN (NAME OF THE PLUGIN)* (Start a addon)
You: `*START*TVSHOW (THE NAME OF YOUR TVSHOW)* SEASON (THE NUMBER OF THE SEASON)* EPISODE (THE NUMBER OF THE EPISODE)*` (Start a episode of tvshow giving it name, then it season number and to finish it episode number)
You: `*FINISH*WITH*KODI|*CODI*|*CODY*|*KODY*|*KAUDI*|*KAUDY*|*CAUDI*|*CAUDY*` (To stop the interactions with KODI) 
You: `*RESTART*KODI|*CODI*|*CODY*|*KODY*|*KAUDI*|*KAUDY*|*CAUDI*|*CAUDY*` (Used to stop the current Kodi process and to start a new)   
You: `*QUIT*KODI|*CODI*|*CODY*|*KODY*|*KAUDI*|*KAUDY*|*CAUDI*|*CAUDY*` (Exits Kodi)   
You: `*START*KODI|*CODI*|*CODY*|*KODY*|*KAUDI*|*KAUDY*|*CAUDI*|*CAUDY*` (Starts Kodi if it is not yet active)
```   

## Author & Contributors
Kévin CARADANT (kevin.caradant@gmail.com)
