import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;


public class MyNIO {
	
	public static void main(String[] args) {
		
		try {
			FileInputStream fii = new FileInputStream("E:/������.rrr");
			FileOutputStream fio = new FileOutputStream("c:/������.rrr");
			FileChannel fic = fii.getChannel();
			FileChannel foc = fio.getChannel();
			ByteBuffer byteBuffer = ByteBuffer.allocate(1024);
			int len=-1;
			while ((len=fic.read(byteBuffer))!=-1) {
				//��дģʽ����ģʽ
				byteBuffer.flip();
				foc.write(byteBuffer);
				//��--��д
				byteBuffer.clear();
			}
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			//�ر���  ���ȹ�
		}
	}
}
