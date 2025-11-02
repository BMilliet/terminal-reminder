import ArgumentParser

struct Runner: ParsableCommand {
    static let configuration = CommandConfiguration(
        commandName: "trem",
        abstract: "Terminal Reminder 🕰️",
        version: "1.0.0",
        subcommands: [
            Add.self
                // List.self,
                // Remove.self,
        ]
    )
}
