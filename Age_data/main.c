#include "projet.h"

int main(){
    int n = 0,verif;

    choix_utilisateur();


    do{ 
        printf("\n\n\n\n\n\n\n\n\n\n\n\n\n\nVoulez vous quitter le programme ?\n");
        printf("\nTapez \"1\" si oui et \"2\" sinon : ");
        verif = scanf("%d",&n); 
        while(getchar() != '\n'); 
        if ( n == 2  && verif == 1){ 
            choix_utilisateur();
        }
    
        
    }while( (n != 1 ) || verif != 1); 

    

    printf("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nAu revoir !\n\n");
    return 0;
}