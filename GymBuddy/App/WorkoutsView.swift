//
//  WorkoutsView.swift
//  GymBuddy
//
//  Created by Barış Can Sertkaya on 7.04.2023.
//

import SwiftUI

struct WorkoutsView: View {
    
    @Environment(\.managedObjectContext) var managedObjContext
    @FetchRequest(sortDescriptors: [SortDescriptor(\.name)]) private var workouts: FetchedResults<Workout>
    @State var showNewWorkoutView:Bool = false

    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Text("My Workouts")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .padding(.leading)
                    
                    Spacer()
                    
                    NavigationLink {
                        NewWorkoutView()
                    } label: {
                        Image(systemName: "plus")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 30, height: 30)
                            .fontWeight(.heavy)
                            .padding(.trailing)
                    }
                }
                
                List {
                    ForEach(workouts) { workout in
                        WorkoutView(titleText: workout.name ?? "Unnamed Workout", exercises: workout.exercises!)
                    }
                    .onDelete(perform: deleteWorkout)
                }
                .fullScreenCover(isPresented: $showNewWorkoutView) {
                    NavigationView {
                        NewWorkoutView()
                    } //NavigationView
            }
            }
        }
    }
    
    func deleteWorkout(index:IndexSet) {
        index.map { workouts[$0]}.forEach(managedObjContext.delete)
        DataController().save(context: managedObjContext)
        }
    }


struct WorkoutsView_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutsView()
    }
}
