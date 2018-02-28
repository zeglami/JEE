package org.cours.jstl;

import java.util.Calendar;
import java.util.Date;

public class Calendrier {
    
    private Calendar calendrier;
    
    
    public Calendrier(){
        
        calendrier=Calendar.getInstance();
    }
    
    public Date getTemps(){
        
        return calendrier.getTime();
    }
    
    public int getHeure(){
        
        return calendrier.get(Calendar.HOUR_OF_DAY);
    }
}
