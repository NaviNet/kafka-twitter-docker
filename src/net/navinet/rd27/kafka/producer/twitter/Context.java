package net.navinet.rd27.kafka.producer.twitter;

import java.io.FileInputStream;
import java.io.InputStream;
import java.util.Properties;

public class Context {
	Properties prop;

	Context( String file) throws Exception{
		prop = new Properties();
	    InputStream is = new FileInputStream(file);
	    prop.load(is);
	}

	public String getString(String key){
		String value = prop.getProperty(key);

		if (value == null || value.isEmpty()) {
			return System.getenv(key);
		}

		return value;
	}

}
