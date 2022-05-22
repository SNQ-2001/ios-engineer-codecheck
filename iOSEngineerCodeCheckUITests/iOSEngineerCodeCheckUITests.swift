//
//  iOSEngineerCodeCheckUITests.swift
//  iOSEngineerCodeCheckUITests
//
//  Created by 史 翔新 on 2020/04/20.
//  Copyright © 2020 YUMEMI Inc. All rights reserved.
//

import XCTest

class iOSEngineerCodeCheckUITests: XCTestCase {

    let viewModel: ViewModel = ViewModel()

    let languages: [String] = ["1C Enterprise", "4D", "ABAP", "ABAP CDS", "ABNF", "AGS Script", "AIDL", "AL", "AMPL", "ANTLR", "API Blueprint", "APL", "ASL", "ASN.1", "ASP.NET", "ATS", "ActionScript", "Ada","Adobe Font Metrics", "Agda", "Alloy", "Alpine Abuild", "Altium Designer", "AngelScript", "Ant Build System", "ApacheConf", "Apex", "Apollo Guidance Computer", "AppleScript", "Arc", "AsciiDoc", "AspectJ", "Assembly", "Astro", "Asymptote", "Augeas", "AutoHotkey", "AutoIt", "Avro IDL", "Awk", "BASIC", "Ballerina", "Batchfile", "Beef", "Befunge", "BibTeX", "Bicep", "Bison", "BitBake", "Blade", "BlitzBasic", "BlitzMax", "Bluespec", "Boo", "Boogie", "Brainfuck", "Brightscript", "Browserslist", "C", "C#", "C++", "C-ObjDump", "C2hs Haskell", "CIL", "CLIPS", "CMake", "COBOL", "CODEOWNERS", "COLLADA", "CSON", "CSS", "CSV", "CUE", "CWeb", "Cabal Config", "Cap'n Proto", "CartoCSS", "Ceylon", "Chapel", "Charity", "ChucK", "Cirru", "Clarion", "Classic ASP", "Clean", "Click", "Clojure", "Closure Templates", "Cloud Firestore Security Rules", "CoNLL-U", "CodeQL", "CoffeeScript", "ColdFusion", "ColdFusion CFC", "Common Lisp", "Common Workflow Language", "Component Pascal", "Cool", "Coq", "Cpp-ObjDump", "Creole", "Crystal", "Csound", "Csound Document", "Csound Score", "Cuda", "Cue Sheet", "Cycript", "Cython", "D", "D-ObjDump", "DIGITAL Command Language", "DM", "DNS Zone", "DTrace", "Dafny", "Darcs Patch", "Dart", "DataWeave", "Dhall", "Diff", "DirectX 3D File", "Dockerfile", "Dogescript", "Dylan", "E", "E-mail", "EBNF", "ECL", "ECLiPSe", "EJS", "EQ", "Eagle", "Easybuild", "Ecere Projects", "EditorConfig", "Edje Data Collection", "Eiffel", "Elixir", "Elm", "Emacs Lisp", "EmberScript", "Erlang", "F#", "F*", "FIGlet Font", "FLUX", "Factor", "Fancy", "Fantom", "Faust", "Fennel", "Filebench WML", "Filterscript", "Fluent", "Formatted", "Forth", "Fortran", "Fortran Free Form", "FreeBasic", "FreeMarker", "Frege", "Futhark", "G-code", "GAML", "GAMS", "GAP", "GCC Machine Description", "GDB", "GDScript", "GEDCOM", "GLSL", "GN", "Game Maker Language", "Gemfile.lock", "Genie", "Genshi", "Gentoo Ebuild", "Gentoo Eclass", "Gerber Image", "Gettext Catalog", "Gherkin", "Git Attributes", "Git Config", "Glyph", "Glyph Bitmap Distribution Format", "Gnuplot", "Go", "Go Checksums", "Go Module", "Golo", "Gosu", "Grace", "Gradle", "Grammatical Framework", "Graph Modeling Language", "GraphQL", "Graphviz (DOT)", "Groovy", "Groovy Server Pages", "HAProxy", "HCL", "HLSL", "HTML", "HTML+ECR", "HTML+EEX", "HTML+ERB", "HTML+PHP", "HTML+Razor", "HTTP", "HXML", "Hack", "Haml", "Handlebars", "Harbour", "Haskell", "Haxe", "HiveQL", "HolyC", "Hy", "HyPhy", "IDL", "IGOR Pro", "INI", "IRC log", "Idris", "Ignore List", "ImageJ Macro", "Inform 7", "Inno Setup", "Io", "Ioke", "Isabelle", "Isabelle ROOT", "J", "JAR Manifest", "JFlex", "JSON", "JSON with Comments", "JSON5", "JSONLD", "JSONiq", "Jasmin", "Java", "Java Properties", "Java Server Pages", "JavaScript", "JavaScript+ERB", "Jest Snapshot", "Jinja", "Jison", "Jison Lex", "Jolie", "Jsonnet", "Julia", "Jupyter Notebook", "KRL", "Kaitai Struct", "KakouneScript", "KiCad Layout", "KiCad Legacy Layout", "KiCad Schematic", "Kit", "Kotlin", "Kusto", "LFE", "LLVM", "LOLCODE", "LSL", "LTspice Symbol", "LabVIEW", "Lark", "Lasso", "Latte", "Lean", "Less", "Lex", "LilyPond", "Limbo", "Linker Script", "Linux Kernel Module", "Liquid", "Literate Agda", "Literate CoffeeScript", "Literate Haskell", "LiveScript", "Logos", "Logtalk", "LookML", "LoomScript", "Lua", "M", "M4", "M4Sugar", "MATLAB", "MAXScript", "MLIR", "MQL4", "MQL5", "MTML", "MUF", "Macaulay2", "Makefile", "Mako", "Markdown", "Marko", "Mask", "Mathematica", "Maven POM", "Max", "Mercury", "Meson", "Metal", "Microsoft Developer Studio Project", "Microsoft Visual Studio Solution", "MiniD", "Mirah", "Modelica", "Modula-2", "Modula-3", "Module Management System", "Monkey", "Moocode", "MoonScript", "Motorola 68K Assembly", "Muse", "Mustache", "Myghty", "NASL", "NCL", "NEON", "NL", "NPM Config", "NSIS", "NWScript", "Nearley", "Nemerle", "NetLinx", "NetLinx+ERB", "NetLogo", "NewLisp", "Nextflow", "Nginx", "Nim", "Ninja", "Nit", "Nix", "Nu", "NumPy", "Nunjucks", "OCaml", "ObjDump", "Object Data Instance Notation", "ObjectScript", "Objective-C", "Objective-C++", "Objective-J", "Odin", "Omgrofl", "Opa", "Opal", "Open Policy Agent", "OpenCL", "OpenEdge ABL", "OpenQASM", "OpenRC runscript", "OpenSCAD", "OpenStep Property List", "OpenType Feature File", "Org", "Ox", "Oxygene", "Oz", "P4", "PEG.js", "PHP", "PLSQL", "PLpgSQL", "POV-Ray SDL", "Pan", "Papyrus", "Parrot", "Parrot Assembly", "Parrot Internal Representation", "Pascal", "Pawn", "Pep8", "Perl", "Pic", "Pickle", "PicoLisp", "PigLatin", "Pike", "PlantUML", "Pod", "Pod 6", "PogoScript", "Pony", "PostCSS", "PostScript", "PowerBuilder", "PowerShell", "Prisma", "Processing", "Proguard", "Prolog", "Propeller Spin", "Protocol Buffer", "Public Key", "Pug", "Puppet", "Pure Data", "PureBasic", "PureScript", "Python", "Python console", "Python traceback", "Q#", "QML", "QMake", "Qt Script", "Quake", "R", "RAML", "RDoc", "REALbasic", "REXX", "RMarkdown", "RPC", "RPM Spec", "RUNOFF", "Racket", "Ragel", "Raku", "Rascal", "Raw token data", "ReScript", "Readline Config", "Reason", "Rebol", "Record Jar", "Red", "Redcode", "Redirect Rules", "Regular Expression", "Ren'Py", "RenderScript", "Rich Text Format", "Ring", "Riot", "RobotFramework", "Roff", "Roff Manpage", "Rouge", "Ruby", "Rust", "SAS", "SCSS", "SELinux Policy", "SMT", "SPARQL", "SQF", "SQL", "SQLPL", "SRecode Template", "SSH Config", "STON", "SVG", "SWIG", "Sage", "SaltStack", "Sass", "Scala", "Scaml", "Scheme", "Scilab", "Self", "ShaderLab", "Shell", "ShellSession", "Shen", "Sieve", "Singularity", "Slash", "Slice", "Slim", "SmPL", "Smali", "Smalltalk", "Smarty", "Solidity", "Soong", "SourcePawn", "Spline Font Database", "Squirrel", "Stan", "Standard ML", "Starlark", "Stata", "StringTemplate", "Stylus", "SubRip Text", "SugarSS", "SuperCollider", "Svelte", "Swift", "SystemVerilog", "TI Program", "TLA", "TOML", "TSQL", "TSV", "TSX", "TXL", "Tcl", "Tcsh", "TeX", "Tea", "Terra", "Texinfo", "Text", "TextMate Properties", "Textile", "Thrift", "Turing", "Turtle", "Twig", "Type Language", "TypeScript", "Unified Parallel C", "Unity3D Asset", "Unix Assembly", "Uno", "UnrealScript", "UrWeb", "V", "VBA", "VBScript", "VCL", "VHDL", "Vala", "Valve Data Format", "Verilog", "Vim Help File", "Vim Script", "Vim Snippet", "Visual Basic .NET", "Volt", "Vue", "Wavefront Material", "Wavefront Object", "Web Ontology Language", "WebAssembly", "WebIDL", "WebVTT", "Wget Config", "Wikitext", "Windows Registry Entries", "Wollok", "World of Warcraft Addon Data", "X BitMap", "X Font Directory Index", "X PixMap", "X10", "XC", "XCompose", "XML", "XML Property List", "XPages", "XProc", "XQuery", "XS", "XSLT", "Xojo", "Xonsh", "Xtend", "YAML", "YANG", "YARA", "YASnippet", "Yacc", "ZAP", "ZIL", "Zeek", "ZenScript"]

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    override func tearDownWithError() throws {}

    /// レートリミットが表示されるまで自動更新
    func testAutoReload() {

        let app = XCUIApplication()
        app.launch()
        sleep(1)
        app.searchFields.firstMatch.tap()
        sleep(1)
        app.searchFields.firstMatch.typeText("swift")
        sleep(1)
        app.searchFields.firstMatch.typeText("\n")
        sleep(3)

        let tableView = app.descendants(matching: .table).firstMatch
        let alert = app.descendants(matching: .alert)

        var late_limit_flag: Bool = true

        while late_limit_flag {
            tableView.swipeUp(velocity: 4500)
            if alert.firstMatch.isHittable == true {
                alert.buttons.firstMatch.tap()
                late_limit_flag = false
            }
        }
    }

    /// ランダムに10件の言語を検索テスト
    func testBasicOperation() throws {
        let app = XCUIApplication()
        app.launch()

        for _ in 0..<10 {
            let language = languages.randomElement() // ランダムに言語名を抽出

            let searchBar = app.descendants(matching: .searchField).firstMatch
            let alert = app.descendants(matching: .alert)
            let button = app.descendants(matching: .button).firstMatch

            searchBar.tap()
            guard let text = app.searchFields.firstMatch.value as? String else { return }
            print("✅入力した文字: \(language!) ❌削除した文字: \(text)")
            let deleteString = String(repeating: XCUIKeyboardKey.delete.rawValue, count: text.count)
            searchBar.typeText(deleteString)

            sleep(1)
            searchBar.typeText(language ?? "Swift")
            searchBar.typeText("\n")
            sleep(2)
            if alert.firstMatch.isHittable == true {
                // リポジトリが見つからなかった場合
                alert.buttons.firstMatch.tap()
            } else {
                app.cells.firstMatch.tap()
                sleep(3)
                // レートリミットのアラートが表示された場合
                if alert.firstMatch.isHittable == true {
                    alert.buttons.firstMatch.tap()
                }
                button.tap()
            }
        }
    }

    func testLaunchPerformance() throws {
        if #available(iOS 15.0, *) {
            // これは、アプリケーションの起動にかかる時間を測定するものです。
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
