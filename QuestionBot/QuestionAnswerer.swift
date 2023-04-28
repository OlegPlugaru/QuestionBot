struct MyQuestionAnswerer {
    func responseTo(question: String) -> String {
        let lowercasedQuestion = question.lowercased()
        if lowercasedQuestion.hasPrefix("hello") {
            return "Why, hello there!"
        } else if lowercasedQuestion == "where are the cookies?" || lowercasedQuestion.contains("cookie"){
            return "In the cookie jar"
        } else if lowercasedQuestion.hasPrefix("where") {
            return "To the North"
        } else {
            let defaultNumber = question.count % 3
            if defaultNumber == 0 {
                return "That really depends"
            } else if defaultNumber == 1 {
                return "Why are you asking me that thigs? i'm not a wikipedia!"
            } else {
                return "Ask me again tomorrow"
            }
        }
    }
}
