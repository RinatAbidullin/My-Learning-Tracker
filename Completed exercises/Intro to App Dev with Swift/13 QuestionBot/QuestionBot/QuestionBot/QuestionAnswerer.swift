struct MyQuestionAnswerer {
    func responseTo(question: String) -> String {
        let lowQuestion = question.lowercased()
        if lowQuestion.hasPrefix("hello") {
            return "Why, hello there!"
        } else if lowQuestion == "where are the cookies?" {
            return "In the cookie jar!"
        } else if lowQuestion.hasPrefix("where") {
            return "To the North!"
        } else {
            let defaultNumber = question.count % 3
            if defaultNumber == 0 {
                return "That really depends"
            } else if defaultNumber == 1 {
                return "Ask me again tomorrow"
            } else {
                return "Hmmmm"
            }
        }
    }
}
