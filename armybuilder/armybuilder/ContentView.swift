import SwiftUI

struct ContentView: View {
    @State var showAppSettings : Bool? = nil
    @State var showAddDialog = false
    @EnvironmentObject var collectionDatas: collectionData
    @EnvironmentObject var armyControl: armyController
    @State var deleted = false
    var body: some View {
        NavigationView{
            ScrollView(.vertical){
                VStack(){
                    
                    
                    if (armyControl.armies.isEmpty){
                        Spacer()
                        Text("No armies! :(").fontWeight(.light).padding()
                    } else{
                    ForEach(armyControl.armies){army in
                        
                        
                        NavigationLink(destination: armyDetailedView(id: army.armyid).environmentObject(collectionDatas).environmentObject(armyControl)) {
                            armyView(id: army.armyid, faction: factions[army.factionID].name).environmentObject(armyControl).environmentObject(collectionDatas)
                        
                        }
                        
                    }.onDelete(perform: {indexSet in armyControl.armies.remove(atOffsets: indexSet)})
                    }
                    NavigationLink(destination: appSettings().environmentObject(collectionDatas).environmentObject(armyControl), tag: true, selection: $showAppSettings){
                        EmptyView()
                    }
                    
                }
            
            }.navigationTitle("Your armies").toolbar {
                ToolbarItemGroup(placement: .primaryAction){
                    Button(action: {
                        self.showAddDialog.toggle()
                    }) {
                        Label("Add",systemImage:"plus.app")}.sheet(isPresented:$showAddDialog){
                            addArmyDialog().environmentObject(collectionDatas).environmentObject(armyControl)
                        }

                    }
            }.toolbar{
                ToolbarItemGroup(placement: .navigationBarLeading){
                    Button(action:{
                        showAppSettings = true
                        
                    }) {
                        Label("Settings",systemImage:"gear")
                    }
                }
            }
            }.navigationViewStyle(.stack)
    }
}
    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(collectionData()).environmentObject(armyController())
    }
}
