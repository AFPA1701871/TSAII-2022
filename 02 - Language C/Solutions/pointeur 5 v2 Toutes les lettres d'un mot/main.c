#include <stdio.h>
#include <stdlib.h>


void AjouterLettre(char lettre, char lettres[], int *indexLettres,int nbLettres[]);
int LettreExiste(char lettre, char lettres[], int indexLettres);
void AugmenterNbLettres(int position, int nbLettres[]);
void afficherTableauInt(int tab[],int taille);
void afficherTableauChar(char tab[],int taille);



int main()
{
    char mot[50],lettres[50];
    int nbLettres[50];
    int indexMot, indexLettres=0;
    int tailleMot;
    int position;

    printf("Veuillez saisir un mot : ");
    scanf("%s",mot);
    tailleMot=strlen(mot);

    for (indexMot=0; indexMot<tailleMot; indexMot++)
    {
        position = LettreExiste(mot[indexMot],lettres,indexLettres);
        if (position==-1)
        {
            AjouterLettre(mot[indexMot],lettres,&indexLettres,nbLettres);
        }
        else
        {
            AugmenterNbLettres(position,nbLettres);
        }
        afficherTableauChar(lettres,indexLettres+1);
        printf("\n");
        afficherTableauInt(nbLettres,indexLettres+1);
        printf("\n\n\n");
    }




    return 0;
}

/**
    Ajoute une lettre aux tableaux de suivis
*/
void AjouterLettre(char lettre, char lettres[], int *indexLettres,int nbLettres[])
{
    // augmente  indexLettre
    (*indexLettres)++;
    // ajouter  lettre au tableau lettres à la position indexLettres
    lettres[*indexLettres]=lettre;
    // ajouter 1 au tableau nbLettres à la position indexLettres
    nbLettres[*indexLettres]=1;
}

/**
    Recherche si la lettre existe dans le tableau.
    Si elle existe la fonction renvoi la position  sinon renvoi -1
*/
int LettreExiste(char lettre, char lettres[], int indexLettres)
{
    int i=0;
    int trouve=0;
    // parcourir le tableau lettres
    do
    {
        if(lettres[i]==lettre)
        {
            trouve=1;
        }
        else
        {
            i++;
        }
    }
    while(i<=indexLettres && trouve==0);


    // renvoyer la position ou -1
    if (trouve==1)
    {
        return i;
    }
    else
    {
        return -1;
    }

}

/**
    Augmente le nombre de lettre de 1 à la position indiquée
*/
void AugmenterNbLettres(int position, int nbLettres[])
{
    // modifier la valeur à la position indiquée dans le tableau nbLettres
    nbLettres[position]++;
}



void afficherTableauInt(int tab[],int taille)
{
    int i;
    for(i=0; i<taille; i++)
    {
        printf("%d |",tab[i]);
    }
}
void afficherTableauChar(char tab[],int taille)
{
    int i;
    for(i=0; i<taille; i++)
    {
        printf("%c |",tab[i]);
    }
}
