//
//  ExerciseCategoryListView.swift
//  GymBuddy
//
//  Created by Barış Can Sertkaya on 7.05.2023.
//

import SwiftUI

struct ExerciseCategoryListView: View {
    
    @StateObject var viewModel = ExerciseViewModel()
    @State var selectedCategory:Category
    
    
    var body: some View {
        NavigationStack {
            ScrollView(.vertical,showsIndicators: false) {
                VStack(alignment: .leading,spacing: 20) {
                    ForEach(viewModel.filteredData) { exercise in
                        NavigationLink(destination: ExerciseDetailView(exercise: exercise)) {
                            ExerciseCardView(exercise: exercise)
                        }
                    }
                }
            }
            .onAppear {
                viewModel.searchWithCategory(with: selectedCategory)
            }
        }
    }
    
    struct ExerciseCategoryListView_Previews: PreviewProvider {
        static var previews: some View {
            ExerciseCategoryListView(selectedCategory: .chest)
        }
    }
}
