package myTest;

import com.fjh.myspringboot.BaseTest;
import com.fjh.myspringboot.myEEtest.AsyncTask;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

public class AsyncTaskTest extends BaseTest {

    @Autowired
    private AsyncTask asyncTask;


    @Test
    public void test() {
        asyncTask.waitTask();
        System.out.println("其他任务【开始】执行了");
        try{
            Thread.sleep(10000);
        } catch (Exception ignored){

        }
    }
}
