#Commentaire

#FROM définit l'image de base pour créer notre image
FROM ubuntu:latest 

#LABEL Author Email
LABEL Author="<nom>" Email="<mail>"

#RUN permet de lancer des scripts
RUN echo Hello World

#ADD permet de copier un fichier depuis l'hote, depuis une adresse vers l'image

#WORKDIR /usr/src/app définir répertoire

#COPY cible destination copier un fichier

#EXPOSE 3000 ouvre le port 3000

#CMD ["npm, "start"] Lancer la commande npm start
