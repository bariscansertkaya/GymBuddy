//
//  NewProgressView.swift
//  GymBuddy
//
//  Created by Barış Can Sertkaya on 13.05.2023.
//

import SwiftUI

struct NewProgressView: View {
    
    @Environment(\.managedObjectContext) var managedObjContext
    @Environment(\.dismiss) var dismiss

    @State var name:String = ""
    @State var weight:String = ""
    @State var reps:String = ""
    @State var showAlert:Bool = false
    @State var isEditing:Bool = false

    
    let selectedProgress:Progress?
    
    var body: some View {
        VStack(spacing: 30) {
            Text("New Progress")
                .font(.largeTitle)
                .fontWeight(.heavy)
            
            TextFieldView(name: "Name...", text: $name)
            TextFieldView(name: "Weight...", text: $weight)
            TextFieldView(name: "Reps...", text: $reps)
            
            Button {
                if(name.isEmpty || weight.isEmpty || reps.isEmpty) {
                    showAlert = true
                }
                else {
                    if isEditing {
                        DataController().editProgress(progress: selectedProgress!, name: name, weight: weight, reps: reps, context: managedObjContext)
                    }
                    else {
                        DataController().addProgress(name: name, weight: weight, reps: reps, context: managedObjContext)
                        
                    }
                    dismiss()
                }
            }label: {
                ButtonLabelView(name: isEditing ? "Update" : "Save", width: 150, height: 50)
            }
            .padding(.top)
            .alert("Some text fields are empty!", isPresented: $showAlert) {
                Button("OK") { }
            }
            
            Spacer()
        }
    }
}

struct NewProgressView_Previews: PreviewProvider {
    static var previews: some View {
        NewProgressView(selectedProgress: nil)
    }
}
