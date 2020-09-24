/*
See LICENSE folder for this sample’s licensing information.

Abstract:
A single row to be displayed in a list of medications.
*/

import SwiftUI

struct MedicationRow: View {
    var medication: FetchedResults<Medicine>.Element

    var body: some View {
        HStack {
            Image(medication.imagename ?? "pill")
                .resizable()
                .frame(width: 50, height: 50)
            Text(medication.name ?? "Medication")
            Spacer()

            if medication.essentail {
                Image(systemName: "star.fill")
                    .imageScale(.medium)
                    .foregroundColor(.yellow)
            }
        }
    }
}

//struct MedicationRow_Previews: PreviewProvider {
//    static var previews: some View {
//        Group {
//            MedicationRow(medication: medicationData[0])
//            MedicationRow(medication: medicationData[1])
//        }
//        .previewLayout(.fixed(width: 300, height: 70))
//    }
//}
