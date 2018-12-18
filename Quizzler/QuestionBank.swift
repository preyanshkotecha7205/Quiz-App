
import Foundation

class QuestionBank {
    
    var list = [Question]()
    
    init() {
        // Creating a quiz item and appending it to the list
        let item = Question(text: "SFSU was started in 1899.", correctAnswer: true)
        
        // Add the Question to the list of questions
        list.append(item)
        
        // skipping one step and just creating the quiz item inside the append function
        list.append(Question(text: "SFSU had 50,000 students enrolled in Fall semester.", correctAnswer: false))
        
        list.append(Question(text: "There are 13 coffee shops on-campus.", correctAnswer: false))
        
        list.append(Question(text: "There are no parties at SFSU.", correctAnswer: true))
        
        list.append(Question(text: "One of the SFSU alumni donated 10 million dollars for SFSU.", correctAnswer: true))
        
        list.append(Question(text: "Ceasar Chavez Student center opened in 1975.", correctAnswer: true))
        
        list.append(Question(text: "The average student acceptance rate is above 60% in SFSU.", correctAnswer: true))
        
        list.append(Question(text: "The current President of SFSU is Orlando Harris.", correctAnswer: false))
        
        list.append(Question(text: "The current chair of the Computer Science department is Dr. Bill Hsu", correctAnswer: false))
        
        list.append(Question(text: "The mascot of SFSU is Sparty.", correctAnswer: false))
        
        list.append(Question(text: "SFSU mascot was Golden Gaters before it eventually became gators", correctAnswer: true))
        
        list.append(Question(text: "SFSU graduation rate in 2017 was above 60%", correctAnswer: true))
        
        list.append(Question(text: "SFSU has 200 student organizations on campus", correctAnswer: true))
    }
    
}


