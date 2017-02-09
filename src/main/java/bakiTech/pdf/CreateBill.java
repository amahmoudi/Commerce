package bakiTech.pdf;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;

public class CreateBill {
	File file;
	String fileName;

	public void fileCreate(String fileName) throws IOException {

		//fileName = "C:\\work\\testingReport.text";

		file = new File(fileName);

		if (!file.exists()) {
			System.out.println("File Exists");
			file.createNewFile();
			System.out
					.println("file " + fileName + "Have Successfully created");
		}
	}

	public void writeFile(String fileName, String string) {
		//fileName = "C:\\work\testingReport.text";

		try {
			FileWriter writer = new FileWriter(fileName, false);
			writer.write(string);
			writer.close();
			System.out.println("File Written");
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}