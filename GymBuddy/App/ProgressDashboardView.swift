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
                HStack {
                    Text("My Progress")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .padding(.leading)
                    
                    Spacer()
                    
                    NavigationLink {
                        NewProgressView(selectedProgress: nil)
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
                    ForEach(progressEntries) { progress in
                        NavigationLink {
                            NewProgressView(name: progress.name!, weight: progress.weight!, reps: progress.reps!, isEditing: true, selectedProgress: progress)
                        }
                    label: {
                        ProgressCardView(name: progress.name!, weight: progress.weight!, reps: progress.reps!)
                            .padding(.horizontal)
                    }
                        
                    }
                    .onDelete(perform: deleteProgress)
                }
            }
        }
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
