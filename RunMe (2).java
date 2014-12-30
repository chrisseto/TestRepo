import java.io.*;

public class RunMe{
	public static void main(String[] args){
		
		try{
			BufferedReader buf = new BufferedReader(new FileReader("file.txt"));
			buf.readLine();
			String line = null;
			while ((line=buf.readLine()) != null)
				System.out.println("I read in : " + line);
		}catch (IOException e){ 
			System.out.println("Error, are you sure you uploaded file.txt?");
		}
	}
}