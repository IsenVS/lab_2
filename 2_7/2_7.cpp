#include <iostream>
#include <string>
#include <unordered_map>
#include <vector>
using namespace std;
string findDestination(vector<pair<string, string>> destinations) {
    unordered_map<string, string> map;
    for (const auto& p : destinations) {
        if (p.first == p.second) {
            return "обратитесь к специалисту";
        }
        map[p.first] = p.second;
    }
    
    string current = destinations[0].first;
    while (map.find(current) != map.end()) {
        current = map[current];
    }
    return current;
}

int main() {
    vector<pair<string, string>> destinations = { {"Новосибирск","Дубай"},{"Новосибирск","Искитим"},{"Искитим","Линево"}};
    cout << "Output: " << findDestination(destinations) << endl;
    
    return 0;
}