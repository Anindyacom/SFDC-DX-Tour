public with sharing class WinImperativeController {



public Opportunity opportunity {get; set;}

public String effectiveDate {get; set;}
public String overAllTrnds{get; set;}



public WinImperativeController () {

  DateTime d =  Date.Today();

 effectiveDate = d.format('dd/MM/YYYY') ;
}

  


}