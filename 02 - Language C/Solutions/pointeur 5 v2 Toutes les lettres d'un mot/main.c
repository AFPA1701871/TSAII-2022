#include <stdio.h>
#include <stdlib.h>


void AjouterLettre(char lettre, char lettres[], int *indexLettres,char nbLettres[]);
int LettreExiste(char lettre, char lettres[], int indexLettres);
void AugmenterNbLettres(int position, char nbLettres[]);



int main()
{
    char mot[50],lettres[50],nbLettres[50];
    int indexMot, indexLettres=0;
    int tailleMot;

    printf("Veuillez saisir un mot : ");
    scanf("%s",mot);
    tailleMot=strlen(mot);



    return 0;
}

/**
    Ajoute une lettre aux tableaux de suivis
*/
void AjouterLettre(char lettre, char lettres[], int *indexLettres,char nbLettres[])
{
    // augmente  indexLettre

    //ajouter  lettre au tableau lettres à la position indexLettres

    // ajouter 1 au tableau nbLettres à la position indexLettres
}

/**
    Recherche si la lettre existe dans le tableau.
    Si elle existe la fonction renvoi la position  sinon renvoi -1
*/
int LettreExiste(char lettre, char lettres[], int indexLettres)
{
    // parcourir le tableau lettres

    // renvoyer la position ou -1
}

/**
    Augmente le nombre de lettre de 1 à la position indiquée
*/
void AugmenterNbLettres(int position, char nbLettres[])
{
    // modifier la valeur à la position indiquée dans le tableau nbLettres

}
