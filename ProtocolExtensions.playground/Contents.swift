import Cocoa

protocol Exercise {
    var caloriesBurned: Double { get set }
    var minutes: Double { get set }
}


struct EllipiticalWorkout: Exercise {
    var caloriesBurned: Double
    var minutes: Double
}

let ellipticalWorkout = EllipiticalWorkout(caloriesBurned: 335, minutes: 30)

struct RunningWorkout: Exercise {
    var caloriesBurned: Double
    var minutes: Double
    var meters: Double
}

let runningWorkout = RunningWorkout(caloriesBurned: 350, minutes: 25, meters: 5000)

//func caloriesBurnedPerMinute<E: Exercise>(for exercise: E) -> Double {
//    return exercise.caloriesBurned / exercise.minutes
//}

extension Exercise {
    var caloriesBurnedPerMinute: Double {
        return caloriesBurned / minutes
    }
}

//print(caloriesBurnedPerMinute(for: ellipticalWorkout))
//print(caloriesBurnedPerMinute(for: runningWorkout))
print(ellipticalWorkout.caloriesBurnedPerMinute)
print(runningWorkout.caloriesBurnedPerMinute)

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



