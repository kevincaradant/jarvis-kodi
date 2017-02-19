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
   - Donner des commandes de directions
   - D'état de lecture (Pause / Jouer)
   - Gérer le son (Bas, Normal ou Haut)
   - Lancer un film ou un épisode en le dictant
   - Ouvrir la liste des films et des musiques et des photos
   - D'autres fonctionnalités viendront au fur et à mesure (votre contribution est la bienvenue)

NB: * signifie n'importe quel mot à cet endroit

VERSION: V0.2

## Usage
```
Vous: `CONTROLE CODI` (Commencer à intéragir avec KODI)
Vous: `*BAS*` (Dirige vers le bas)   
Vous: `*HAUT*` (Dirige vers le haut)   
Vous: `*GAUCHE*` (Dirige vers la gauche)   
Vous: `*DROITE*` (Dirige vers la droite)   
Vous: `*VOLUME*BAS*` (Met le volume a 25 pourcents)   
Vous: `*VOLUME*NORMAL*` (Met le volume a 50 pourcents)   
Vous: `*VOLUME*HAUT*` (Met le volume a 90 pourcents)   
Vous: `*AFFICHE*INFORMATIONS*FILM*` (Affiche les informations relative au film )   
Vous: `*CACHE*INFORMATIONS*FILM*` (Affiche les informations relative au film )   
Vous: `*MUET*` (Coupe le son du film et de Kodi)   
Vous: `*RETOUR*` (Revient en arrière de 1 cran dans le menu)   
Vous: `*NON*MUET*` (Active à nouveau le son du film et de Kodi)   
Vous: `*PAUSE*`   
Vous: `*MENU*PRINCIPAL*` (Affiche le menu principal de Kodi)   
Vous: `*JOUER*` (Sort de pause un film)    
Vous: `*ACTIVE*SOUS*TITRE*`   
Vous: `*DESACTIVE*SOUS*TITRE*`   
Vous: `*SOUS*TITRE*SUIVANT*` (Charge les sous-titres suivant du film si disponible)   
Vous: `*VALIDE*` (Synonyme du OK)   
Vous: `*PLEIN*ECRAN*` (Active et désactive le plein écran)   
Vous: `*ARRET*` (Arrete la lecture du film)   
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
Vous: `*LANCE*FILM(*)` (Lancer un film en donnant son nom / mot clé)
Vous: `TERMINE*AVEC*CODI` (Termine l'intéraction avec KODI)
Vous: `*RELANCE*CODI*` (Permet d'arreter le processus Kodi actuel et d'en relancer un nouveau)   
Vous: `*QUITTE*CODI*` (Permet de quitter Kodi)   
Vous: `*LANCE*CODI*` (Permet de lancer Kodi si celui ci n'est pas encore actif)   
```

## Description
Allows:
   - Give directions commands
   - On the playback status (Pause / Play)
   - Manage the sound (Low / Normal / High)
   - Start a movie via your voice
   - Open a list of movies and musics, and photos
   - Other features will come with the time  (your help is welcome)

NB: * means any word at this location


VERSION: V0.2

## Use
```
You: `CODY CONTROL` (Start the ineractions with KODI)
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
You: `*PICTURES*LIST*` (Opens the list of photos)  
You: `*SHOW*VIDEO*CODEC*` (Show a technical configuration of your video)
You: `*HIDE*VIDEO*CODEC*` (Hide a technical configuration of your video)
You: `*UPDATE*VIDEO*LIBRARY*` (Update the library with the last videos added)
You: `*CLEAN*VIDEO*LIBRARY*` (Remove the videos which doesn't exist anymore)
You: `*UPDATE*MUSIC*LIBRARY*` (Update the library with the last musics added)
You: `*CLEAN*MUSIC*LIBRARY*` (Remove the musics which doesn't exist anymore)
You: `*SHOW*OSD*`
You: `*SHOW*HIDE*` 
You: `*NEXT*TRACK*` (Play the next music track)
You: `*PREVIOUS*TRACK*` (Play the previous music track)
You: `*START*MOVIE (THE NAME OF YOUR MOVIE)` (Start a movie giving it name)
You: `*FINISH*WITH*CODY` (To stop the interactions with KODI) 
You: `*RESTART*CODY*` (Used to stop the current Kodi process and to start a new)   
You: `*QUIT*CODY*` (Exits Kodi)   
You: `*START*CODY*` (Starts Kodi if it is not yet active)
```

## Author & Contributors
[Kévin CARADANT] (kevin.caradant@gmail.com)
