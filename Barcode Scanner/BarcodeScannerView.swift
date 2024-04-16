//
//  BarcodeScannerView.swift
//  Barcode Scanner
//
//  Created by Matthew Morrison on 13/4/2024.
//

import SwiftUI

struct BarcodeScannerView: View {
    
    @StateObject var viewModel = BarcodeScannerViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                ScannerView(scannedCode: $viewModel.scannedCode, alertItem: $viewModel.alertItem)
                    .frame(maxWidth: .infinity, maxHeight: 300)
                
                Spacer().frame(height: 60)
                
                Label("Scanned Barcode", systemImage: "barcode.viewfinder")
                    .font(.title)
                
                Text(viewModel.scannedCode.isEmpty ? "Not yet scanned." : "Scanned code")
                    .bold()
                    .font(.largeTitle)
                    .foregroundStyle(viewModel.scannedCode.isEmpty ? . red : .green)
                    .padding()
            }
            .navigationTitle("Barcode Scanner")
            .alert(item: $viewModel.alertItem) { alertItem in
                Alert(title: Text(alertItem.title),
                      message: Text(alertItem.message),
                      dismissButton: alertItem.dismissButton)
                
            }
        }
    }
}

#Preview {
    BarcodeScannerView()
}
