//
//  ProgressView.swift
//  GymBuddy
//
//  Created by Barış Can Sertkaya on 7.04.2023.
//

import SwiftUI

struct ProgressDashboardView: View {
    
    @State var progressEntries: [ProgressEntry] = testData
    @State var showSheet:Bool = false
    @State var showAlert:Bool = false
    @State var newName:String = ""
    @State var newWeight:String = ""
    @State var newReps:String = ""
    @State var selectedIndex:Int?
    
    
    
    var body: some View {
        NavigationView {
            
            List {
                ForEach(progressEntries) { progress in
                    ProgressCardView(exercise: progress)
                        .onTapGesture {
                            newName = progress.name
                            newWeight = progress.weight
                            newReps = progress.reps
                            showSheet = true
                            if let index = progressEntries.firstIndex(of: progress) {
                                selectedIndex = index
                            }
                        }
                }
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    
                    Button { //Plus button clicked
                        clearTextFields()
                        showSheet = true
                    } label: {
                        Image(systemName: "plus")
                            .fontWeight(.heavy)
                    }
                    .sheet(isPresented: $showSheet) {
                        VStack(spacing: 30) {
                            Text("New Entry")
                                .font(.largeTitle)
                            Group {
                                TextField("Name", text: $newName)
                                TextField("Weight", text: $newWeight)
                                TextField("Reps", text: $newReps)
                            }
                            .textFieldStyle(.roundedBorder)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal)
                            Button {
                                
                                if(newName.isEmpty || newReps.isEmpty || newWeight.isEmpty) {
                                    showAlert = true
                                }
                                else {
                                    //Save Button
                                    if selectedIndex == nil {
                                        let newEntry = ProgressEntry(name: newName, weight: newWeight, reps: newReps)
                                        progressEntries.append(newEntry)
                                    }
                                    else {
                                        progressEntries[selectedIndex!].name = newName
                                        progressEntries[selectedIndex!].weight = newWeight
                                        progressEntries[selectedIndex!].reps = newReps
                                    }
                                    selectedIndex = nil
                                    showSheet = false
                                }
                            } label: {
                                Text("Save")
                                    .fontWeight(.bold)
                            }
                            .padding(.vertical)
                            .alert("Some text fields are empty", isPresented: $showAlert) {
                                Button("OK") { }
                            }
                        }
                    }
                }
            }
        }
    }
    
    func clearTextFields() {
        newName = ""
        newWeight = ""
        newReps = ""
    }
}




struct ProgressView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressDashboardView()
    }
}
