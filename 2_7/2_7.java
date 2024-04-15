
import java.util.HashMap;
import java.util.Map;
import java.util.Vector;

public class Main {
    public static String findDestination(Vector<Pair<String, String>> destinations) {
        Map<String, String> map = new HashMap<>();
        for (Pair<String, String> p : destinations) {
            if (p.getKey().equals(p.getValue())) {
                return "обратитесь к специалисту";
            }
            map.put(p.getKey(), p.getValue());
        }

        String current = destinations.get(0).getKey();
        while (map.containsKey(current)) {
            current = map.get(current);
        }
        return current;
    }

    public static void main(String[] args) {
        Vector<Pair<String, String>> destinations = new Vector<>();
        destinations.add(new Pair<>("Новосибирск", "Дубай"));
        destinations.add(new Pair<>("Новосибирск", "Искитим"));
        destinations.add(new Pair<>("Искитим", "Линево"));
        System.out.println("Output: " + findDestination(destinations));
    }

    private static class Pair<K, V> {
        private K key;
        private V value;

        public Pair(K key, V value) {
            this.key = key;
            this.value = value;
        }

        public K getKey() {
            return key;
        }

        public V getValue() {
            return value;
        }
    }
}

