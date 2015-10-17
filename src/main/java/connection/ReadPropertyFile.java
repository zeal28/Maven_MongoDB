package connection;

import java.io.InputStream;
import java.util.Properties;

public class ReadPropertyFile {
	protected Properties prop=new Properties();
	 protected InputStream input = ReadPropertyFile.class.getClassLoader().getResourceAsStream("config.properties");
	 
	 public ReadPropertyFile() throws Exception{
		 prop=new Properties();
		 prop.load(input);
	 }
	public String getClient(){
		return prop.getProperty("client");
	}
	public String getDatabase(){
		return prop.getProperty("database");
	}
	public String getCollection(){
		return prop.getProperty("collection");
	}

}
