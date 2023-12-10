import org.apache.hadoop.hive.ql.exec.UDF;
import org.apache.hadoop.io.Text;

public class WordCountUDF extends UDF {
    public int evaluate(Text text) {
        if (text == null) {
            return 0;
        }

        String inputText = text.toString();
        String[] words = inputText.split(" ");
        return words.length;
    }
}
