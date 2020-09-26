package HelpingClasses;
import org.hibernate.SessionFactory;
import org.hibernate.boot.Metadata;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;

import org.hibernate.service.ServiceRegistry;

public class SessionManag {

		static SessionFactory sf;
		private static ServiceRegistry sr;
		public static SessionFactory getSessionFact()
		{
			StandardServiceRegistry ssr=new StandardServiceRegistryBuilder().configure("resources/hibernate.cfg.xml").build();
			Metadata meta=new MetadataSources(ssr).getMetadataBuilder().build();
			SessionFactory sf=meta.getSessionFactoryBuilder().build();
			System.out.println("build Session  factory---------------");
	    	return sf;
		}

}
