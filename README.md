# Unit Conversion App - Temperature Converter

## Overview
<table>
  <tr>
    <td>
      <img src="https://github.com/penguin-waddle/Unit-Conversion/assets/123434744/5d7a4b27-6f90-45bd-93fd-2df344676e8d" alt="Unit Conversion App Demo" width="300" />
    </td>
    <td>
In the first individual challenge of the '100 Days of SwiftUI' course, I embarked on creating an app entirely from scratch, applying the knowledge gained from the initial project, WeSplit. The challenge involved building a unit conversion app, and I chose to focus on temperature conversion. This app allows users to convert temperatures between Celsius, Fahrenheit, and Kelvin.
    </td>
  </tr>
</table>

## Features
- **Unit Selection**: Users can select their preferred input and output units (Celsius, Fahrenheit, or Kelvin) via segmented controls.
- **Numeric Input**: A text field where users can enter the temperature they wish to convert.
- **Conversion Output**: Displays the converted temperature in the user's chosen unit.

## Approach
- **Simplicity**: The focus was on creating a simple, yet functional app. The key was not to overcomplicate the process but to apply the basics effectively.
- **Conversion Logic**: Instead of creating direct conversions between all unit pairs, I implemented a strategy to convert the input temperature to a base unit and then to the desired output unit.
- **State Management**: The app uses three `@State` properties to handle the user input, input unit, and output unit.
- **UI Components**: The app comprises a `TextField`, two `Picker` views for unit selection, and a `TextView` for displaying the result.

## Reflections
- **Learning Curve**: This project reinforced my understanding of SwiftUI's state management and form components.
- **Arithmetic Solution**: I utilized basic arithmetic for conversion logic, which helped solidify my understanding of Swift's fundamental programming concepts.
- **Swift's Measurement API**: While not utilized in this project, I explored Swift’s Measurement API for unit conversions, which could be implemented in future iterations for more complex unit conversions.

---
  Note: This app was a challenge project from the ["100 Days of SwiftUI" course](https://www.hackingwithswift.com/100/swiftui) and was designed and implemented by me as part of my learning journey in iOS development.

---

[Back to Main Repository](https://github.com/penguin-waddle/100-Days-of-SwiftUI)
