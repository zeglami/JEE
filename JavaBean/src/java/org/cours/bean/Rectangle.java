package org.cours.bean;

public class Rectangle {
    
    private int largeur;
    private int longueur;

    public Rectangle() {
    }

    public int getLargeur() {
        return largeur;
    }

    public void setLargeur(int largeur) {
        this.largeur = largeur;
    }

    public int getLongueur() {
        return longueur;
    }

    public void setLongueur(int longueur) {
        this.longueur = longueur;
    }
   
    public int getPerimetre()
    {
        return((largeur+longueur)*2);
    }
    
    public int getSurface()
    {
        return((largeur+longueur)*2+1);
    }
}
