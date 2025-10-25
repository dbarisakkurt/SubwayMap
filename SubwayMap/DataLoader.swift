struct DataLoader {
    static func loadData() -> [City] {
        let cities = [
            City(name: "Vienna", country: "Austria", fileName: "vienna"),///////
            City(name: "Baku", country: "Azerbaijan", fileName: "baku"),////////
            City(name: "Brussels", country: "Belgium", fileName: "brussels"),////////
            City(name: "Rio de Janeiro", country: "Brazil", fileName: "rio"),/////
            City(name: "Toronto", country: "Canada", fileName: "toronto"),//////
            City(name: "Beijing", country: "China", fileName: "beijing"),////
            City(name: "Shanghai", country: "China", fileName: "shanghai"),/////
            City(name: "Cairo", country: "Egypt", fileName: "cairo"),/////////
            City(name: "Paris", country: "France", fileName: "paris"),////////////
            City(name: "Delhi", country: "India", fileName: "delhi"),//////
            City(name: "Jakarta", country: "Indonesia", fileName: "jakarta"),//////
            City(name: "Tehran", country: "Iran", fileName: "tehran"),//////////
            City(name: "Milan", country: "Italy", fileName: "milan"),////////
            City(name: "Tokyo", country: "Japan", fileName: "tokyo"),///////
            City(name: "Seoul", country: "South Korea", fileName: "seoul"),////////
            City(name: "Mexico City", country: "Mexico", fileName: "mexicocity"),////////
            City(name: "Amsterdam", country: "Netherlands", fileName: "amsterdam"),///////////
            City(name: "Doha", country: "Qatar", fileName: "doha"),//////////////
            City(name: "Moscow", country: "Russia", fileName: "moscow"),////////
            City(name: "Bangkok", country: "Thailand", fileName: "bangkok"),////////
            City(name: "Istanbul", country: "Turkey", fileName: "istanbul"),//////////
            City(name: "Ankara", country: "Turkey", fileName: "ankara"),//////////////
            City(name: "Dubai", country: "United Arab Emirates", fileName: "dubai"),///////
            City(name: "London", country: "United Kingdom", fileName: "london"),//////
            City(name: "Moscow", country: "Russia", fileName: "moscow"),///////
            City(name: "New York City", country: "United States of America", fileName: "nyc"),///////
            City(name: "Ho Chi Minh City", country: "Vietnam", fileName: "hcmc"),////////
        ]
        
        return cities.sorted{ $0.name < $1.name }
    }
}
