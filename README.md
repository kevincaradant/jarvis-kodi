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
   - Effectuer une action pour une instance de Kodi précise

NB1: D'autres fonctionnalités viendront au fur et à mesure (votre contribution est la bienvenue)

NB2: * signifie n'importe quel mot à cet endroit

VERSION: V1.0

## Breaking Change
   - Ajout de la fonctionnalité de définir une instance de Kodi via son nom
Cette fonctionnalité étant récente, peut engendrer des bugs non présent dans la version précédente
Si cela est le cas, merci de me faire remonter votre problème à l'aide d'un ticket GITHUB (Issue)
Merci par avance

   - Ajout des attributs login / mot de passe pour les utilisateurs utilisant Kodi de manière protégée

## Usage
```
Vous: `CONTROLE *KODI|*CODI*|*CODY*|*KODY*|*KAUDI*|*KAUDY*|*CAUDI*|*CAUDY*` (Commencer à intéragir avec KODI)
Vous: `*BAS*DANS*(périphérique Kodi désigné)|*BAS*` (Dirige vers le bas)   
Vous: `*HAUT*DANS*(périphérique Kodi désigné)|*HAUT*` (Dirige vers le haut)   
Vous: `*GAUCHE*DANS*(périphérique Kodi désigné)|*GAUCHE*` (Dirige vers la gauche)   
Vous: `*DROITE*DANS*(périphérique Kodi désigné)|*DROITE*` (Dirige vers la droite)   
Vous: `*VOLUME*FAIBLE*DANS*(périphérique Kodi désigné)|*VOLUME*FAIBLE*` (Met le volume a 25 pourcents)   
Vous: `*VOLUME*NORMAL*DANS*(périphérique Kodi désigné)|*VOLUME*NORMAL*` (Met le volume a 50 pourcents)   
Vous: `*VOLUME*FORT*DANS*(périphérique Kodi désigné)|*VOLUME*FORT*` (Met le volume a 90 pourcents)   
Vous: `*AFFICHE*INFORMATION*FILM*DANS*(périphérique Kodi désigné)|*AFFICHE*INFORMATION*FILM*` (Affiche les informations relative au film )   
Vous: `*CACHE*INFORMATION*FILM*DANS*(périphérique Kodi désigné)|*CACHE*INFORMATION*FILM*` (Affiche les informations relative au film )   
Vous: `*MUET*DANS*(périphérique Kodi désigné)|*MUET*` (Coupe le son du film et de Kodi)   
Vous: `*RETOUR*DANS*(périphérique Kodi désigné)|*RETOUR*` (Revient en arrière de 1 cran dans le menu)   
Vous: `*NON*MUET*DANS*(périphérique Kodi désigné)|*NON*MUET*` (Active à nouveau le son du film et de Kodi)   
Vous: `*PAUSE*DANS*(périphérique Kodi désigné)|*PAUSE*`   
Vous: `*MENU*PRINCIPAL*DANS*(périphérique Kodi désigné)|*MENU*PRINCIPAL*` (Affiche le menu principal de Kodi)   
Vous: `*LIRE*DANS*|*REPRENDRE*DANS*(périphérique Kodi désigné)|*LIRE*|*REPRENDRE*` (Sort de pause un film)    
Vous: `*ACTIVE*SOUS*TITRE*DANS*(périphérique Kodi désigné)|*ACTIVE*SOUS*TITRE*`   
Vous: `*DESACTIVE*SOUS*TITRE*DANS*(périphérique Kodi désigné)|*DESACTIVE*SOUS*TITRE*`   
Vous: `*SOUS*TITRE*SUIVANT*DANS*(périphérique Kodi désigné)|*SOUS*TITRE*SUIVANT*` (Charge les sous-titres suivant du film si disponible)   
Vous: `*VALIDE*DANS*(périphérique Kodi désigné)|*VALIDE*` (Synonyme du OK)   
Vous: `*PLEIN*ECRAN*DANS*(périphérique Kodi désigné)|*PLEIN*ECRAN*` (Active et désactive le plein écran)   
Vous: `*ARRET*DANS*(périphérique Kodi désigné)|*ARRET*` (Arrete la lecture du film)   
Vous: `*AFFICHE*LISTE*FAVORI*DANS*(périphérique Kodi désigné)|*AFFICHE*LISTE*FAVORI* (Affiche la liste des favoris)   
Vous: `*LISTE*FILM*DANS*(périphérique Kodi désigné)|*LISTE*FILM*` (Ouvre la liste des films)   
Vous: `*LISTE*MUSIQUE*DANS*(périphérique Kodi désigné)|*LISTE*MUSIQUE*` (Ouvre la liste des musiques)   
Vous: `*LISTE*PHOTO*DANS*(périphérique Kodi désigné)|*LISTE*PHOTO*` (Ouvre la liste des photos)
Vous: `*AFFICHE*CODEC*VIDEO*DANS*(périphérique Kodi désigné)|*AFFICHE*CODEC*VIDEO*` (Affiche les informations techniques de la vidéo)
Vous: `*CACHE*CODEC*VIDEO*DANS*(périphérique Kodi désigné)|*CACHE*CODEC*VIDEO*` (Cache les informations techniques de la vidéo)
Vous: `*MET*A*JOUR*MEDIATHEQUE*VIDEO*DANS*(périphérique Kodi désigné)|*MET*A*JOUR*MEDIATHEQUE*VIDEO*` (Ajoute les nouveaux films et épisodes)
Vous: `*NETTOYAGE*MEDIATHEQUE*VIDEO*DANS*(périphérique Kodi désigné)|*NETTOYAGE*MEDIATHEQUE*VIDEO*` (Supprime les films et épisodes qui n'existent plus)
Vous: `*MET*A*JOUR*MEDIATHEQUE*MUSIQUE*DANS*(périphérique Kodi désigné)|*MET*A*JOUR*MEDIATHEQUE*MUSIQUE*` (Ajoute les nouvelles musiques)
Vous: `*NETTOYAGE*MEDIATHEQUE*MUSIQUE*DANS*(périphérique Kodi désigné)|*NETTOYAGE*MEDIATHEQUE*MUSIQUE*` (Supprime les anciennes musiques inexistantes)
Vous: `*AFFICHE*OSD*DANS*(périphérique Kodi désigné)|*AFFICHE*OSD*`
Vous: `*CACHE*OSD*DANS*(périphérique Kodi désigné)|*CACHE*OSD*`
Vous: `*PISTE*SUIVANTE*DANS*(périphérique Kodi désigné)|*PISTE*SUIVANTE*` (Piste de musique suivante si disponible)
Vous: `*PISTE*PRECEDENTE*DANS*(périphérique Kodi désigné)|*PISTE*PRECEDENTE*` (Piste de musique précedente si disponible)
Vous: `*LANCE*FILM (LE NOM DU FILM)*DANS*(périphérique Kodi désigné)|*LANCE*FILM (LE NOM DU FILM)*` (Lancer un film en donnant son nom / mot clé)
Vous: `*LANCE * SERIE (LE NOM DE LA SERIE)* SAISON (LE NUMERO DE LA SAISON)* EPISODE (LE NUMERO DE L'EPISODE)*DANS*(périphérique Kodi désigné)|*LANCE * SERIE (LE NOM DE LA SERIE)* SAISON (LE NUMERO DE LA SAISON)* EPISODE (LE NUMERO DE L'EPISODE)*` (Lancer un épisode de série en donnant son nom / mot clé puis le numéro de la saison puis l'épisode souhaité)
Vous: `*LANCE PLUGIN (NOM DU PLUGIN)*DANS*(périphérique Kodi désigné)|*EXECUTE PLUGIN (NOM DU PLUGIN)*DANS*(périphérique Kodi désigné)|*LANCE PLUGIN (NOM DU PLUGIN)*|*EXECUTE PLUGIN (NOM DU PLUGIN) (Lance un plugin)
Vous: `TERMINE*AVEC*KODI|*CODI*|*CODY*|*KODY*|*KAUDI*|*KAUDY*|*CAUDI*|*CAUDY*` (Termine l'intéraction avec KODI)
Vous: `*RELANCE*DANS*(périphérique Kodi désigné)*CODI*|*CODY*|*KODY*|*KAUDI*|*KAUDY*|*CAUDI*|*CAUDY*` (Permet d'arreter le processus Kodi actuel et d'en relancer un nouveau)   
Vous: `*QUITTE*DANS(périphérique Kodi désigné)*KODI|*CODI*|*CODY*|*KODY*|*KAUDI*|*KAUDY*|*CAUDI*|*CAUDY*` (Permet de quitter Kodi)   
Vous: `*LANCE*KODI|*CODI*|*CODY*|*KODY*|*KAUDI*|*KAUDY*|*CAUDI*|*CAUDY*` (Permet de lancer Kodi si celui ci n'est pas encore actif)   
```




## Description
Allows:
   - Give directions commands
   - On the playback status (Pause / Play)
   - Manage the sound (Low / Normal / High)
   - Start a movie via your voice
   - Open a list of movies and musics, and photos
   - Perform an action for a specific Kodi instance

NB1: Other features will come with the time  (your help is welcome)

NB2: * means any word at this location

VERSION: V1.0

## Breaking Change
   - Added the functionality to define an instance of Kodi via its name
This feature is recent, can cause bugs not present in the previous version
If this is the case, please send me your problem using a GITHUB (Issue) ticket
thanks in advance

   - Added login / password attributes for users using Kodi in a protected way

## Use
```
You: `*KODI|*CODI*|*CODY*|*KODY*|*KAUDI*|*KAUDY*|*CAUDI*|*CAUDY* CONTROL` (Start the interactions with KODI)
You: `*BOTTOM*IN*(Kodi device focused)|*BOTTOM*` (Directs down)   
You: `*HIGH*IN*(Kodi device focused)|*HIGH*` (Runs up)   
You: `*LEFT*IN*(Kodi device focused)|*LEFT*` (Directs to the left)   
You: `*RIGHT*IN*(Kodi device focused)|*RIGHT*` (Directs to the right)   
You: `*LOW SOUND*IN*(Kodi device focused)|*LOW SOUND*` (Met volume was 25 percent)   
You: `*NORMAL SOUND*IN*(Kodi device focused)|*NORMAL SOUND*` (Met volume was 50 percent)   
You: `*HIGH SOUND*IN*(Kodi device focused)|*HIGH SOUND*` (Met volume was 90 percent)   
You: `*SHOW*INFORMATIONS*MOVIE*IN*(Kodi device focused)|*SHOW*INFORMATIONS*MOVIE*` (Displays the informations about the movie)   
You: `*MUTE*IN*(Kodi device focused)|*MUTE*` (Mute the movie sound and Kodi)   
You: `*RETURN*IN*(Kodi device focused)|*RETURN*` (Goes back to one step in the menu)   
You: `*NO MUTE*IN*(Kodi device focused)|*NO MUTE*` (Turns again the movie and Kodi)   
You: `*MAIN MENU*IN*(Kodi device focused)|*MAIN MENU*` (Display the main menu of Kodi)   
You: `*PAUSE*IN*(Kodi device focused)|*PAUSE*` (Suspend the movie)   
You: `*PLAY*IN*(Kodi device focused)|*PLAY*` (Play again the movie)   
You: `*ENABLE*SUBTITLES*IN*(Kodi device focused)|*ENABLE*SUBTITLES*`   
You: `*DISABLE*SUBTITLES*IN*(Kodi device focused)|*DISABLE*SUBTITLES*`   
You: `*NEXT SUBTITLE*IN*(Kodi device focused)|*NEXT SUBTITLE*` (load the next subtitle of the movie if available)   
You: `*CONFIRM*IN*(Kodi device focused)|*CONFIRM*` (Synonym OK)   
You: `*FULLSCREEN*IN*(Kodi device focused)|*FULLSCREEN*` (Put the movie in fullscreen)   
You: `*STOP*IN*(Kodi device focused)|*STOP*` (Stop to show the movie)   
You: `*MOVIES*LIST*IN*(Kodi device focused)|*MOVIES*LIST*` (Opens the list of films)   
You: `*MUSICS*LIST*IN*(Kodi device focused)|*MUSICS*LIST*` (Opens the list of music)   
You: `*FAVOURITE*LIST*IN*(Kodi device focused)|*FAVOURITE*LIST*` (Open the list of favourites)
You: `*PICTURES*LIST*IN*(Kodi device focused)|*PICTURES*LIST*` (Opens the list of photos)  
You: `*SHOW*VIDEO*CODEC*IN*(Kodi device focused)|*SHOW*VIDEO*CODEC*` (Show a technical configuration of your video)
You: `*HIDE*VIDEO*CODEC*IN*(Kodi device focused)|*HIDE*VIDEO*CODEC*` (Hide a technical configuration of your video)
You: `*UPDATE*VIDEO*LIBRARY*IN*(Kodi device focused)|*UPDATE*VIDEO*LIBRARY*` (Update the library with the last videos added)
You: `*CLEAN*VIDEO*LIBRARY*IN*(Kodi device focused)|*CLEAN*VIDEO*LIBRARY*` (Remove the videos which doesn't exist anymore)
You: `*UPDATE*MUSIC*LIBRARY*IN*(Kodi device focused)|*UPDATE*MUSIC*LIBRARY*` (Update the library with the last musics added)
You: `*CLEAN*MUSIC*LIBRARY*IN*(Kodi device focused)|*CLEAN*MUSIC*LIBRARY*` (Remove the musics which doesn't exist anymore)
You: `*SHOW*OSD*IN*(Kodi device focused)|*SHOW*OSD*`
You: `*HIDE*OSD*IN*(Kodi device focused)|*HIDE*OSD*` 
You: `*NEXT*TRACK*IN*(Kodi device focused)|*NEXT*TRACK*` (Play the next music track)
You: `*PREVIOUS*TRACK*IN*(Kodi device focused)|*PREVIOUS*TRACK*` (Play the previous music track)
You: `*START*MOVIE*IN*(Kodi device focused)|*START*MOVIE (THE NAME OF YOUR MOVIE)*` (Start a movie giving it name)
You: `*START PLUGIN (NAME OF THE PLUGIN)*IN*(Kodi device focused)|*EXECUTE PLUGIN (NAME OF THE PLUGIN)*IN*(Kodi device focused)|*START PLUGIN (NAME OF THE PLUGIN)*|*EXECUTE PLUGIN (NAME OF THE PLUGIN)* (Start a addon)
You: `*START*TVSHOW (THE NAME OF YOUR TVSHOW)* SEASON (THE NUMBER OF THE SEASON)* EPISODE (THE NUMBER OF THE EPISODE)*IN*(Kodi device focused)|*START*TVSHOW (THE NAME OF YOUR TVSHOW)* SEASON (THE NUMBER OF THE SEASON)* EPISODE (THE NUMBER OF THE EPISODE)*` (Start a episode of tvshow giving it name, then it season number and to finish it episode number)
You: `*FINISH*WITH*KODI|*CODI*|*CODY*|*KODY*|*KAUDI*|*KAUDY*|*CAUDI*|*CAUDY*` (To stop the interactions with KODI) 
You: `*RESTART*IN*(Kodi device focused)|*KODI*|*CODI*|*CODY*|*KODY*|*KAUDI*|*KAUDY*|*CAUDI*|*CAUDY*` (Used to stop the current Kodi process and to start a new)   
You: `*QUIT*IN*(Kodi device focused)|KODI|*CODI*|*CODY*|*KODY*|*KAUDI*|*KAUDY*|*CAUDI*|*CAUDY*` (Exits Kodi)   
You: `*START*KODI|*CODI*|*CODY*|*KODY*|*KAUDI*|*KAUDY*|*CAUDI*|*CAUDY*` (Starts Kodi if it is not yet active)
```   

## Author & Contributors
Kévin CARADANT (kevin.caradant@gmail.com)
