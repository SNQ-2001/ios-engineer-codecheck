//
//  iOSEngineerCodeCheckTests.swift
//  iOSEngineerCodeCheckTests
//
//  Created by 史 翔新 on 2020/04/20.
//  Copyright © 2020 YUMEMI Inc. All rights reserved.
//

import XCTest
@testable import iOSEngineerCodeCheck

class iOSEngineerCodeCheckTests: XCTestCase {

    let viewModel = ViewModel()

    var tableViewController: TableViewController!

    override func setUp() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        self.tableViewController = storyboard.instantiateInitialViewController() as? TableViewController
    }

    override func tearDown() {
        super.tearDown()
    }

    /// リセットが機能しているかテスト
    func testResetPageCount() {
        self.viewModel.resetSearchRepositories()
        
        XCTAssertEqual(viewModel.pageCount, 1)
    }

    /// リセットが機能しているかテスト
    func testResetRepo() {
        self.viewModel.resetSearchRepositories()

        XCTAssertTrue(viewModel.repo.isEmpty)
    }

    /// 言語の使用割合を正しく計算できているかテスト
    func testCreateLanguageArrays() {
        let languagesNameArray: [String] = ["C++", "Swift", "C", "Python", "CMake", "Objective-C", "Shell", "Objective-C++", "LLVM", "Emacs Lisp", "Batchfile", "Vim script", "Roff", "DTrace", "Makefile", "Ruby", "D", "sed"]
        let languagesValueArray: [Int] = [46780865, 38714129, 5428926, 1967517, 694021, 466082, 215387, 159688, 74481, 57594, 45943, 20025, 3683, 2593, 2361, 2132, 1107, 1050]
        
        let (newLanguagesNameArray, newLanguagesValueArray) = self.viewModel.createLanguageArray(languagesNameArray: languagesNameArray, languagesValueArray: languagesValueArray)

        XCTAssertEqual(newLanguagesNameArray, ["C++", "Swift", "C", "Python", "CMake", "Other"])

        XCTAssertEqual(newLanguagesValueArray, [49.4, 40.9, 5.7, 2.0, 0.7, 1.3])
    }

    /// 言語カラーが原因でクラッシュしないかテスト
    func testUIColor() {
        let colors: [String] = ["1C Enterprise", "4D", "ABAP", "ABAP CDS", "ABNF", "AGS Script", "AIDL", "AL", "AMPL", "ANTLR", "API Blueprint", "APL", "ASL", "ASN.1", "ASP.NET", "ATS", "ActionScript", "Ada", "Adobe Font Metrics", "Agda", "Alloy", "Alpine Abuild", "Altium Designer", "AngelScript", "Ant Build System", "ApacheConf", "Apex", "Apollo Guidance Computer", "AppleScript", "Arc", "AsciiDoc", "AspectJ", "Assembly", "Astro", "Asymptote", "Augeas", "AutoHotkey", "AutoIt", "Avro IDL", "Awk", "BASIC", "Ballerina", "Batchfile", "Beef", "Befunge", "BibTeX", "Bicep", "Bison", "BitBake", "Blade", "BlitzBasic", "BlitzMax", "Bluespec", "Boo", "Boogie", "Brainfuck", "Brightscript", "Browserslist", "C", "C#", "C++", "C-ObjDump", "C2hs Haskell", "CIL", "CLIPS", "CMake", "COBOL", "CODEOWNERS", "COLLADA", "CSON", "CSS", "CSV", "CUE", "CWeb", "Cabal Config", "Cap'n Proto", "CartoCSS", "Ceylon", "Chapel", "Charity", "ChucK", "Cirru", "Clarion", "Classic ASP", "Clean", "Click", "Clojure", "Closure Templates", "Cloud Firestore Security Rules", "CoNLL-U", "CodeQL", "CoffeeScript", "ColdFusion", "ColdFusion CFC", "Common Lisp", "Common Workflow Language", "Component Pascal", "Cool", "Coq", "Cpp-ObjDump", "Creole", "Crystal", "Csound", "Csound Document", "Csound Score", "Cuda", "Cue Sheet", "Cycript", "Cython", "D", "D-ObjDump", "DIGITAL Command Language", "DM", "DNS Zone", "DTrace", "Dafny", "Darcs Patch", "Dart", "DataWeave", "Dhall", "Diff", "DirectX 3D File", "Dockerfile", "Dogescript", "Dylan", "E", "E-mail", "EBNF", "ECL", "ECLiPSe", "EJS", "EQ", "Eagle", "Easybuild", "Ecere Projects", "EditorConfig", "Edje Data Collection", "Eiffel", "Elixir", "Elm", "Emacs Lisp", "EmberScript", "Erlang", "F#", "F*", "FIGlet Font", "FLUX", "Factor", "Fancy", "Fantom", "Faust", "Fennel", "Filebench WML", "Filterscript", "Fluent", "Formatted", "Forth", "Fortran", "Fortran Free Form", "FreeBasic", "FreeMarker", "Frege", "Futhark", "G-code", "GAML", "GAMS", "GAP", "GCC Machine Description", "GDB", "GDScript", "GEDCOM", "GLSL", "GN", "Game Maker Language", "Gemfile.lock", "Genie", "Genshi", "Gentoo Ebuild", "Gentoo Eclass", "Gerber Image", "Gettext Catalog", "Gherkin", "Git Attributes", "Git Config", "Glyph", "Glyph Bitmap Distribution Format", "Gnuplot", "Go", "Go Checksums", "Go Module", "Golo", "Gosu", "Grace", "Gradle", "Grammatical Framework", "Graph Modeling Language", "GraphQL", "Graphviz (DOT)", "Groovy", "Groovy Server Pages", "HAProxy", "HCL", "HLSL", "HTML", "HTML+ECR", "HTML+EEX", "HTML+ERB", "HTML+PHP", "HTML+Razor", "HTTP", "HXML", "Hack", "Haml", "Handlebars", "Harbour", "Haskell", "Haxe", "HiveQL", "HolyC", "Hy", "HyPhy", "IDL", "IGOR Pro", "INI", "IRC log", "Idris", "Ignore List", "ImageJ Macro", "Inform 7", "Inno Setup", "Io", "Ioke", "Isabelle", "Isabelle ROOT", "J", "JAR Manifest", "JFlex", "JSON", "JSON with Comments", "JSON5", "JSONLD", "JSONiq", "Jasmin", "Java", "Java Properties", "Java Server Pages", "JavaScript", "JavaScript+ERB", "Jest Snapshot", "Jinja", "Jison", "Jison Lex", "Jolie", "Jsonnet", "Julia", "Jupyter Notebook", "KRL", "Kaitai Struct", "KakouneScript", "KiCad Layout", "KiCad Legacy Layout", "KiCad Schematic", "Kit", "Kotlin", "Kusto", "LFE", "LLVM", "LOLCODE", "LSL", "LTspice Symbol", "LabVIEW", "Lark", "Lasso", "Latte", "Lean", "Less", "Lex", "LilyPond", "Limbo", "Linker Script", "Linux Kernel Module", "Liquid", "Literate Agda", "Literate CoffeeScript", "Literate Haskell", "LiveScript", "Logos", "Logtalk", "LookML", "LoomScript", "Lua", "M", "M4", "M4Sugar", "MATLAB", "MAXScript", "MLIR", "MQL4", "MQL5", "MTML", "MUF", "Macaulay2", "Makefile", "Mako", "Markdown", "Marko", "Mask", "Mathematica", "Maven POM", "Max", "Mercury", "Meson", "Metal", "Microsoft Developer Studio Project", "Microsoft Visual Studio Solution", "MiniD", "Mirah", "Modelica", "Modula-2", "Modula-3", "Module Management System", "Monkey", "Moocode", "MoonScript", "Motorola 68K Assembly", "Muse", "Mustache", "Myghty", "NASL", "NCL", "NEON", "NL", "NPM Config", "NSIS", "NWScript", "Nearley", "Nemerle", "NetLinx", "NetLinx+ERB", "NetLogo", "NewLisp", "Nextflow", "Nginx", "Nim", "Ninja", "Nit", "Nix", "Nu", "NumPy", "Nunjucks", "OCaml", "ObjDump", "Object Data Instance Notation", "ObjectScript", "Objective-C", "Objective-C++", "Objective-J", "Odin", "Omgrofl", "Opa", "Opal", "Open Policy Agent", "OpenCL", "OpenEdge ABL", "OpenQASM", "OpenRC runscript", "OpenSCAD", "OpenStep Property List", "OpenType Feature File", "Org", "Ox", "Oxygene", "Oz", "P4", "PEG.js", "PHP", "PLSQL", "PLpgSQL", "POV-Ray SDL", "Pan", "Papyrus", "Parrot", "Parrot Assembly", "Parrot Internal Representation", "Pascal", "Pawn", "Pep8", "Perl", "Pic", "Pickle", "PicoLisp", "PigLatin", "Pike", "PlantUML", "Pod", "Pod 6", "PogoScript", "Pony", "PostCSS", "PostScript", "PowerBuilder", "PowerShell", "Prisma", "Processing", "Proguard", "Prolog", "Propeller Spin", "Protocol Buffer", "Public Key", "Pug", "Puppet", "Pure Data", "PureBasic", "PureScript", "Python", "Python console", "Python traceback", "Q#", "QML", "QMake", "Qt Script", "Quake", "R", "RAML", "RDoc", "REALbasic", "REXX", "RMarkdown", "RPC", "RPM Spec", "RUNOFF", "Racket", "Ragel", "Raku", "Rascal", "Raw token data", "ReScript", "Readline Config", "Reason", "Rebol", "Record Jar", "Red", "Redcode", "Redirect Rules", "Regular Expression", "Ren'Py", "RenderScript", "Rich Text Format", "Ring", "Riot", "RobotFramework", "Roff", "Roff Manpage", "Rouge", "Ruby", "Rust", "SAS", "SCSS", "SELinux Policy", "SMT", "SPARQL", "SQF", "SQL", "SQLPL", "SRecode Template", "SSH Config", "STON", "SVG", "SWIG", "Sage", "SaltStack", "Sass", "Scala", "Scaml", "Scheme", "Scilab", "Self", "ShaderLab", "Shell", "ShellSession", "Shen", "Sieve", "Singularity", "Slash", "Slice", "Slim", "SmPL", "Smali", "Smalltalk", "Smarty", "Solidity", "Soong", "SourcePawn", "Spline Font Database", "Squirrel", "Stan", "Standard ML", "Starlark", "Stata", "StringTemplate", "Stylus", "SubRip Text", "SugarSS", "SuperCollider", "Svelte", "Swift", "SystemVerilog", "TI Program", "TLA", "TOML", "TSQL", "TSV", "TSX", "TXL", "Tcl", "Tcsh", "TeX", "Tea", "Terra", "Texinfo", "Text", "TextMate Properties", "Textile", "Thrift", "Turing", "Turtle", "Twig", "Type Language", "TypeScript", "Unified Parallel C", "Unity3D Asset", "Unix Assembly", "Uno", "UnrealScript", "UrWeb", "V", "VBA", "VBScript", "VCL", "VHDL", "Vala", "Valve Data Format", "Verilog", "Vim Help File", "Vim Script", "Vim Snippet", "Visual Basic .NET", "Volt", "Vue", "Wavefront Material", "Wavefront Object", "Web Ontology Language", "WebAssembly", "WebIDL", "WebVTT", "Wget Config", "Wikitext", "Windows Registry Entries", "Wollok", "World of Warcraft Addon Data", "X BitMap", "X Font Directory Index", "X PixMap", "X10", "XC", "XCompose", "XML", "XML Property List", "XPages", "XProc", "XQuery", "XS", "XSLT", "Xojo", "Xonsh", "Xtend", "YAML", "YANG", "YARA", "YASnippet", "Yacc", "ZAP", "ZIL", "Zeek", "ZenScript"]

        for color in colors {
            XCTAssertNotNil(UIColor(language: color))
            XCTAssertNotNil(UIColor(language: color).gradient)
        }
    }

    /// 数字の省略が正常に機能しているかテスト
    func testCalcNumericalValue() {
        let num: [Int] = [12345, 14325, 311, 2312, 2333, 35467, 95456, 13453, 2134, 213]
        let numString: [String] = ["12.3K", "14.3K", "311", "2.3K", "2.3K", "35.5K", "95.5K", "13.5K", "2.1K", "213"]
        for i in 0..<num.count {
            print(num[i].calcNumericalValue(), numString[i])
            XCTAssertEqual(num[i].calcNumericalValue(), numString[i])
        }
    }

    /// URLエンコードでエンコードミスが発生しないかテスト
    func testEncode() {
        for _ in 0...10000 {
            let letters = #"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789あいうえおかきくけこさしすせそたちつてとなにぬねのはひふへほまみむめもやゆよらりるれろわゐゑをんがぎぐげござじずぜぞだぢづでどばびぶべぼぱぴぷぺぽぁぃぅぇぉっゃゅょアイウエオカキクケコサシスセソタチツテトナニヌネノハヒフヘホマミムメモヤユヨラリルレロワヰヱヲンガギグゲゴザジズゼゾダヂヅデドバビブベボパピプペポァィゥェォッャュョヴ、。ー～「」【】『』゛゜♪♭■□◆◇△▲▽▼◎○●◯‥…・∴∵※×〒!”#$%&'()=~|`{+*}<>?_-^\@[;:],./\！”＃＄％＆’（）＝~｜｀｛＋＊｝＜＞？＿－＾\＠［；：］，．／\"ａｂｃｄｅｆｇｈｉｊｋｌｍｎｏｐｑｒｓｔｕｖｗｘｙｚＡＢＣＤＥＦＧＨＩＪＫＬＭＮＯＰＱＲＳＴＵＶＷＸＹＺ０１２３４５６７８９ 　"#
            var randomString = ""
            for _ in 0..<20 {
                randomString += String(letters.randomElement()!)
            }

            XCTAssertNotEqual(randomString.encode, "")
        }
    }

    func testPerformanceExample() {
        self.measure {
        }
    }
}
