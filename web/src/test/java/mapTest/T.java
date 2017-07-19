package mapTest;

import java.text.SimpleDateFormat;  
import java.util.Date;  
  
public class T extends Thread{  
  
    private static long orderNum = 0l;  
    private static String date ;  
      
    public static void main(String[] args) throws InterruptedException {  
       /* for (int i = 0; i < 10000; i++) {  
           
            Thread.sleep(1000);  
        }  */
    	 System.out.println(T.getOrderNo());  
    }  
  
    /** 
     * 生成订单编号 
     * @return 
     */  
    public static synchronized String getOrderNo() {  
        String str = new SimpleDateFormat("yyMMddHHmmssSSS").format(new Date());
        
        if(date==null||!date.equals(str)){  
            date = str;  
            orderNum  = 0l;  
        }  
        orderNum ++;  
     /*   long orderNo = Long.parseLong((date)) * 10000;  */
     /*   orderNo += orderNum;; */ 
        return str;  
    }  
  
}  
