package bess.ham.infra.modules.member;

import java.util.Random;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.stereotype.Service;

@Service
public class MailSendService{
    @Autowired   //context-mail에서 빈 등록했기 때문에 주입받을 수 있다. Spring에서 제공하는 MailSender. 
    private JavaMailSenderImpl mailSender;
    
    
    private String getKey(int size,int dupCd) {
    	 Random rand = new Random();
         String numStr = ""; //난수가 저장될 변수
         for(int i=0;i<size;i++) {
             
             //0~9 까지 난수 생성
             String ran = Integer.toString(rand.nextInt(10));
             
             if(dupCd==1) {
                 //중복 허용시 numStr에 append
                 numStr += ran;
             }else if(dupCd==2) {
                 //중복을 허용하지 않을시 중복된 값이 있는지 검사한다
                 if(!numStr.contains(ran)) {
                     //중복된 값이 없으면 numStr에 append
                     numStr += ran;
                 }else {
                     //생성된 난수가 중복되면 루틴을 다시 실행한다
                     i-=1;
                 }
             }
         }
         return numStr;
    }
    public String sendAuthMail(String mail)  throws MessagingException{
        String authKey = getKey(6,2);
        MimeMessage mailMessage = mailSender.createMimeMessage();
        String mailContent = "인증번호:   "+authKey ;     //보낼 메시지 
            mailMessage.setSubject("승윤", "utf-8"); 
            mailMessage.setText(mailContent, "utf-8", "html");  
            mailMessage.addRecipient(Message.RecipientType.TO, new InternetAddress(mail));
            mailSender.send(mailMessage);
          return authKey;
    }
}

