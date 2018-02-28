package org.cours.beans;
import java.util.List;
import  org.cours.dao.ArticleFacadeLocal;

import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;
import org.cours.entities.Article;


@ManagedBean
@RequestScoped

public class ArticleBean {

    @EJB
    private ArticleFacadeLocal articleFascade;
    private Article article=new Article();
    
    public void ajouterArticle(){
        
        articleFascade.create(article);
        
     
    }
    
    public List<Article> afficherArticles(){
        
        return articleFascade.findAll();
    }

    public ArticleFacadeLocal getArticleFascade() {
        return articleFascade;
    }

    public void setArticleFascade(ArticleFacadeLocal articleFascade) {
        this.articleFascade = articleFascade;
    }

    public Article getArticle() {
        return article;
    }

    public void setArticle(Article article) {
        this.article = article;
    }
    
    
    public ArticleBean() {
    }
    
}
