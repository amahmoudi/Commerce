package bakiTech.email;

import javax.mail.*;
import javax.mail.internet.*;
import java.util.*;

public class SendProductConfirmationMail {

	public void postMail(String recipients[], String subject, String message,
			String from) throws MessagingException {
		boolean debug = false;

		// Set the host smtp address
		String SMTPHost = "127.0.0.1";
		Properties props = new Properties();
		props.put("mail.smtp.host", SMTPHost);

		// create some properties and get the default Session
		Session session = Session.getDefaultInstance(props, null);
		session.setDebug(debug);

		// create a message
		Message msg = new MimeMessage(session);

		// set the from and to address
		InternetAddress addressFrom = new InternetAddress(from);
		msg.setFrom(addressFrom);

		InternetAddress[] addressTo = new InternetAddress[recipients.length];
		for (int i = 0; i < recipients.length; i++) {
			addressTo[i] = new InternetAddress(recipients[i]);
		}
		msg.setRecipients(Message.RecipientType.TO, addressTo);

		// Optional : You can also set your custom headers in the Email if you
		// Want
		msg.addHeader("Shopping Cart Header", "Shopping Cart Header");

		// Setting the Subject and Content Type
		msg.setSubject(subject);
		msg.setContent(message, "text/html");
		Transport.send(msg);
	}

}