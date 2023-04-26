//
//  ProgressView.swift
//  GymBuddy
//
//  Created by Barış Can Sertkaya on 7.04.2023.
//

import SwiftUI

struct ProgressDashboardView: View {
    
    @Environment(\.managedObjectContext) var managedObjContext
    @FetchRequest(sortDescriptors: []) private var progressEntries: FetchedResults<Progress>
    @State var showSheet:Bool = false
    @State var showAlert:Bool = false
    @State var newName:String = ""
    @State var newWeight:String = ""
    @State var newReps:String = ""
    @State var selectedIndex:Int?
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    HStack {
                        Text("Name")
                        Spacer()
                        Text("Weight")
                            .offset(x: 58)
                        Spacer()
                        Text("Reps")
                            .offset(x: -5)
                    }
                    .foregroundColor(.accentColor)
                    
                    ForEach(progressEntries) { progress in
                        ProgressCardView(name: progress.name!, weight: progress.weight!, reps: progress.reps!)
                            .onTapGesture {
                                newName = progress.name!
                                newWeight = progress.weight!
                                newReps = progress.reps!
                                showSheet = true
                                if let index = progressEntries.firstIndex(of: progress) {
                                    selectedIndex = index
                                }
                            }
                    }
                    .onDelete(perform: deleteProgress)
                }
                .navigationBarTitle("My Progress")
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        
                        Button { //Plus button clicked
                            selectedIndex = nil
                            clearTextFields()
                            showSheet = true
                        } label: {
                            Image(systemName: "plus")
                                .fontWeight(.heavy)
                        }
                        .sheet(isPresented: $showSheet) {
                            VStack(spacing: 30) {
                                Form {
                                    Section(header: Text("New Progress")) {
                                        TextField("Name", text: $newName)
                                        TextField("Weight", text: $newWeight)
                                        TextField("Reps", text: $newReps)
                                    }
                                }
                                Button {
                                    
                                    if(newName.isEmpty || newReps.isEmpty || newWeight.isEmpty) {
                                        showAlert = true
                                    }
                                    else {
                                        //Save Button
                                        if selectedIndex == nil {
                                            DataController().addProgress(name: newName, weight: newWeight, reps: newReps, context: managedObjContext)
                                        }
                                        else {
                                            DataController().editProgress(progress: progressEntries[selectedIndex!], name: newName, weight: newWeight, reps: newReps, context: managedObjContext)
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
    }
    
    func clearTextFields() {
            newName = ""
            newWeight = ""
            newReps = ""
        }
    
    func deleteProgress(index:IndexSet) {
        index.map { progressEntries[$0]}.forEach(managedObjContext.delete)
        DataController().save(context: managedObjContext)
        }
    }
    
    
    
    
    struct ProgressView_Previews: PreviewProvider {
        static var previews: some View {
            ProgressDashboardView()
        }
    }
