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
    @State var selectedCategory : Category = .all
    
    var body: some View {
        NavigationView {
            VStack {
                ScrollView(.horizontal,showsIndicators: false) {
                    HStack {
                        CategoryButtonView(name: "Chest", category: $selectedCategory)
                        CategoryButtonView(name: "Back", category: $selectedCategory)
                        CategoryButtonView(name: "Shoulders", category: $selectedCategory)
                        CategoryButtonView(name: "Biceps", category: $selectedCategory)
                        CategoryButtonView(name: "Triceps", category: $selectedCategory)
                        CategoryButtonView(name: "Abs", category: $selectedCategory)
                        CategoryButtonView(name: "Legs", category: $selectedCategory)
                    }
                    .padding()
                }
                ScrollView(.vertical, showsIndicators: false) {
                    ForEach(viewModel.filteredData) { exercise in
                        NavigationLink(destination: ExerciseDetailView(exercise: exercise)) {
                            ExerciseCardView(exercise: exercise)
                        }
                    }
                }
                .zIndex(-1)
            }
        }
        .searchable(text: $query,placement: .navigationBarDrawer(displayMode: .automatic), prompt: "Find an exercise")
        .onChange(of: query) { newQuery in
            selectedCategory = .all
            viewModel.search(with: newQuery)
        }
        .onChange(of: selectedCategory) { newCategory in
            viewModel.searchWithCategory(with: newCategory)
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
            ExercisesView(selectedCategory: .biceps)
        }
        
        
    }
}
