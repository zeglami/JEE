package org.cours.dao;

import java.util.List;
import javax.ejb.Local;
import org.cours.entities.Article;


@Local
public interface ArticleFacadeLocal {

    void create(Article article);

    void edit(Article article);

    void remove(Article article);

    Article find(Object id);

    List<Article> findAll();

    List<Article> findRange(int[] range);

    int count();
    
}
