//
//  ExercisesView.swift
//  GymBuddy
//
//  Created by Barış Can Sertkaya on 7.04.2023.
//

import SwiftUI

struct ExercisesView: View {
    
    @StateObject var viewModel = ExerciseViewModel()
    @State private var query = ""
    let exercises: [Exercise] = Exercise.all()
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                ForEach(viewModel.filteredData) { exercise in
                    NavigationLink(destination: ExerciseDetailView(exercise: exercise)) {
                        ExerciseCardView(exercise: exercise)
                    }
                }
            }
        }
        .searchable(text: $query,placement: .navigationBarDrawer(displayMode: .always), prompt: "Find an exercise")
        .onChange(of: query) { newQuery in
            viewModel.search(with: newQuery)
        }
        .onAppear {
            viewModel.search()
        }
        .overlay {
            if viewModel.filteredData.isEmpty {
                EmptyView(query: $query)
            }
        }
    }
}

struct ExercisesView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ExercisesView()
        }
        
        
    }
}
