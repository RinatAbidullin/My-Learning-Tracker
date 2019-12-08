/*:
 ## Exercise: Goals

Think of a goal of yours that can be measured in progress every day, whether it’s minutes spent exercising, number of photos sent to friends, hours spent sleeping, or number words written for your novel.

 - callout(Exercise): Create an array literal with 20 to 25 items of sample data for your daily activity. It may be something like `let milesBiked = [3, 7.5, 0, 0, 17 ... ]` Feel free to make up or embellish the numbers, but make sure you have entries that are above, below and exactly at the goal you've thought of. _Hint: Make sure to choose the right kind of array for your data, whether `[Double]` or `[Int]`._
*/
let kilometersWalked = [1, 1.2, 2.2, 3, 2.5, 2, 3.2, 3.3, 3.5, 5, 5.9, 8.4, 8, 7.9, 10, 11, 15, 20, 18, 20, 21]
//: - callout(Exercise): Write a function that takes the daily number as an argument and returns a message as a string. It should return a different message based on how close the number comes to your goal. You can be as ambitious and creative as you'd like with your responses, but make sure to return at least two different messages depending on your daily progress!
func goalOfDailyWalked(withKilometers kilometers: Double) -> String {
    if kilometers >= 5 {
        return "Вы выполнили дневную норму пройденных шагов"
    } else {
        return "Неплохо было бы пргуляться"
    }
}


//: - callout(Exercise): Write a `for…in` loop that loops over your sample data, calls your function to get an appropriate message for each item, and prints the message to the console.
var day = 1
for dayKilometers in kilometersWalked {
    print("День \(day) - \(goalOfDailyWalked(withKilometers: dayKilometers))")
    day += 1
}
//: [Previous](@previous)  |  page 16 of 17  |  [Next: Exercise: Screening Messages](@next)
