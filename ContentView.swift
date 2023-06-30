import SwiftUI

struct ContentView: View {
    @State private var inputNumber = 0.0
    @State private var inputUnit = "Fahrenheit"
    @State private var outputUnit = "Celsius"
    @FocusState private var amountIsFocused: Bool
    
    let conversion = ["Celsius","Fahrenheit","Kelvin"]
    
    var conversionFahrenheit: Double {
        if inputUnit == "Fahrenheit" {
            return inputNumber
        } 
        if inputUnit == "Celsius" {
            return (inputNumber*(9/5))+32
        }
        if inputUnit == "Kelvin" {
            return (inputNumber-273)*(9/5) + 32
        } else 
            {
            return inputNumber
        }
    }
    
    var conversionOutput: Double {
        if outputUnit == "Fahrenheit" {
            return conversionFahrenheit 
        }
        if outputUnit == "Celsius" {
            return (conversionFahrenheit-32)*5/9
        }
        if outputUnit == "Kelvin" {
            return (conversionFahrenheit - 32)*(5/9) + 273
        } else 
            {
            return conversionFahrenheit
        }
            
    }
    var body: some View {
        NavigationView{
            Form {
                Section {
                    TextField("Temperature", value: $inputNumber, format: .number)
                        .keyboardType(.decimalPad)
                        .focused($amountIsFocused)
                    
                    Picker("Initial Unit", selection: $inputUnit) {
                        ForEach(conversion, id:\.self) {
                            Text("\($0)")
                        }
                    }
                    .pickerStyle(.segmented)
                }
                
                Section{
                    Picker("Converting to...", selection: $outputUnit){
                        ForEach(conversion, id:\.self){
                            Text("\($0)")
                        }
                    } 
                } header: {
                    Text("What unit would you like to convert to?")
                } .pickerStyle(.segmented)
                Section {
                    Text(conversionOutput, format:.number)
                } header: {
                    Text("Final Conversion")
                }
            }
            .navigationTitle("WeConvert")
            .toolbar{
                ToolbarItemGroup(placement: .keyboard){
                    Spacer()
                    Button("Done") {
                        amountIsFocused = false
                    }
                }
            }
        }
    }
}
