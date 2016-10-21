import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

public class Test1 {

	public static void main(String[] args) throws ParseException {
		// TODO Auto-generated method stub

		String string = "10/16/2016";
		
		String start_dt = "10/16/2016";
		DateFormat formatter = new SimpleDateFormat("MM/dd/yyyy"); 
		Date date = (Date)formatter.parse(start_dt);
		SimpleDateFormat newFormat = new SimpleDateFormat("yyyyMMdd");
		String finalString = newFormat.format(date);
		System.out.println(finalString);
		
	}

}
