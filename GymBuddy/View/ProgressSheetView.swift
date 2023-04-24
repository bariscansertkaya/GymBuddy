//
//  ProgressSheetView.swift
//  GymBuddy
//
//  Created by Barış Can Sertkaya on 24.04.2023.
//

import SwiftUI

struct ProgressSheetView: View {
    
    @State var progressEntries: [ProgressEntry] = testData
    @State var nameText:String
    @State var weightText:String
    @State var repsText:String
    @State var showAlert:Bool = false
    @State var selectedIndex:Int?
    
    
    func editEntry() {
        
    }
    
    var body: some View {
        
        VStack(spacing: 30) {
            Text("New Entry")
                .font(.largeTitle)
            Group {
                TextField("Name", text: $nameText)
                TextField("Weight", text: $weightText)
                TextField("Reps", text: $repsText)
            }
            .textFieldStyle(.roundedBorder)
            .multilineTextAlignment(.center)
            .padding(.horizontal)
            Button {
                
                if(nameText.isEmpty || weightText.isEmpty || repsText.isEmpty) {
                    showAlert = true
                }
                else {
                    //Save Button
                    if selectedIndex == nil {
                        let newEntry = ProgressEntry(name: nameText, weight: weightText, reps: weightText)
                        progressEntries.append(newEntry)
                    }
                    else {
                        progressEntries[selectedIndex!].name = nameText
                        progressEntries[selectedIndex!].weight = repsText
                        progressEntries[selectedIndex!].reps = weightText
                    }
                    selectedIndex = nil
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

struct ProgressSheetView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressSheetView(nameText: "Bench Press", weightText: "120", repsText: "3x12")
    }
}
