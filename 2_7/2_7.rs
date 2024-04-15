use std::collections::HashMap;

fn find_destination(destinations: Vec<(String, String)>) -> String {
    let mut map: HashMap<String, String> = HashMap::new();
    
    for p in &destinations {
        if p.0 == p.1 {
            return String::from("обратитесь к специалисту");
        }
        map.insert(p.0.clone(), p.1.clone());
    }
    
    let mut current = destinations[0].0.clone();
    while let Some(next) = map.get(&current) {
        current = next.clone();
    }
    
    current
}

fn main() {
    let destinations = vec![
        ("Новосибирск".to_string(), "Дубай".to_string()),
        ("Новосибирск".to_string(), "Искитим".to_string()),
        ("Искитим".to_string(), "Линево".to_string()),
    ];
    
    println!("Output: {}", find_destination(destinations));
}
