import Cocoa

protocol Exercise: CustomStringConvertible {
    var caloriesBurned: Double { get set }
    var minutes: Double { get set }
    var title: String { get }
}


struct EllipiticalWorkout: Exercise {
    var caloriesBurned: Double
    var minutes: Double
}

let ellipticalWorkout = EllipiticalWorkout(caloriesBurned: 335, minutes: 30)

struct RunningWorkout: Exercise {
    let title = "Gotta go fast!"
    var caloriesBurned: Double
    var minutes: Double
    var meters: Double
    
    var description: String {
        return "RunningWorktout(\(caloriesBurned) calories and \(meters)m in \(minutes) minutes)"
    }
}

let runningWorkout = RunningWorkout(caloriesBurned: 350, minutes: 25, meters: 5000)

//func caloriesBurnedPerMinute<E: Exercise>(for exercise: E) -> Double {
//    return exercise.caloriesBurned / exercise.minutes
//}

extension Exercise {
    var title: String {
        return "\(Self.self) - \(minutes) minutes"
    }
    var description: String {
        return "Exercise(\(Self.self), burned \(caloriesBurned) calories in \(minutes) minutes)"
    }
    var caloriesBurnedPerMinute: Double {
        return caloriesBurned / minutes
    }
}

let tenKRun: RunningWorkout = RunningWorkout(caloriesBurned: 750, minutes: 60, meters: 10000)
let workout: Exercise = tenKRun
print(tenKRun.title)
print(workout.title)


//print(caloriesBurnedPerMinute(for: ellipticalWorkout))
//print(caloriesBurnedPerMinute(for: runningWorkout))
print(ellipticalWorkout.caloriesBurnedPerMinute)
print(runningWorkout.caloriesBurnedPerMinute)

print(ellipticalWorkout)
print(runningWorkout)

extension Exercise {
    func adding(calories: Double) -> Self {
        var dupe = self
        dupe.caloriesBurned += calories
        print("Creating a new \(Self.self) with \(dupe.caloriesBurned)cal burned.")
        return dupe
    }
}

let ellipticalCopy = ellipticalWorkout.adding(calories: 50)
let runningCopy = runningWorkout.adding(calories: 100)

extension Sequence where Element == Exercise {
    func totalCaloriesBurned() -> Double {
        var total: Double = 0
        for exercise in self {
            total += exercise.caloriesBurned
        }
        return total
    }
}

let mondayWorkout: [Exercise] = [ellipticalWorkout, runningWorkout]
print(mondayWorkout.totalCaloriesBurned())

