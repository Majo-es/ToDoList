# ToDoList
<blockquote> The To-Do List App is a simple and easy-to-use app that helps you keep track of your tasks. @DesignCode </blockquote>

## Project Overview
This is a simple To-Do List application built with Swift and SwiftUI. It provides a straightforward and intuitive interface for users to create, edit, and delete tasks.


| Category    | Detail                                                        |
| :---------- | :------------------------------------------------------------ |
| **Timeline** | September 5, 2023                                             |
| **Type** | App                                                           |
| **Tech Stack**| Swift, SwiftUI                                                |
| **Tools** | Xcode, SF Symbols Beta, MongoDB Packages (Realm & RealmDatabase) |


## Key Features & Components
The application's core functionality and structure are built around:

- **Task Management**: Users can easily add new tasks, modify existing ones, and mark tasks as complete or delete them.
- **Data Persistence**: Tasks are reliably stored using `RealmSwift`, a powerful mobile database solution from `MongoDB`, ensuring your data is saved even when the app closes.
- **Simple User Interface**: The UI is designed for ease of use, focusing purely on efficient task management.

## Codebase Overview
The project is organized into the following main components for clarity and maintainability:

- **Views**:
  - `ContentView.swift`: The main view displaying your list of tasks.
  - `TaskView.swift`: Likely handles the details or specific actions for an individual task.
  - `AddTaskView.swift`: Facilitates the creation of new tasks.
    
- **Reusable UI Components**:
  - `SmallAddButton.swift`: A customizable button for adding new items.
  - `TaskRow.swift`: Defines the visual layout for each task within the list.

- **Data Management**:
  - `RealmManager.swift`: Manages the interactions with the Realm database for storing and retrieving tasks.
  - `Task.swift`: Defines the data model for a single task, outlining its properties (e.g., title, completion status).

 Sequence diagram:


  <img width="791" alt="Screenshot 2025-05-22 at 20 16 56" src="https://github.com/user-attachments/assets/27549695-3021-4450-86de-aaf74aa54ddd" />


## Screens
<img alt="Three iPhone 14 PRO MAX screens" src= "https://github.com/Majo-es/ToDoList/assets/43044338/2a9c5f02-253e-4f69-aa65-7236f20a249f.png" width=50% height=50%>


## Xcode
<img width="527" alt=" Code view from Xcode" src="https://github.com/Majo-es/ToDoList/assets/43044338/98cb69d3-5f93-4f9e-9ac5-81b7a580e419">


## RealmSwift (MongoDB package)
<img alt="Code Snippet from RealmSwift" src= "https://github.com/Majo-es/ToDoList/assets/43044338/0f403e1d-c33d-4ec9-909c-930eb016b137" width=50% height=50%>


## Prototype

https://github.com/Majo-es/ToDoList/assets/43044338/c94de4d6-fdc1-421f-b591-9b538e209ba0


