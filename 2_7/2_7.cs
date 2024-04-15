
using System;
using System.Collections.Generic;

public class Program
{
    public static string FindDestination(List<KeyValuePair<string, string>> destinations)
    {
        Dictionary<string, string> map = new Dictionary<string, string>();
        foreach (var p in destinations)
        {
            if (p.Key == p.Value)
            {
                return "обратитесь к специалисту";
            }
            map[p.Key] = p.Value;
        }

        string current = destinations[0].Key;
        while (map.ContainsKey(current))
        {
            current = map[current];
        }
        return current;
    }

    public static void Main()
    {
        List<KeyValuePair<string, string>> destinations = new List<KeyValuePair<string, string>>
        {
            new KeyValuePair<string, string>("London", "Istanbul"),
            new KeyValuePair<string, string>("Novosibirsk", "London"),
            new KeyValuePair<string, string>("Istanbul", "Beijing")
        };
        Console.WriteLine("Output: " + FindDestination(destinations));
    }
}

