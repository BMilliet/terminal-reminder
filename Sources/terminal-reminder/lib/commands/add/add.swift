import ArgumentParser

extension Runner {

    struct Add: ParsableCommand {
        static let configuration = CommandConfiguration(abstract: "Add reminder")

        @Argument(help: "10/1/2025 - 10/1 - 10")
        var date: String

        @Flag(name: .shortAndLong, help: "Verbose mode.")
        var verbose = false

        func run() throws {
            AddFactory
                .build(
                    date: date,
                    verbose: verbose
                )
                .start()
        }
    }
}
