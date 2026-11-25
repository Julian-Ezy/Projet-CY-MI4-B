#include "projet.h"

void choix_utilisateur(){

    int choix, verif, i = 0;

    printf("\n\n\n\n\n\n\n\n\n\n\n\nVeuillez choisir une année entre 2005 et 2024 pour récupérer ses statistiques\n");
    printf("Ou bien 0 pour quitter\n");

    do {
        verif = scanf("%d", &choix); 
        while(getchar() != '\n');
        if ( verif == 1){

            if(choix == 0){
              return;
            }
            choix = choix-2005;

        

            if (choix >= 0 && choix <=19) { 
                printf("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n");
                stat();
                return;
            } 

        } 
        else{
            if (i == 0) {
            printf("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nChoix invalide.\n");  
            } 
            else {
            printf("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nChoix invalide +%d.\n", i); 
            }
            if(i >= 50){
                printf("\nWow, ce type n'a rien d'autre à faire de sa journée\n"); 
            }
            printf("\n\n\n\n\n\n\n\n\n\n\n\nVeuillez choisir une année entre 2005 et 2024 pour récupérer ses statistiques\n");
            printf("Ou bien 0 pour quitter\n");
            i++; 
        }
        
    }while ((choix <0 || choix >19 ) || verif != 1);    



