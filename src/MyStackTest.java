import static org.junit.Assert.assertEquals;

import org.junit.Test;

public class MyStackTest {
	


	@Test 
	public void testPush()
	   {
		MyStack<String> stack = new MyStack<String>();
	      stack.push ("hello");
	      stack.push ("world");
	      assertEquals (stack.peek(), "world");
	   }

}
