import Foundation

class GoalsViewModel: ObservableObject {
    @Published private var goals: [GoalViewModel]
    
    func fetchGoals() {
        self.goals = [
            GoalViewModel.fetchGoals()
        ]
    }
}
