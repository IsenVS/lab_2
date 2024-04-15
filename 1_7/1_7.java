import java.util.Arrays;

public class Main {
    public static void main(String[] args) {
        String S = "1001";
        int x = 1;
        long c = Arrays.stream(S.split(""))
                      .filter(ch -> ch.equals("1"))
                      .count();
        boolean flag = true;
        int N = S.length();
        int limit = x * (int) c + 1;
        int max = 0;
        int count = 0;
        
        for (int i = 0; i < N - 1; i++) {
            if (S.charAt(i) == '0') {
                count += 1;
                if (max < count) {
                    max = count;
                } else {
                    count = 0;
                }
            }
            if (max >= limit) {
                flag = false;
                break;
            }
        }
        
        if (flag) {
            System.out.println("Yes");
        } else {
            System.out.println("No");
        }
    }
}
