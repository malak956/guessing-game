#!/bin/bash

# Fonction pour demander à l'utilisateur de deviner
guess_files() {
    local correct_answer=$(ls -1 | wc -l)  # Compte le nombre de fichiers dans le répertoire actuel
    local guess

    # Demande à l'utilisateur de deviner jusqu'à ce qu'il trouve la bonne réponse
    while true; do
        read -p "Devinez combien de fichiers sont présents dans ce répertoire : " guess
        if (( guess < correct_answer )); then
            echo "Trop bas ! Essayez encore."
        elif (( guess > correct_answer )); then
            echo "Trop haut ! Essayez encore."
        else
            echo "Félicitations ! Vous avez deviné correctement."
            break
        fi
    done
}

# Appeler la fonction pour démarrer le jeu
guess_files

