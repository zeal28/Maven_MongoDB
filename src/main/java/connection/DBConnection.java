package connection;

import java.io.InputStream;

import org.bson.Document;

import com.mongodb.MongoClient;
import com.mongodb.MongoClientURI;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;

public class DBConnection {
	  public MongoClient mongoclient;
	    public MongoCollection<Document> usersCollection;
	 
	    //private variables declaration.
	    
	    private MongoDatabase database;
	 
	    private InputStream fis;
	    
	    //Method for opening up a database connection.
	    public void openConnection(){

	        try{
	        ReadPropertyFile data=new ReadPropertyFile();
	        	String clientname= data.getClient();
	        	String database_name= data.getDatabase();
	        	String col_name=data.getCollection();
	            //Initializing database connection.
	        	 mongoclient = new MongoClient(clientname);
	        	//mongoclient = 	new MongoClient(new MongoClientURI("mongodb://zeal28:zeal28@ds042698.mongolab.com:42698/loginnew"));
	      //      mongoclient = new MongoClient("");
	            database = mongoclient.getDatabase(database_name);
	          usersCollection = database.getCollection(col_name);
	          
	        } catch(Exception e){
	            e.printStackTrace();
	        } 
	    }
	    //Method for closing a connection.
	    public void closeConnection(){
	        mongoclient.close();
	    }

}
