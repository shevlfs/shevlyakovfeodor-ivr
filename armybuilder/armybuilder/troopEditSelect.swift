import SwiftUI

struct troopEditSelect: View {
    @State var unitcount: Int
    @State var unitname = String()
    @State var pointcount = Int()
    @State var unit: unit
    @State var armyID: Int
    @EnvironmentObject var pointTarget: pointTarget
    @EnvironmentObject var armyControl: armyController
    var body: some View {
        VStack(alignment: .trailing) {
            Text(unitname)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .fill(.teal)
                )
            pickerView()
        }
        .padding()
        .background(RoundedRectangle(cornerRadius: 10).fill(Color(UIColor.systemGray6)))
    }
}

extension troopEditSelect {
    @ViewBuilder
    private func pickerView() -> some View {
        HStack {
            Text("\(pointcount) pts").foregroundColor(.white)
                .padding(.vertical, 8).padding(.horizontal, 40)
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .fill(.teal)
                )
            Spacer()
            Button(action: {
                if (armyControl.armies[armyID].troops[unit.id]! != 0){
                    armyControl.armies[armyID].pointCount -= pointcount
                    armyControl.armies[armyID].troops[unit.id]! -= 1                }
            }) {
                Text("-")
                    .foregroundColor(.white)
                    .padding(.horizontal, 8)
                    .padding(.vertical, 4)
                    .background(RoundedRectangle(cornerRadius: 5).fill(.teal))
            }
            Text("\(armyControl.armies[armyID].troops[unit.id]!)")
            Button(action: {
                armyControl.armies[armyID].pointCount += pointcount
                armyControl.armies[armyID].troops[unit.id]! += 1
            }) {
                Text("+")
                    .foregroundColor(.white)
                    .padding(.horizontal, 8)
                    .padding(.vertical, 4)
                    .background(RoundedRectangle(cornerRadius: 5).fill(.teal))
            }
        }
    }
}

/* struct troopCountSelect_Previews: PreviewProvider {
    static var previews: some View {
        troopCountSelect(unitcount: 0, unitname: "", pointcount: 150)
    }
} */