import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;


public class MyNIO {
	
	public static void main(String[] args) {
		
		try {
			FileInputStream fii = new FileInputStream("E:/蔡晓文.rrr");
			FileOutputStream fio = new FileOutputStream("c:/蔡晓文.rrr");
			FileChannel fic = fii.getChannel();
			FileChannel foc = fio.getChannel();
			ByteBuffer byteBuffer = ByteBuffer.allocate(1024);
			int len=-1;
			while ((len=fic.read(byteBuffer))!=-1) {
				//从写模式到读模式
				byteBuffer.flip();
				foc.write(byteBuffer);
				//读--》写
				byteBuffer.clear();
			}
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			//关闭流  后开先关
		}
	}
}
