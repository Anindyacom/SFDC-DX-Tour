public class MyController {

private final Account account;

public MyController(){
 //sample
 account = [Select Id,Name,Site from Account where Id =:ApexPages.currentPage().getParameters().get('id')];
 }
 
 public Account getAccount(){
 
 return account;
 }
 
 public pageReference save(){
 
 update account;
 return null;
 }
 }