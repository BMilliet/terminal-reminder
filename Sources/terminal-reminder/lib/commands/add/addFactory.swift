enum AddFactory {
    static func build(date: String, verbose: Bool) -> AddController {

        let ui = UIImpl(verbose: verbose)
        let file = FileHelperImpl(ui: ui)

        return AddController(date: date, file: file, ui: ui)
    }
}
