package utility;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpSession;


import org.bson.Document;
import org.bson.types.ObjectId;

import com.mongodb.DBCollection;

import connection.DBConnection;
public class Logic {
	DBConnection co = new DBConnection();
	public void Insert(User a)
	{
		try {
			co.openConnection();
			co.usersCollection.insertOne(new Document("FirstName",a.getName()).append("Email", a.getEmail()).append("UserName", a.getUserName()).append("Password", a.getPassword()));
			co.closeConnection();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
	
	public List<Document> Search(User a)
	{
		
		
			co.openConnection();
			List<Document> l= co.usersCollection.find(new Document("UserName",a.getUserName()).append("Password", a.getPassword())).into(new ArrayList());
			co.closeConnection();
			return l;
		
	}
	
	public List Edit(User a)
	{
		List l= new ArrayList();
	
		return l;
	}
	
	public void Update(User a)
	{
		
		/*ObjectId id=new ObjectId(a.id);*/
		co.openConnection();
			co.usersCollection.updateOne(new Document("_id",""),new Document("$set",new Document("password",a.getNewPassword())));
			co.closeConnection();
		
	}
	
	public void Delete(User a)
	{
		
	}

}
