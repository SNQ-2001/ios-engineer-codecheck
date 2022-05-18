//
//  Color+.swift
//  iOSEngineerCodeCheck
//
//  Created by 宮本大新 on 2022/05/17.
//  Copyright © 2022 YUMEMI Inc. All rights reserved.
//

import UIKit

extension UIColor {
    convenience init(language: String) {
        switch language {
        case "1C Enterprise":
            self.init(red: 0.5058823529411764, green: 0.2980392156862745, blue: 0.8, alpha: 1.0)
        case "4D":
            self.init(red: 0.0, green: 0.25882352941176473, blue: 0.5372549019607843, alpha: 1.0)
        case "ABAP":
            self.init(red: 0.9098039215686274, green: 0.15294117647058825, blue: 0.29411764705882354, alpha: 1.0)
        case "ABAP CDS":
            self.init(red: 0.3333333333333333, green: 0.3686274509803922, blue: 0.1450980392156863, alpha: 1.0)
        case "ABNF":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "AGS Script":
            self.init(red: 0.7254901960784313, green: 0.8509803921568627, blue: 1.0, alpha: 1.0)
        case "AIDL":
            self.init(red: 0.20392156862745098, green: 0.9215686274509803, blue: 0.4196078431372549, alpha: 1.0)
        case "AL":
            self.init(red: 0.22745098039215686, green: 0.6352941176470588, blue: 0.7098039215686275, alpha: 1.0)
        case "AMPL":
            self.init(red: 0.9019607843137255, green: 0.9372549019607843, blue: 0.7333333333333333, alpha: 1.0)
        case "ANTLR":
            self.init(red: 0.615686274509804, green: 0.7647058823529411, blue: 1.0, alpha: 1.0)
        case "API Blueprint":
            self.init(red: 0.16470588235294117, green: 0.8, blue: 0.6588235294117647, alpha: 1.0)
        case "APL":
            self.init(red: 0.35294117647058826, green: 0.5058823529411764, blue: 0.39215686274509803, alpha: 1.0)
        case "ASL":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "ASN.1":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "ASP.NET":
            self.init(red: 0.5803921568627451, green: 0.0, blue: 1.0, alpha: 1.0)
        case "ATS":
            self.init(red: 0.10196078431372549, green: 0.7764705882352941, blue: 0.12549019607843137, alpha: 1.0)
        case "ActionScript":
            self.init(red: 0.5333333333333333, green: 0.16862745098039217, blue: 0.058823529411764705, alpha: 1.0)
        case "Ada":
            self.init(red: 0.00784313725490196, green: 0.9725490196078431, blue: 0.5490196078431373, alpha: 1.0)
        case "Adobe Font Metrics":
            self.init(red: 0.9803921568627451, green: 0.058823529411764705, blue: 0.0, alpha: 1.0)
        case "Agda":
            self.init(red: 0.19215686274509805, green: 0.33725490196078434, blue: 0.396078431372549, alpha: 1.0)
        case "Alloy":
            self.init(red: 0.39215686274509803, green: 0.7843137254901961, blue: 0.0, alpha: 1.0)
        case "Alpine Abuild":
            self.init(red: 0.050980392156862744, green: 0.34901960784313724, blue: 0.4980392156862745, alpha: 1.0)
        case "Altium Designer":
            self.init(red: 0.6588235294117647, green: 0.5882352941176471, blue: 0.38823529411764707, alpha: 1.0)
        case "AngelScript":
            self.init(red: 0.7803921568627451, green: 0.8431372549019608, blue: 0.8627450980392157, alpha: 1.0)
        case "Ant Build System":
            self.init(red: 0.6627450980392157, green: 0.08235294117647059, blue: 0.49411764705882355, alpha: 1.0)
        case "ApacheConf":
            self.init(red: 0.8196078431372549, green: 0.12941176470588237, blue: 0.15294117647058825, alpha: 1.0)
        case "Apex":
            self.init(red: 0.09019607843137255, green: 0.592156862745098, blue: 0.7529411764705882, alpha: 1.0)
        case "Apollo Guidance Computer":
            self.init(red: 0.043137254901960784, green: 0.23921568627450981, blue: 0.5686274509803921, alpha: 1.0)
        case "AppleScript":
            self.init(red: 0.06274509803921569, green: 0.12156862745098039, blue: 0.12156862745098039, alpha: 1.0)
        case "Arc":
            self.init(red: 0.6666666666666666, green: 0.16470588235294117, blue: 0.996078431372549, alpha: 1.0)
        case "AsciiDoc":
            self.init(red: 0.45098039215686275, green: 0.6274509803921569, blue: 0.7725490196078432, alpha: 1.0)
        case "AspectJ":
            self.init(red: 0.6627450980392157, green: 0.3411764705882353, blue: 0.6901960784313725, alpha: 1.0)
        case "Assembly":
            self.init(red: 0.43137254901960786, green: 0.2980392156862745, blue: 0.07450980392156863, alpha: 1.0)
        case "Astro":
            self.init(red: 1.0, green: 0.35294117647058826, blue: 0.011764705882352941, alpha: 1.0)
        case "Asymptote":
            self.init(red: 1.0, green: 0.0, blue: 0.0, alpha: 1.0)
        case "Augeas":
            self.init(red: 0.611764705882353, green: 0.7568627450980392, blue: 0.20392156862745098, alpha: 1.0)
        case "AutoHotkey":
            self.init(red: 0.396078431372549, green: 0.5803921568627451, blue: 0.7254901960784313, alpha: 1.0)
        case "AutoIt":
            self.init(red: 0.10980392156862745, green: 0.20784313725490197, blue: 0.3215686274509804, alpha: 1.0)
        case "Avro IDL":
            self.init(red: 0.0, green: 0.25098039215686274, blue: 1.0, alpha: 1.0)
        case "Awk":
            self.init(red: 0.7647058823529411, green: 0.054901960784313725, blue: 0.6078431372549019, alpha: 1.0)
        case "BASIC":
            self.init(red: 1.0, green: 0.0, blue: 0.0, alpha: 1.0)
        case "Ballerina":
            self.init(red: 1.0, green: 0.3137254901960784, blue: 0.0, alpha: 1.0)
        case "Batchfile":
            self.init(red: 0.7568627450980392, green: 0.9450980392156862, blue: 0.1803921568627451, alpha: 1.0)
        case "Beef":
            self.init(red: 0.6470588235294118, green: 0.1843137254901961, blue: 0.3058823529411765, alpha: 1.0)
        case "Befunge":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "BibTeX":
            self.init(red: 0.4666666666666667, green: 0.5333333333333333, blue: 0.6, alpha: 1.0)
        case "Bicep":
            self.init(red: 0.3176470588235294, green: 0.6039215686274509, blue: 0.7294117647058823, alpha: 1.0)
        case "Bison":
            self.init(red: 0.41568627450980394, green: 0.27450980392156865, blue: 0.24705882352941178, alpha: 1.0)
        case "BitBake":
            self.init(red: 0.0, green: 0.7372549019607844, blue: 0.8941176470588236, alpha: 1.0)
        case "Blade":
            self.init(red: 0.9686274509803922, green: 0.3215686274509804, blue: 0.24705882352941178, alpha: 1.0)
        case "BlitzBasic":
            self.init(red: 0.0, green: 1.0, blue: 0.6823529411764706, alpha: 1.0)
        case "BlitzMax":
            self.init(red: 0.803921568627451, green: 0.39215686274509803, blue: 0.0, alpha: 1.0)
        case "Bluespec":
            self.init(red: 0.07058823529411765, green: 0.13333333333333333, blue: 0.23529411764705882, alpha: 1.0)
        case "Boo":
            self.init(red: 0.8313725490196079, green: 0.7450980392156863, blue: 0.7568627450980392, alpha: 1.0)
        case "Boogie":
            self.init(red: 0.7843137254901961, green: 0.058823529411764705, blue: 0.6274509803921569, alpha: 1.0)
        case "Brainfuck":
            self.init(red: 0.1843137254901961, green: 0.1450980392156863, blue: 0.18823529411764706, alpha: 1.0)
        case "Brightscript":
            self.init(red: 0.4, green: 0.17647058823529413, blue: 0.5686274509803921, alpha: 1.0)
        case "Browserslist":
            self.init(red: 1.0, green: 0.8352941176470589, blue: 0.2235294117647059, alpha: 1.0)
        case "C":
            self.init(red: 0.3333333333333333, green: 0.3333333333333333, blue: 0.3333333333333333, alpha: 1.0)
        case "C#":
            self.init(red: 0.09019607843137255, green: 0.5254901960784314, blue: 0.0, alpha: 1.0)
        case "C++":
            self.init(red: 0.9529411764705882, green: 0.29411764705882354, blue: 0.49019607843137253, alpha: 1.0)
        case "C-ObjDump":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "C2hs Haskell":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "CIL":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "CLIPS":
            self.init(red: 0.0, green: 0.6392156862745098, blue: 0.0, alpha: 1.0)
        case "CMake":
            self.init(red: 0.8549019607843137, green: 0.20392156862745098, blue: 0.20392156862745098, alpha: 1.0)
        case "COBOL":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "CODEOWNERS":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "COLLADA":
            self.init(red: 0.9450980392156862, green: 0.6431372549019608, blue: 0.16862745098039217, alpha: 1.0)
        case "CSON":
            self.init(red: 0.1411764705882353, green: 0.2784313725490196, blue: 0.4627450980392157, alpha: 1.0)
        case "CSS":
            self.init(red: 0.33725490196078434, green: 0.23921568627450981, blue: 0.48627450980392156, alpha: 1.0)
        case "CSV":
            self.init(red: 0.13725490196078433, green: 0.45098039215686275, blue: 0.27450980392156865, alpha: 1.0)
        case "CUE":
            self.init(red: 0.34509803921568627, green: 0.5254901960784314, blue: 0.8823529411764706, alpha: 1.0)
        case "CWeb":
            self.init(red: 0.0, green: 0.0, blue: 0.47843137254901963, alpha: 1.0)
        case "Cabal Config":
            self.init(red: 0.2823529411764706, green: 0.20392156862745098, blue: 0.396078431372549, alpha: 1.0)
        case "Cap'n Proto":
            self.init(red: 0.7686274509803922, green: 0.15294117647058825, blue: 0.15294117647058825, alpha: 1.0)
        case "CartoCSS":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "Ceylon":
            self.init(red: 0.8745098039215686, green: 0.6470588235294118, blue: 0.20784313725490197, alpha: 1.0)
        case "Chapel":
            self.init(red: 0.5529411764705883, green: 0.7764705882352941, blue: 0.24705882352941178, alpha: 1.0)
        case "Charity":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "ChucK":
            self.init(red: 0.24705882352941178, green: 0.5019607843137255, blue: 0.0, alpha: 1.0)
        case "Cirru":
            self.init(red: 0.8, green: 0.8, blue: 1.0, alpha: 1.0)
        case "Clarion":
            self.init(red: 0.8588235294117647, green: 0.5647058823529412, blue: 0.11764705882352941, alpha: 1.0)
        case "Classic ASP":
            self.init(red: 0.41568627450980394, green: 0.25098039215686274, blue: 0.9921568627450981, alpha: 1.0)
        case "Clean":
            self.init(red: 0.24705882352941178, green: 0.5215686274509804, blue: 0.6862745098039216, alpha: 1.0)
        case "Click":
            self.init(red: 0.8941176470588236, green: 0.9019607843137255, blue: 0.9529411764705882, alpha: 1.0)
        case "Clojure":
            self.init(red: 0.8588235294117647, green: 0.34509803921568627, blue: 0.3333333333333333, alpha: 1.0)
        case "Closure Templates":
            self.init(red: 0.050980392156862744, green: 0.5803921568627451, blue: 0.5607843137254902, alpha: 1.0)
        case "Cloud Firestore Security Rules":
            self.init(red: 1.0, green: 0.6274509803921569, blue: 0.0, alpha: 1.0)
        case "CoNLL-U":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "CodeQL":
            self.init(red: 0.0784313725490196, green: 0.058823529411764705, blue: 0.27450980392156865, alpha: 1.0)
        case "CoffeeScript":
            self.init(red: 0.1411764705882353, green: 0.2784313725490196, blue: 0.4627450980392157, alpha: 1.0)
        case "ColdFusion":
            self.init(red: 0.9294117647058824, green: 0.17254901960784313, blue: 0.8392156862745098, alpha: 1.0)
        case "ColdFusion CFC":
            self.init(red: 0.9294117647058824, green: 0.17254901960784313, blue: 0.8392156862745098, alpha: 1.0)
        case "Common Lisp":
            self.init(red: 0.24705882352941178, green: 0.7137254901960784, blue: 0.5450980392156862, alpha: 1.0)
        case "Common Workflow Language":
            self.init(red: 0.7098039215686275, green: 0.19215686274509805, blue: 0.2980392156862745, alpha: 1.0)
        case "Component Pascal":
            self.init(red: 0.6901960784313725, green: 0.807843137254902, blue: 0.3058823529411765, alpha: 1.0)
        case "Cool":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "Coq":
            self.init(red: 0.8156862745098039, green: 0.7137254901960784, blue: 0.5490196078431373, alpha: 1.0)
        case "Cpp-ObjDump":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "Creole":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "Crystal":
            self.init(red: 0.0, green: 0.00392156862745098, blue: 0.0, alpha: 1.0)
        case "Csound":
            self.init(red: 0.10196078431372549, green: 0.10196078431372549, blue: 0.10196078431372549, alpha: 1.0)
        case "Csound Document":
            self.init(red: 0.10196078431372549, green: 0.10196078431372549, blue: 0.10196078431372549, alpha: 1.0)
        case "Csound Score":
            self.init(red: 0.10196078431372549, green: 0.10196078431372549, blue: 0.10196078431372549, alpha: 1.0)
        case "Cuda":
            self.init(red: 0.22745098039215686, green: 0.3058823529411765, blue: 0.22745098039215686, alpha: 1.0)
        case "Cue Sheet":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "Cycript":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "Cython":
            self.init(red: 0.996078431372549, green: 0.8745098039215686, blue: 0.3568627450980392, alpha: 1.0)
        case "D":
            self.init(red: 0.7294117647058823, green: 0.34901960784313724, blue: 0.3686274509803922, alpha: 1.0)
        case "D-ObjDump":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "DIGITAL Command Language":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "DM":
            self.init(red: 0.26666666666666666, green: 0.4470588235294118, blue: 0.396078431372549, alpha: 1.0)
        case "DNS Zone":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "DTrace":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "Dafny":
            self.init(red: 1.0, green: 0.9254901960784314, blue: 0.1450980392156863, alpha: 1.0)
        case "Darcs Patch":
            self.init(red: 0.5568627450980392, green: 1.0, blue: 0.13725490196078433, alpha: 1.0)
        case "Dart":
            self.init(red: 0.0, green: 0.7058823529411765, blue: 0.6705882352941176, alpha: 1.0)
        case "DataWeave":
            self.init(red: 0.0, green: 0.22745098039215686, blue: 0.3215686274509804, alpha: 1.0)
        case "Dhall":
            self.init(red: 0.8745098039215686, green: 0.6862745098039216, blue: 1.0, alpha: 1.0)
        case "Diff":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "DirectX 3D File":
            self.init(red: 0.6666666666666666, green: 0.807843137254902, blue: 0.3764705882352941, alpha: 1.0)
        case "Dockerfile":
            self.init(red: 0.2196078431372549, green: 0.30196078431372547, blue: 0.32941176470588235, alpha: 1.0)
        case "Dogescript":
            self.init(red: 0.8, green: 0.6549019607843137, blue: 0.3764705882352941, alpha: 1.0)
        case "Dylan":
            self.init(red: 0.4235294117647059, green: 0.3803921568627451, blue: 0.43137254901960786, alpha: 1.0)
        case "E":
            self.init(red: 0.8, green: 0.807843137254902, blue: 0.20784313725490197, alpha: 1.0)
        case "E-mail":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "EBNF":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "ECL":
            self.init(red: 0.5411764705882353, green: 0.07058823529411765, blue: 0.403921568627451, alpha: 1.0)
        case "ECLiPSe":
            self.init(red: 0.0, green: 0.11372549019607843, blue: 0.615686274509804, alpha: 1.0)
        case "EJS":
            self.init(red: 0.6627450980392157, green: 0.11764705882352941, blue: 0.3137254901960784, alpha: 1.0)
        case "EQ":
            self.init(red: 0.6549019607843137, green: 0.5254901960784314, blue: 0.28627450980392155, alpha: 1.0)
        case "Eagle":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "Easybuild":
            self.init(red: 0.023529411764705882, green: 0.5803921568627451, blue: 0.023529411764705882, alpha: 1.0)
        case "Ecere Projects":
            self.init(red: 0.5686274509803921, green: 0.2235294117647059, blue: 0.3764705882352941, alpha: 1.0)
        case "EditorConfig":
            self.init(red: 1.0, green: 0.9450980392156862, blue: 0.9490196078431372, alpha: 1.0)
        case "Edje Data Collection":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "Eiffel":
            self.init(red: 0.30196078431372547, green: 0.4117647058823529, blue: 0.4666666666666667, alpha: 1.0)
        case "Elixir":
            self.init(red: 0.43137254901960786, green: 0.2901960784313726, blue: 0.49411764705882355, alpha: 1.0)
        case "Elm":
            self.init(red: 0.3764705882352941, green: 0.7098039215686275, blue: 0.8, alpha: 1.0)
        case "Emacs Lisp":
            self.init(red: 0.7529411764705882, green: 0.396078431372549, blue: 0.8588235294117647, alpha: 1.0)
        case "EmberScript":
            self.init(red: 1.0, green: 0.9568627450980393, blue: 0.9529411764705882, alpha: 1.0)
        case "Erlang":
            self.init(red: 0.7215686274509804, green: 0.2235294117647059, blue: 0.596078431372549, alpha: 1.0)
        case "F#":
            self.init(red: 0.7215686274509804, green: 0.27058823529411763, blue: 0.9882352941176471, alpha: 1.0)
        case "F*":
            self.init(red: 0.3411764705882353, green: 0.1803921568627451, blue: 0.18823529411764706, alpha: 1.0)
        case "FIGlet Font":
            self.init(red: 1.0, green: 0.8666666666666667, blue: 0.7333333333333333, alpha: 1.0)
        case "FLUX":
            self.init(red: 0.5333333333333333, green: 0.8, blue: 1.0, alpha: 1.0)
        case "Factor":
            self.init(red: 0.38823529411764707, green: 0.403921568627451, blue: 0.27450980392156865, alpha: 1.0)
        case "Fancy":
            self.init(red: 0.4823529411764706, green: 0.615686274509804, blue: 0.7058823529411765, alpha: 1.0)
        case "Fantom":
            self.init(red: 0.0784313725490196, green: 0.1450980392156863, blue: 0.23529411764705882, alpha: 1.0)
        case "Faust":
            self.init(red: 0.7647058823529411, green: 0.4470588235294118, blue: 0.25098039215686274, alpha: 1.0)
        case "Fennel":
            self.init(red: 1.0, green: 0.9529411764705882, blue: 0.8431372549019608, alpha: 1.0)
        case "Filebench WML":
            self.init(red: 0.9647058823529412, green: 0.7254901960784313, blue: 0.0, alpha: 1.0)
        case "Filterscript":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "Fluent":
            self.init(red: 1.0, green: 0.8, blue: 0.2, alpha: 1.0)
        case "Formatted":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "Forth":
            self.init(red: 0.20392156862745098, green: 0.09019607843137255, blue: 0.03137254901960784, alpha: 1.0)
        case "Fortran":
            self.init(red: 0.30196078431372547, green: 0.2549019607843137, blue: 0.6941176470588235, alpha: 1.0)
        case "Fortran Free Form":
            self.init(red: 0.30196078431372547, green: 0.2549019607843137, blue: 0.6941176470588235, alpha: 1.0)
        case "FreeBasic":
            self.init(red: 0.5254901960784314, green: 0.49019607843137253, blue: 0.6941176470588235, alpha: 1.0)
        case "FreeMarker":
            self.init(red: 0.0, green: 0.3137254901960784, blue: 0.6980392156862745, alpha: 1.0)
        case "Frege":
            self.init(red: 0.0, green: 0.792156862745098, blue: 0.996078431372549, alpha: 1.0)
        case "Futhark":
            self.init(red: 0.37254901960784315, green: 0.00784313725490196, blue: 0.12156862745098039, alpha: 1.0)
        case "G-code":
            self.init(red: 0.8156862745098039, green: 0.5490196078431373, blue: 0.9490196078431372, alpha: 1.0)
        case "GAML":
            self.init(red: 1.0, green: 0.7803921568627451, blue: 0.4, alpha: 1.0)
        case "GAMS":
            self.init(red: 0.9568627450980393, green: 0.6039215686274509, blue: 0.13333333333333333, alpha: 1.0)
        case "GAP":
            self.init(red: 0.0, green: 0.0, blue: 0.8, alpha: 1.0)
        case "GCC Machine Description":
            self.init(red: 1.0, green: 0.8117647058823529, blue: 0.6705882352941176, alpha: 1.0)
        case "GDB":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "GDScript":
            self.init(red: 0.20784313725490197, green: 0.3333333333333333, blue: 0.4392156862745098, alpha: 1.0)
        case "GEDCOM":
            self.init(red: 0.0, green: 0.18823529411764706, blue: 0.34509803921568627, alpha: 1.0)
        case "GLSL":
            self.init(red: 0.33725490196078434, green: 0.5254901960784314, blue: 0.6470588235294118, alpha: 1.0)
        case "GN":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "Game Maker Language":
            self.init(red: 0.44313725490196076, green: 0.7058823529411765, blue: 0.09019607843137255, alpha: 1.0)
        case "Gemfile.lock":
            self.init(red: 0.4392156862745098, green: 0.08235294117647059, blue: 0.08627450980392157, alpha: 1.0)
        case "Genie":
            self.init(red: 0.984313725490196, green: 0.5215686274509804, blue: 0.36470588235294116, alpha: 1.0)
        case "Genshi":
            self.init(red: 0.5843137254901961, green: 0.08235294117647059, blue: 0.19215686274509805, alpha: 1.0)
        case "Gentoo Ebuild":
            self.init(red: 0.5803921568627451, green: 0.0, blue: 1.0, alpha: 1.0)
        case "Gentoo Eclass":
            self.init(red: 0.5803921568627451, green: 0.0, blue: 1.0, alpha: 1.0)
        case "Gerber Image":
            self.init(red: 0.8235294117647058, green: 0.043137254901960784, blue: 0.0, alpha: 1.0)
        case "Gettext Catalog":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "Gherkin":
            self.init(red: 0.3568627450980392, green: 0.12549019607843137, blue: 0.38823529411764707, alpha: 1.0)
        case "Git Attributes":
            self.init(red: 0.9568627450980393, green: 0.30196078431372547, blue: 0.15294117647058825, alpha: 1.0)
        case "Git Config":
            self.init(red: 0.9568627450980393, green: 0.30196078431372547, blue: 0.15294117647058825, alpha: 1.0)
        case "Glyph":
            self.init(red: 0.7568627450980392, green: 0.6745098039215687, blue: 0.4980392156862745, alpha: 1.0)
        case "Glyph Bitmap Distribution Format":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "Gnuplot":
            self.init(red: 0.9411764705882353, green: 0.6627450980392157, blue: 0.9411764705882353, alpha: 1.0)
        case "Go":
            self.init(red: 0.0, green: 0.6784313725490196, blue: 0.8470588235294118, alpha: 1.0)
        case "Go Checksums":
            self.init(red: 0.0, green: 0.6784313725490196, blue: 0.8470588235294118, alpha: 1.0)
        case "Go Module":
            self.init(red: 0.0, green: 0.6784313725490196, blue: 0.8470588235294118, alpha: 1.0)
        case "Golo":
            self.init(red: 0.5333333333333333, green: 0.33725490196078434, blue: 0.16470588235294117, alpha: 1.0)
        case "Gosu":
            self.init(red: 0.5098039215686274, green: 0.5764705882352941, blue: 0.4980392156862745, alpha: 1.0)
        case "Grace":
            self.init(red: 0.3803921568627451, green: 0.37254901960784315, blue: 0.5450980392156862, alpha: 1.0)
        case "Gradle":
            self.init(red: 0.00784313725490196, green: 0.18823529411764706, blue: 0.22745098039215686, alpha: 1.0)
        case "Grammatical Framework":
            self.init(red: 1.0, green: 0.0, blue: 0.0, alpha: 1.0)
        case "Graph Modeling Language":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "GraphQL":
            self.init(red: 0.8823529411764706, green: 0.0, blue: 0.596078431372549, alpha: 1.0)
        case "Graphviz (DOT)":
            self.init(red: 0.1450980392156863, green: 0.5882352941176471, blue: 0.7450980392156863, alpha: 1.0)
        case "Groovy":
            self.init(red: 0.25882352941176473, green: 0.596078431372549, blue: 0.7215686274509804, alpha: 1.0)
        case "Groovy Server Pages":
            self.init(red: 0.25882352941176473, green: 0.596078431372549, blue: 0.7215686274509804, alpha: 1.0)
        case "HAProxy":
            self.init(red: 0.06274509803921569, green: 0.42745098039215684, blue: 0.6627450980392157, alpha: 1.0)
        case "HCL":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "HLSL":
            self.init(red: 0.6666666666666666, green: 0.807843137254902, blue: 0.3764705882352941, alpha: 1.0)
        case "HTML":
            self.init(red: 0.8901960784313725, green: 0.2980392156862745, blue: 0.14901960784313725, alpha: 1.0)
        case "HTML+ECR":
            self.init(red: 0.1803921568627451, green: 0.06274509803921569, blue: 0.3215686274509804, alpha: 1.0)
        case "HTML+EEX":
            self.init(red: 0.43137254901960786, green: 0.2901960784313726, blue: 0.49411764705882355, alpha: 1.0)
        case "HTML+ERB":
            self.init(red: 0.4392156862745098, green: 0.08235294117647059, blue: 0.08627450980392157, alpha: 1.0)
        case "HTML+PHP":
            self.init(red: 0.30980392156862746, green: 0.36470588235294116, blue: 0.5843137254901961, alpha: 1.0)
        case "HTML+Razor":
            self.init(red: 0.3176470588235294, green: 0.16862745098039217, blue: 0.8941176470588236, alpha: 1.0)
        case "HTTP":
            self.init(red: 0.0, green: 0.3607843137254902, blue: 0.611764705882353, alpha: 1.0)
        case "HXML":
            self.init(red: 0.9647058823529412, green: 0.5294117647058824, blue: 0.07058823529411765, alpha: 1.0)
        case "Hack":
            self.init(red: 0.5294117647058824, green: 0.5294117647058824, blue: 0.5294117647058824, alpha: 1.0)
        case "Haml":
            self.init(red: 0.9254901960784314, green: 0.8862745098039215, blue: 0.6627450980392157, alpha: 1.0)
        case "Handlebars":
            self.init(red: 0.9686274509803922, green: 0.5764705882352941, blue: 0.11764705882352941, alpha: 1.0)
        case "Harbour":
            self.init(red: 0.054901960784313725, green: 0.3764705882352941, blue: 0.8901960784313725, alpha: 1.0)
        case "Haskell":
            self.init(red: 0.3686274509803922, green: 0.3137254901960784, blue: 0.5254901960784314, alpha: 1.0)
        case "Haxe":
            self.init(red: 0.8745098039215686, green: 0.4745098039215686, blue: 0.0, alpha: 1.0)
        case "HiveQL":
            self.init(red: 0.8627450980392157, green: 0.8862745098039215, blue: 0.0, alpha: 1.0)
        case "HolyC":
            self.init(red: 1.0, green: 0.9372549019607843, blue: 0.6862745098039216, alpha: 1.0)
        case "Hy":
            self.init(red: 0.4666666666666667, green: 0.5647058823529412, blue: 0.6980392156862745, alpha: 1.0)
        case "HyPhy":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "IDL":
            self.init(red: 0.6392156862745098, green: 0.3215686274509804, blue: 0.1843137254901961, alpha: 1.0)
        case "IGOR Pro":
            self.init(red: 0.0, green: 0.0, blue: 0.8, alpha: 1.0)
        case "INI":
            self.init(red: 0.8196078431372549, green: 0.8588235294117647, blue: 0.8784313725490196, alpha: 1.0)
        case "IRC log":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "Idris":
            self.init(red: 0.7019607843137254, green: 0.0, blue: 0.0, alpha: 1.0)
        case "Ignore List":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        case "ImageJ Macro":
            self.init(red: 0.6, green: 0.6666666666666666, blue: 1.0, alpha: 1.0)
        case "Inform 7":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "Inno Setup":
            self.init(red: 0.14901960784313725, green: 0.29411764705882354, blue: 0.6, alpha: 1.0)
        case "Io":
            self.init(red: 0.6627450980392157, green: 0.09411764705882353, blue: 0.5529411764705883, alpha: 1.0)
        case "Ioke":
            self.init(red: 0.027450980392156862, green: 0.5058823529411764, blue: 0.5764705882352941, alpha: 1.0)
        case "Isabelle":
            self.init(red: 0.996078431372549, green: 0.996078431372549, blue: 0.0, alpha: 1.0)
        case "Isabelle ROOT":
            self.init(red: 0.996078431372549, green: 0.996078431372549, blue: 0.0, alpha: 1.0)
        case "J":
            self.init(red: 0.6196078431372549, green: 0.9294117647058824, blue: 1.0, alpha: 1.0)
        case "JAR Manifest":
            self.init(red: 0.6901960784313725, green: 0.4470588235294118, blue: 0.09803921568627451, alpha: 1.0)
        case "JFlex":
            self.init(red: 0.8588235294117647, green: 0.792156862745098, blue: 0.0, alpha: 1.0)
        case "JSON":
            self.init(red: 0.1607843137254902, green: 0.1607843137254902, blue: 0.1607843137254902, alpha: 1.0)
        case "JSON with Comments":
            self.init(red: 0.1607843137254902, green: 0.1607843137254902, blue: 0.1607843137254902, alpha: 1.0)
        case "JSON5":
            self.init(red: 0.14901960784313725, green: 0.48627450980392156, blue: 0.7254901960784313, alpha: 1.0)
        case "JSONLD":
            self.init(red: 0.047058823529411764, green: 0.2784313725490196, blue: 0.611764705882353, alpha: 1.0)
        case "JSONiq":
            self.init(red: 0.25098039215686274, green: 0.8313725490196079, blue: 0.49411764705882355, alpha: 1.0)
        case "Jasmin":
            self.init(red: 0.8156862745098039, green: 0.21176470588235294, blue: 0.0, alpha: 1.0)
        case "Java":
            self.init(red: 0.6901960784313725, green: 0.4470588235294118, blue: 0.09803921568627451, alpha: 1.0)
        case "Java Properties":
            self.init(red: 0.16470588235294117, green: 0.3843137254901961, blue: 0.4666666666666667, alpha: 1.0)
        case "Java Server Pages":
            self.init(red: 0.16470588235294117, green: 0.3843137254901961, blue: 0.4666666666666667, alpha: 1.0)
        case "JavaScript":
            self.init(red: 0.9450980392156862, green: 0.8784313725490196, blue: 0.35294117647058826, alpha: 1.0)
        case "JavaScript+ERB":
            self.init(red: 0.9450980392156862, green: 0.8784313725490196, blue: 0.35294117647058826, alpha: 1.0)
        case "Jest Snapshot":
            self.init(red: 0.08235294117647059, green: 0.7607843137254902, blue: 0.07450980392156863, alpha: 1.0)
        case "Jinja":
            self.init(red: 0.6470588235294118, green: 0.16470588235294117, blue: 0.13333333333333333, alpha: 1.0)
        case "Jison":
            self.init(red: 0.33725490196078434, green: 0.7019607843137254, blue: 0.796078431372549, alpha: 1.0)
        case "Jison Lex":
            self.init(red: 0.33725490196078434, green: 0.7019607843137254, blue: 0.796078431372549, alpha: 1.0)
        case "Jolie":
            self.init(red: 0.5176470588235295, green: 0.19215686274509805, blue: 0.4745098039215686, alpha: 1.0)
        case "Jsonnet":
            self.init(red: 0.0, green: 0.39215686274509803, blue: 0.7411764705882353, alpha: 1.0)
        case "Julia":
            self.init(red: 0.6352941176470588, green: 0.4392156862745098, blue: 0.7294117647058823, alpha: 1.0)
        case "Jupyter Notebook":
            self.init(red: 0.8549019607843137, green: 0.3568627450980392, blue: 0.043137254901960784, alpha: 1.0)
        case "KRL":
            self.init(red: 0.1568627450980392, green: 0.2627450980392157, blue: 0.0392156862745098, alpha: 1.0)
        case "Kaitai Struct":
            self.init(red: 0.4666666666666667, green: 0.23137254901960785, blue: 0.21568627450980393, alpha: 1.0)
        case "KakouneScript":
            self.init(red: 0.43529411764705883, green: 0.5019607843137255, blue: 0.25882352941176473, alpha: 1.0)
        case "KiCad Layout":
            self.init(red: 0.1843137254901961, green: 0.2901960784313726, blue: 0.6705882352941176, alpha: 1.0)
        case "KiCad Legacy Layout":
            self.init(red: 0.1843137254901961, green: 0.2901960784313726, blue: 0.6705882352941176, alpha: 1.0)
        case "KiCad Schematic":
            self.init(red: 0.1843137254901961, green: 0.2901960784313726, blue: 0.6705882352941176, alpha: 1.0)
        case "Kit":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "Kotlin":
            self.init(red: 0.6627450980392157, green: 0.4823529411764706, blue: 1.0, alpha: 1.0)
        case "Kusto":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "LFE":
            self.init(red: 0.2980392156862745, green: 0.18823529411764706, blue: 0.13725490196078433, alpha: 1.0)
        case "LLVM":
            self.init(red: 0.09411764705882353, green: 0.33725490196078434, blue: 0.09803921568627451, alpha: 1.0)
        case "LOLCODE":
            self.init(red: 0.8, green: 0.6, blue: 0.0, alpha: 1.0)
        case "LSL":
            self.init(red: 0.23921568627450981, green: 0.6, blue: 0.4392156862745098, alpha: 1.0)
        case "LTspice Symbol":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "LabVIEW":
            self.init(red: 0.996078431372549, green: 0.8705882352941177, blue: 0.023529411764705882, alpha: 1.0)
        case "Lark":
            self.init(red: 0.1607843137254902, green: 0.5019607843137255, blue: 0.7254901960784313, alpha: 1.0)
        case "Lasso":
            self.init(red: 0.6, green: 0.6, blue: 0.6, alpha: 1.0)
        case "Latte":
            self.init(red: 0.9490196078431372, green: 0.6470588235294118, blue: 0.25882352941176473, alpha: 1.0)
        case "Lean":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "Less":
            self.init(red: 0.11372549019607843, green: 0.21176470588235294, blue: 0.36470588235294116, alpha: 1.0)
        case "Lex":
            self.init(red: 0.8588235294117647, green: 0.792156862745098, blue: 0.0, alpha: 1.0)
        case "LilyPond":
            self.init(red: 0.611764705882353, green: 0.8, blue: 0.48627450980392156, alpha: 1.0)
        case "Limbo":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "Linker Script":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "Linux Kernel Module":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "Liquid":
            self.init(red: 0.403921568627451, green: 0.7215686274509804, blue: 0.8705882352941177, alpha: 1.0)
        case "Literate Agda":
            self.init(red: 0.19215686274509805, green: 0.33725490196078434, blue: 0.396078431372549, alpha: 1.0)
        case "Literate CoffeeScript":
            self.init(red: 0.1411764705882353, green: 0.2784313725490196, blue: 0.4627450980392157, alpha: 1.0)
        case "Literate Haskell":
            self.init(red: 0.3686274509803922, green: 0.3137254901960784, blue: 0.5254901960784314, alpha: 1.0)
        case "LiveScript":
            self.init(red: 0.28627450980392155, green: 0.596078431372549, blue: 0.5254901960784314, alpha: 1.0)
        case "Logos":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "Logtalk":
            self.init(red: 0.1607843137254902, green: 0.3568627450980392, blue: 0.6039215686274509, alpha: 1.0)
        case "LookML":
            self.init(red: 0.396078431372549, green: 0.16862745098039217, blue: 0.5058823529411764, alpha: 1.0)
        case "LoomScript":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "Lua":
            self.init(red: 0.0, green: 0.0, blue: 0.5019607843137255, alpha: 1.0)
        case "M":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "M4":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "M4Sugar":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "MATLAB":
            self.init(red: 0.8823529411764706, green: 0.403921568627451, blue: 0.21568627450980393, alpha: 1.0)
        case "MAXScript":
            self.init(red: 0.0, green: 0.6509803921568628, blue: 0.6509803921568628, alpha: 1.0)
        case "MLIR":
            self.init(red: 0.3686274509803922, green: 0.7843137254901961, blue: 0.8588235294117647, alpha: 1.0)
        case "MQL4":
            self.init(red: 0.3843137254901961, green: 0.6588235294117647, blue: 0.8392156862745098, alpha: 1.0)
        case "MQL5":
            self.init(red: 0.2901960784313726, green: 0.4627450980392157, blue: 0.7215686274509804, alpha: 1.0)
        case "MTML":
            self.init(red: 0.7176470588235294, green: 0.8823529411764706, blue: 0.9568627450980393, alpha: 1.0)
        case "MUF":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "Macaulay2":
            self.init(red: 0.8470588235294118, green: 1.0, blue: 1.0, alpha: 1.0)
        case "Makefile":
            self.init(red: 0.25882352941176473, green: 0.47058823529411764, blue: 0.09803921568627451, alpha: 1.0)
        case "Mako":
            self.init(red: 0.49411764705882355, green: 0.5215686274509804, blue: 0.5529411764705883, alpha: 1.0)
        case "Markdown":
            self.init(red: 0.03137254901960784, green: 0.24705882352941178, blue: 0.6313725490196078, alpha: 1.0)
        case "Marko":
            self.init(red: 0.25882352941176473, green: 0.7490196078431373, blue: 0.9490196078431372, alpha: 1.0)
        case "Mask":
            self.init(red: 0.9764705882352941, green: 0.4666666666666667, blue: 0.19607843137254902, alpha: 1.0)
        case "Mathematica":
            self.init(red: 0.8666666666666667, green: 0.06666666666666667, blue: 0.0, alpha: 1.0)
        case "Maven POM":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "Max":
            self.init(red: 0.7686274509803922, green: 0.6549019607843137, blue: 0.611764705882353, alpha: 1.0)
        case "Mercury":
            self.init(red: 1.0, green: 0.16862745098039217, blue: 0.16862745098039217, alpha: 1.0)
        case "Meson":
            self.init(red: 0.0, green: 0.47058823529411764, blue: 0.0, alpha: 1.0)
        case "Metal":
            self.init(red: 0.5607843137254902, green: 0.0784313725490196, blue: 0.9137254901960784, alpha: 1.0)
        case "Microsoft Developer Studio Project":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "Microsoft Visual Studio Solution":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "MiniD":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "Mirah":
            self.init(red: 0.7803921568627451, green: 0.6627450980392157, blue: 0.2196078431372549, alpha: 1.0)
        case "Modelica":
            self.init(red: 0.8705882352941177, green: 0.11372549019607843, blue: 0.19215686274509805, alpha: 1.0)
        case "Modula-2":
            self.init(red: 0.06274509803921569, green: 0.1450980392156863, blue: 0.24705882352941178, alpha: 1.0)
        case "Modula-3":
            self.init(red: 0.13333333333333333, green: 0.2, blue: 0.5333333333333333, alpha: 1.0)
        case "Module Management System":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "Monkey":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "Moocode":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "MoonScript":
            self.init(red: 1.0, green: 0.27058823529411763, blue: 0.5215686274509804, alpha: 1.0)
        case "Motorola 68K Assembly":
            self.init(red: 0.0, green: 0.36470588235294116, blue: 0.6666666666666666, alpha: 1.0)
        case "Muse":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "Mustache":
            self.init(red: 0.4470588235294118, green: 0.29411764705882354, blue: 0.23137254901960785, alpha: 1.0)
        case "Myghty":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "NASL":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "NCL":
            self.init(red: 0.1568627450980392, green: 0.2627450980392157, blue: 0.12156862745098039, alpha: 1.0)
        case "NEON":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "NL":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "NPM Config":
            self.init(red: 0.796078431372549, green: 0.2196078431372549, blue: 0.21568627450980393, alpha: 1.0)
        case "NSIS":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "NWScript":
            self.init(red: 0.06666666666666667, green: 0.08235294117647059, blue: 0.13333333333333333, alpha: 1.0)
        case "Nearley":
            self.init(red: 0.6, green: 0.0, blue: 0.0, alpha: 1.0)
        case "Nemerle":
            self.init(red: 0.23921568627450981, green: 0.23529411764705882, blue: 0.43137254901960786, alpha: 1.0)
        case "NetLinx":
            self.init(red: 0.0392156862745098, green: 0.6274509803921569, blue: 1.0, alpha: 1.0)
        case "NetLinx+ERB":
            self.init(red: 0.4549019607843137, green: 0.4980392156862745, blue: 0.6666666666666666, alpha: 1.0)
        case "NetLogo":
            self.init(red: 1.0, green: 0.38823529411764707, blue: 0.4588235294117647, alpha: 1.0)
        case "NewLisp":
            self.init(red: 0.5294117647058824, green: 0.6823529411764706, blue: 0.8431372549019608, alpha: 1.0)
        case "Nextflow":
            self.init(red: 0.22745098039215686, green: 0.7686274509803922, blue: 0.5254901960784314, alpha: 1.0)
        case "Nginx":
            self.init(red: 0.0, green: 0.5882352941176471, blue: 0.2235294117647059, alpha: 1.0)
        case "Nim":
            self.init(red: 1.0, green: 0.7607843137254902, blue: 0.0, alpha: 1.0)
        case "Ninja":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "Nit":
            self.init(red: 0.0, green: 0.6, blue: 0.09019607843137255, alpha: 1.0)
        case "Nix":
            self.init(red: 0.49411764705882355, green: 0.49411764705882355, blue: 1.0, alpha: 1.0)
        case "Nu":
            self.init(red: 0.788235294117647, green: 0.8745098039215686, blue: 0.25098039215686274, alpha: 1.0)
        case "NumPy":
            self.init(red: 0.611764705882353, green: 0.5411764705882353, blue: 0.9764705882352941, alpha: 1.0)
        case "Nunjucks":
            self.init(red: 0.23921568627450981, green: 0.5058823529411764, blue: 0.21568627450980393, alpha: 1.0)
        case "OCaml":
            self.init(red: 0.23137254901960785, green: 0.8823529411764706, blue: 0.2, alpha: 1.0)
        case "ObjDump":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "Object Data Instance Notation":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "ObjectScript":
            self.init(red: 0.25882352941176473, green: 0.2823529411764706, blue: 0.5764705882352941, alpha: 1.0)
        case "Objective-C":
            self.init(red: 0.2627450980392157, green: 0.5568627450980392, blue: 1.0, alpha: 1.0)
        case "Objective-C++":
            self.init(red: 0.40784313725490196, green: 0.4, blue: 0.984313725490196, alpha: 1.0)
        case "Objective-J":
            self.init(red: 1.0, green: 0.047058823529411764, blue: 0.35294117647058826, alpha: 1.0)
        case "Odin":
            self.init(red: 0.3764705882352941, green: 0.6862745098039216, blue: 0.996078431372549, alpha: 1.0)
        case "Omgrofl":
            self.init(red: 0.792156862745098, green: 0.7333333333333333, blue: 1.0, alpha: 1.0)
        case "Opa":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "Opal":
            self.init(red: 0.9686274509803922, green: 0.9294117647058824, blue: 0.8784313725490196, alpha: 1.0)
        case "Open Policy Agent":
            self.init(red: 0.49019607843137253, green: 0.5686274509803921, blue: 0.6, alpha: 1.0)
        case "OpenCL":
            self.init(red: 0.9294117647058824, green: 0.1803921568627451, blue: 0.17647058823529413, alpha: 1.0)
        case "OpenEdge ABL":
            self.init(red: 0.3607843137254902, green: 0.9019607843137255, blue: 0.0, alpha: 1.0)
        case "OpenQASM":
            self.init(red: 0.6666666666666666, green: 0.4392156862745098, blue: 1.0, alpha: 1.0)
        case "OpenRC runscript":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "OpenSCAD":
            self.init(red: 0.8980392156862745, green: 0.803921568627451, blue: 0.27058823529411763, alpha: 1.0)
        case "OpenStep Property List":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "OpenType Feature File":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "Org":
            self.init(red: 0.4666666666666667, green: 0.6666666666666666, blue: 0.6, alpha: 1.0)
        case "Ox":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "Oxygene":
            self.init(red: 0.803921568627451, green: 0.8156862745098039, blue: 0.8901960784313725, alpha: 1.0)
        case "Oz":
            self.init(red: 0.9803921568627451, green: 0.7176470588235294, blue: 0.2196078431372549, alpha: 1.0)
        case "P4":
            self.init(red: 0.4392156862745098, green: 0.3333333333333333, blue: 0.7098039215686275, alpha: 1.0)
        case "PEG.js":
            self.init(red: 0.13725490196078433, green: 0.30196078431372547, blue: 0.4196078431372549, alpha: 1.0)
        case "PHP":
            self.init(red: 0.30980392156862746, green: 0.36470588235294116, blue: 0.5843137254901961, alpha: 1.0)
        case "PLSQL":
            self.init(red: 0.8549019607843137, green: 0.8470588235294118, blue: 0.8470588235294118, alpha: 1.0)
        case "PLpgSQL":
            self.init(red: 0.2, green: 0.403921568627451, blue: 0.5647058823529412, alpha: 1.0)
        case "POV-Ray SDL":
            self.init(red: 0.4196078431372549, green: 0.6745098039215687, blue: 0.396078431372549, alpha: 1.0)
        case "Pan":
            self.init(red: 0.8, green: 0.0, blue: 0.0, alpha: 1.0)
        case "Papyrus":
            self.init(red: 0.4, green: 0.0, blue: 0.8, alpha: 1.0)
        case "Parrot":
            self.init(red: 0.9529411764705882, green: 0.792156862745098, blue: 0.0392156862745098, alpha: 1.0)
        case "Parrot Assembly":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "Parrot Internal Representation":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "Pascal":
            self.init(red: 0.8901960784313725, green: 0.9450980392156862, blue: 0.44313725490196076, alpha: 1.0)
        case "Pawn":
            self.init(red: 0.8588235294117647, green: 0.6980392156862745, blue: 0.5176470588235295, alpha: 1.0)
        case "Pep8":
            self.init(red: 0.7803921568627451, green: 0.43529411764705883, blue: 0.3568627450980392, alpha: 1.0)
        case "Perl":
            self.init(red: 0.00784313725490196, green: 0.596078431372549, blue: 0.7647058823529411, alpha: 1.0)
        case "Pic":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "Pickle":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "PicoLisp":
            self.init(red: 0.3764705882352941, green: 0.403921568627451, blue: 0.6862745098039216, alpha: 1.0)
        case "PigLatin":
            self.init(red: 0.9882352941176471, green: 0.8431372549019608, blue: 0.8705882352941177, alpha: 1.0)
        case "Pike":
            self.init(red: 0.0, green: 0.3254901960784314, blue: 0.5647058823529412, alpha: 1.0)
        case "PlantUML":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "Pod":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "Pod 6":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "PogoScript":
            self.init(red: 0.8470588235294118, green: 0.0, blue: 0.4549019607843137, alpha: 1.0)
        case "Pony":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "PostCSS":
            self.init(red: 0.8627450980392157, green: 0.22745098039215686, blue: 0.047058823529411764, alpha: 1.0)
        case "PostScript":
            self.init(red: 0.8549019607843137, green: 0.1607843137254902, blue: 0.10980392156862745, alpha: 1.0)
        case "PowerBuilder":
            self.init(red: 0.5607843137254902, green: 0.058823529411764705, blue: 0.5529411764705883, alpha: 1.0)
        case "PowerShell":
            self.init(red: 0.00392156862745098, green: 0.1411764705882353, blue: 0.33725490196078434, alpha: 1.0)
        case "Prisma":
            self.init(red: 0.047058823529411764, green: 0.20392156862745098, blue: 0.29411764705882354, alpha: 1.0)
        case "Processing":
            self.init(red: 0.0, green: 0.5882352941176471, blue: 0.8470588235294118, alpha: 1.0)
        case "Proguard":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "Prolog":
            self.init(red: 0.4549019607843137, green: 0.1568627450980392, blue: 0.23529411764705882, alpha: 1.0)
        case "Propeller Spin":
            self.init(red: 0.4980392156862745, green: 0.6352941176470588, blue: 0.6549019607843137, alpha: 1.0)
        case "Protocol Buffer":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "Public Key":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "Pug":
            self.init(red: 0.6588235294117647, green: 0.39215686274509803, blue: 0.32941176470588235, alpha: 1.0)
        case "Puppet":
            self.init(red: 0.18823529411764706, green: 0.16862745098039217, blue: 0.42745098039215684, alpha: 1.0)
        case "Pure Data":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "PureBasic":
            self.init(red: 0.35294117647058826, green: 0.4117647058823529, blue: 0.5254901960784314, alpha: 1.0)
        case "PureScript":
            self.init(red: 0.11372549019607843, green: 0.13333333333333333, blue: 0.17647058823529413, alpha: 1.0)
        case "Python":
            self.init(red: 0.20784313725490197, green: 0.4470588235294118, blue: 0.6470588235294118, alpha: 1.0)
        case "Python console":
            self.init(red: 0.20784313725490197, green: 0.4470588235294118, blue: 0.6470588235294118, alpha: 1.0)
        case "Python traceback":
            self.init(red: 0.20784313725490197, green: 0.4470588235294118, blue: 0.6470588235294118, alpha: 1.0)
        case "Q#":
            self.init(red: 0.996078431372549, green: 0.8392156862745098, blue: 0.34901960784313724, alpha: 1.0)
        case "QML":
            self.init(red: 0.26666666666666666, green: 0.6470588235294118, blue: 0.10980392156862745, alpha: 1.0)
        case "QMake":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "Qt Script":
            self.init(red: 0.0, green: 0.7215686274509804, blue: 0.2549019607843137, alpha: 1.0)
        case "Quake":
            self.init(red: 0.5333333333333333, green: 0.13333333333333333, blue: 0.2, alpha: 1.0)
        case "R":
            self.init(red: 0.09803921568627451, green: 0.5490196078431373, blue: 0.9058823529411765, alpha: 1.0)
        case "RAML":
            self.init(red: 0.4666666666666667, green: 0.8509803921568627, blue: 0.984313725490196, alpha: 1.0)
        case "RDoc":
            self.init(red: 0.4392156862745098, green: 0.08235294117647059, blue: 0.08627450980392157, alpha: 1.0)
        case "REALbasic":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "REXX":
            self.init(red: 0.8509803921568627, green: 0.054901960784313725, blue: 0.03529411764705882, alpha: 1.0)
        case "RMarkdown":
            self.init(red: 0.09803921568627451, green: 0.5490196078431373, blue: 0.9058823529411765, alpha: 1.0)
        case "RPC":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "RPM Spec":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "RUNOFF":
            self.init(red: 0.4, green: 0.35294117647058826, blue: 0.3058823529411765, alpha: 1.0)
        case "Racket":
            self.init(red: 0.23529411764705882, green: 0.3607843137254902, blue: 0.6666666666666666, alpha: 1.0)
        case "Ragel":
            self.init(red: 0.615686274509804, green: 0.3215686274509804, blue: 0.0, alpha: 1.0)
        case "Raku":
            self.init(red: 0.0, green: 0.0, blue: 0.984313725490196, alpha: 1.0)
        case "Rascal":
            self.init(red: 1.0, green: 0.9803921568627451, blue: 0.6274509803921569, alpha: 1.0)
        case "Raw token data":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "ReScript":
            self.init(red: 0.9294117647058824, green: 0.3137254901960784, blue: 0.3176470588235294, alpha: 1.0)
        case "Readline Config":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "Reason":
            self.init(red: 1.0, green: 0.34509803921568627, blue: 0.2784313725490196, alpha: 1.0)
        case "Rebol":
            self.init(red: 0.20784313725490197, green: 0.5411764705882353, blue: 0.3568627450980392, alpha: 1.0)
        case "Record Jar":
            self.init(red: 0.023529411764705882, green: 0.45098039215686275, blue: 0.7294117647058823, alpha: 1.0)
        case "Red":
            self.init(red: 0.9607843137254902, green: 0.0, blue: 0.0, alpha: 1.0)
        case "Redcode":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "Redirect Rules":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "Regular Expression":
            self.init(red: 0.0, green: 0.6039215686274509, blue: 0.0, alpha: 1.0)
        case "Ren'Py":
            self.init(red: 1.0, green: 0.4980392156862745, blue: 0.4980392156862745, alpha: 1.0)
        case "RenderScript":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "Rich Text Format":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "Ring":
            self.init(red: 0.17647058823529413, green: 0.32941176470588235, blue: 0.796078431372549, alpha: 1.0)
        case "Riot":
            self.init(red: 0.6549019607843137, green: 0.11764705882352941, blue: 0.28627450980392155, alpha: 1.0)
        case "RobotFramework":
            self.init(red: 0.0, green: 0.7529411764705882, blue: 0.7098039215686275, alpha: 1.0)
        case "Roff":
            self.init(red: 0.9254901960784314, green: 0.8705882352941177, blue: 0.7450980392156863, alpha: 1.0)
        case "Roff Manpage":
            self.init(red: 0.9254901960784314, green: 0.8705882352941177, blue: 0.7450980392156863, alpha: 1.0)
        case "Rouge":
            self.init(red: 0.8, green: 0.0, blue: 0.5333333333333333, alpha: 1.0)
        case "Ruby":
            self.init(red: 0.4392156862745098, green: 0.08235294117647059, blue: 0.08627450980392157, alpha: 1.0)
        case "Rust":
            self.init(red: 0.8705882352941177, green: 0.6470588235294118, blue: 0.5176470588235295, alpha: 1.0)
        case "SAS":
            self.init(red: 0.7019607843137254, green: 0.28627450980392155, blue: 0.21176470588235294, alpha: 1.0)
        case "SCSS":
            self.init(red: 0.7764705882352941, green: 0.3254901960784314, blue: 0.5490196078431373, alpha: 1.0)
        case "SELinux Policy":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "SMT":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "SPARQL":
            self.init(red: 0.047058823529411764, green: 0.27058823529411763, blue: 0.592156862745098, alpha: 1.0)
        case "SQF":
            self.init(red: 0.24705882352941178, green: 0.24705882352941178, blue: 0.24705882352941178, alpha: 1.0)
        case "SQL":
            self.init(red: 0.8901960784313725, green: 0.5490196078431373, blue: 0.0, alpha: 1.0)
        case "SQLPL":
            self.init(red: 0.8901960784313725, green: 0.5490196078431373, blue: 0.0, alpha: 1.0)
        case "SRecode Template":
            self.init(red: 0.20392156862745098, green: 0.5411764705882353, blue: 0.20392156862745098, alpha: 1.0)
        case "SSH Config":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "STON":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "SVG":
            self.init(red: 1.0, green: 0.6, blue: 0.0, alpha: 1.0)
        case "SWIG":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "Sage":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "SaltStack":
            self.init(red: 0.39215686274509803, green: 0.39215686274509803, blue: 0.39215686274509803, alpha: 1.0)
        case "Sass":
            self.init(red: 0.6470588235294118, green: 0.23137254901960785, blue: 0.4392156862745098, alpha: 1.0)
        case "Scala":
            self.init(red: 0.7607843137254902, green: 0.17647058823529413, blue: 0.25098039215686274, alpha: 1.0)
        case "Scaml":
            self.init(red: 0.7411764705882353, green: 0.09411764705882353, blue: 0.10196078431372549, alpha: 1.0)
        case "Scheme":
            self.init(red: 0.11764705882352941, green: 0.2901960784313726, blue: 0.9254901960784314, alpha: 1.0)
        case "Scilab":
            self.init(red: 0.792156862745098, green: 0.058823529411764705, blue: 0.12941176470588237, alpha: 1.0)
        case "Self":
            self.init(red: 0.0196078431372549, green: 0.4745098039215686, blue: 0.6666666666666666, alpha: 1.0)
        case "ShaderLab":
            self.init(red: 0.13333333333333333, green: 0.17254901960784313, blue: 0.21568627450980393, alpha: 1.0)
        case "Shell":
            self.init(red: 0.5372549019607843, green: 0.8784313725490196, blue: 0.3176470588235294, alpha: 1.0)
        case "ShellSession":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "Shen":
            self.init(red: 0.07058823529411765, green: 0.058823529411764705, blue: 0.0784313725490196, alpha: 1.0)
        case "Sieve":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "Singularity":
            self.init(red: 0.39215686274509803, green: 0.9019607843137255, blue: 0.6784313725490196, alpha: 1.0)
        case "Slash":
            self.init(red: 0.0, green: 0.49411764705882355, blue: 1.0, alpha: 1.0)
        case "Slice":
            self.init(red: 0.0, green: 0.24705882352941178, blue: 0.6352941176470588, alpha: 1.0)
        case "Slim":
            self.init(red: 0.16862745098039217, green: 0.16862745098039217, blue: 0.16862745098039217, alpha: 1.0)
        case "SmPL":
            self.init(red: 0.788235294117647, green: 0.28627450980392155, blue: 0.28627450980392155, alpha: 1.0)
        case "Smali":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "Smalltalk":
            self.init(red: 0.34901960784313724, green: 0.403921568627451, blue: 0.023529411764705882, alpha: 1.0)
        case "Smarty":
            self.init(red: 0.9411764705882353, green: 0.7529411764705882, blue: 0.25098039215686274, alpha: 1.0)
        case "Solidity":
            self.init(red: 0.6666666666666666, green: 0.403921568627451, blue: 0.27450980392156865, alpha: 1.0)
        case "Soong":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "SourcePawn":
            self.init(red: 0.9647058823529412, green: 0.6196078431372549, blue: 0.11372549019607843, alpha: 1.0)
        case "Spline Font Database":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "Squirrel":
            self.init(red: 0.5019607843137255, green: 0.0, blue: 0.0, alpha: 1.0)
        case "Stan":
            self.init(red: 0.6980392156862745, green: 0.00392156862745098, blue: 0.11372549019607843, alpha: 1.0)
        case "Standard ML":
            self.init(red: 0.8627450980392157, green: 0.33725490196078434, blue: 0.42745098039215684, alpha: 1.0)
        case "Starlark":
            self.init(red: 0.4627450980392157, green: 0.8235294117647058, blue: 0.4588235294117647, alpha: 1.0)
        case "Stata":
            self.init(red: 0.10196078431372549, green: 0.37254901960784315, blue: 0.5686274509803921, alpha: 1.0)
        case "StringTemplate":
            self.init(red: 0.24705882352941178, green: 0.7019607843137254, blue: 0.30980392156862746, alpha: 1.0)
        case "Stylus":
            self.init(red: 1.0, green: 0.38823529411764707, blue: 0.2784313725490196, alpha: 1.0)
        case "SubRip Text":
            self.init(red: 0.6196078431372549, green: 0.00392156862745098, blue: 0.00392156862745098, alpha: 1.0)
        case "SugarSS":
            self.init(red: 0.1843137254901961, green: 0.8, blue: 0.6235294117647059, alpha: 1.0)
        case "SuperCollider":
            self.init(red: 0.27450980392156865, green: 0.2235294117647059, blue: 0.043137254901960784, alpha: 1.0)
        case "Svelte":
            self.init(red: 1.0, green: 0.24313725490196078, blue: 0.0, alpha: 1.0)
        case "Swift":
            self.init(red: 0.9411764705882353, green: 0.3176470588235294, blue: 0.2196078431372549, alpha: 1.0)
        case "SystemVerilog":
            self.init(red: 0.8549019607843137, green: 0.8823529411764706, blue: 0.7607843137254902, alpha: 1.0)
        case "TI Program":
            self.init(red: 0.6274509803921569, green: 0.6666666666666666, blue: 0.5294117647058824, alpha: 1.0)
        case "TLA":
            self.init(red: 0.29411764705882354, green: 0.0, blue: 0.4745098039215686, alpha: 1.0)
        case "TOML":
            self.init(red: 0.611764705882353, green: 0.25882352941176473, blue: 0.12941176470588237, alpha: 1.0)
        case "TSQL":
            self.init(red: 0.8901960784313725, green: 0.5490196078431373, blue: 0.0, alpha: 1.0)
        case "TSV":
            self.init(red: 0.13725490196078433, green: 0.45098039215686275, blue: 0.27450980392156865, alpha: 1.0)
        case "TSX":
            self.init(red: 0.16862745098039217, green: 0.4549019607843137, blue: 0.5372549019607843, alpha: 1.0)
        case "TXL":
            self.init(red: 0.00392156862745098, green: 0.47058823529411764, blue: 0.7215686274509804, alpha: 1.0)
        case "Tcl":
            self.init(red: 0.8941176470588236, green: 0.8, blue: 0.596078431372549, alpha: 1.0)
        case "Tcsh":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "TeX":
            self.init(red: 0.23921568627450981, green: 0.3803921568627451, blue: 0.09019607843137255, alpha: 1.0)
        case "Tea":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "Terra":
            self.init(red: 0.0, green: 0.0, blue: 0.2980392156862745, alpha: 1.0)
        case "Texinfo":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "Text":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "TextMate Properties":
            self.init(red: 0.8745098039215686, green: 0.4, blue: 0.8941176470588236, alpha: 1.0)
        case "Textile":
            self.init(red: 1.0, green: 0.9058823529411765, blue: 0.6745098039215687, alpha: 1.0)
        case "Thrift":
            self.init(red: 0.8196078431372549, green: 0.12941176470588237, blue: 0.15294117647058825, alpha: 1.0)
        case "Turing":
            self.init(red: 0.8117647058823529, green: 0.0784313725490196, blue: 0.16862745098039217, alpha: 1.0)
        case "Turtle":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "Twig":
            self.init(red: 0.7568627450980392, green: 0.8156862745098039, blue: 0.14901960784313725, alpha: 1.0)
        case "Type Language":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "TypeScript":
            self.init(red: 0.16862745098039217, green: 0.4549019607843137, blue: 0.5372549019607843, alpha: 1.0)
        case "Unified Parallel C":
            self.init(red: 0.3058823529411765, green: 0.21176470588235294, blue: 0.09019607843137255, alpha: 1.0)
        case "Unity3D Asset":
            self.init(red: 0.13333333333333333, green: 0.17254901960784313, blue: 0.21568627450980393, alpha: 1.0)
        case "Unix Assembly":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "Uno":
            self.init(red: 0.6, green: 0.2, blue: 0.8, alpha: 1.0)
        case "UnrealScript":
            self.init(red: 0.6470588235294118, green: 0.2980392156862745, blue: 0.30196078431372547, alpha: 1.0)
        case "UrWeb":
            self.init(red: 0.8, green: 0.8, blue: 0.9333333333333333, alpha: 1.0)
        case "V":
            self.init(red: 0.30980392156862746, green: 0.5294117647058824, blue: 0.7686274509803922, alpha: 1.0)
        case "VBA":
            self.init(red: 0.5254901960784314, green: 0.49019607843137253, blue: 0.6941176470588235, alpha: 1.0)
        case "VBScript":
            self.init(red: 0.08235294117647059, green: 0.8627450980392157, blue: 0.8627450980392157, alpha: 1.0)
        case "VCL":
            self.init(red: 0.0784313725490196, green: 0.5411764705882353, blue: 0.6588235294117647, alpha: 1.0)
        case "VHDL":
            self.init(red: 0.6784313725490196, green: 0.6980392156862745, blue: 0.796078431372549, alpha: 1.0)
        case "Vala":
            self.init(red: 0.984313725490196, green: 0.8980392156862745, blue: 0.803921568627451, alpha: 1.0)
        case "Valve Data Format":
            self.init(red: 0.9490196078431372, green: 0.3764705882352941, blue: 0.1450980392156863, alpha: 1.0)
        case "Verilog":
            self.init(red: 0.6980392156862745, green: 0.7176470588235294, blue: 0.9725490196078431, alpha: 1.0)
        case "Vim Help File":
            self.init(red: 0.09803921568627451, green: 0.6235294117647059, blue: 0.29411764705882354, alpha: 1.0)
        case "Vim Script":
            self.init(red: 0.09803921568627451, green: 0.6235294117647059, blue: 0.29411764705882354, alpha: 1.0)
        case "Vim Snippet":
            self.init(red: 0.09803921568627451, green: 0.6235294117647059, blue: 0.29411764705882354, alpha: 1.0)
        case "Visual Basic .NET":
            self.init(red: 0.5803921568627451, green: 0.36470588235294116, blue: 0.7176470588235294, alpha: 1.0)
        case "Volt":
            self.init(red: 0.12156862745098039, green: 0.12156862745098039, blue: 0.12156862745098039, alpha: 1.0)
        case "Vue":
            self.init(red: 0.2549019607843137, green: 0.7215686274509804, blue: 0.5137254901960784, alpha: 1.0)
        case "Wavefront Material":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "Wavefront Object":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "Web Ontology Language":
            self.init(red: 0.3568627450980392, green: 0.4392156862745098, blue: 0.7411764705882353, alpha: 1.0)
        case "WebAssembly":
            self.init(red: 0.01568627450980392, green: 0.07450980392156863, blue: 0.23137254901960785, alpha: 1.0)
        case "WebIDL":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "WebVTT":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "Wget Config":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "Wikitext":
            self.init(red: 0.9882352941176471, green: 0.3411764705882353, blue: 0.3411764705882353, alpha: 1.0)
        case "Windows Registry Entries":
            self.init(red: 0.3215686274509804, green: 0.8352941176470589, blue: 1.0, alpha: 1.0)
        case "Wollok":
            self.init(red: 0.6352941176470588, green: 0.21568627450980393, blue: 0.2196078431372549, alpha: 1.0)
        case "World of Warcraft Addon Data":
            self.init(red: 0.9686274509803922, green: 0.8941176470588236, blue: 0.24705882352941178, alpha: 1.0)
        case "X BitMap":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "X Font Directory Index":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "X PixMap":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "X10":
            self.init(red: 0.29411764705882354, green: 0.4196078431372549, blue: 0.9372549019607843, alpha: 1.0)
        case "XC":
            self.init(red: 0.6, green: 0.8549019607843137, blue: 0.027450980392156862, alpha: 1.0)
        case "XCompose":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "XML":
            self.init(red: 0.0, green: 0.3764705882352941, blue: 0.6745098039215687, alpha: 1.0)
        case "XML Property List":
            self.init(red: 0.0, green: 0.3764705882352941, blue: 0.6745098039215687, alpha: 1.0)
        case "XPages":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "XProc":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "XQuery":
            self.init(red: 0.3215686274509804, green: 0.19607843137254902, blue: 0.9058823529411765, alpha: 1.0)
        case "XS":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "XSLT":
            self.init(red: 0.9215686274509803, green: 0.5490196078431373, blue: 0.9215686274509803, alpha: 1.0)
        case "Xojo":
            self.init(red: 0.5058823529411764, green: 0.7411764705882353, blue: 0.2549019607843137, alpha: 1.0)
        case "Xonsh":
            self.init(red: 0.1568627450980392, green: 0.3686274509803922, blue: 0.9372549019607843, alpha: 1.0)
        case "Xtend":
            self.init(red: 0.1411764705882353, green: 0.1450980392156863, blue: 0.36470588235294116, alpha: 1.0)
        case "YAML":
            self.init(red: 0.796078431372549, green: 0.09019607843137255, blue: 0.11764705882352941, alpha: 1.0)
        case "YANG":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "YARA":
            self.init(red: 0.13333333333333333, green: 0.0, blue: 0.0, alpha: 1.0)
        case "YASnippet":
            self.init(red: 0.19607843137254902, green: 0.6705882352941176, blue: 0.5647058823529412, alpha: 1.0)
        case "Yacc":
            self.init(red: 0.29411764705882354, green: 0.4235294117647059, blue: 0.29411764705882354, alpha: 1.0)
        case "ZAP":
            self.init(red: 0.050980392156862744, green: 0.4, blue: 0.3686274509803922, alpha: 1.0)
        case "ZIL":
            self.init(red: 0.8627450980392157, green: 0.4588235294117647, blue: 0.8980392156862745, alpha: 1.0)
        case "Zeek":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "ZenScript":
            self.init(red: 0.0, green: 0.7372549019607844, blue: 0.8196078431372549, alpha: 1.0)
        case "Zephir":
            self.init(red: 0.06666666666666667, green: 0.5607843137254902, blue: 0.6196078431372549, alpha: 1.0)
        case "Zig":
            self.init(red: 0.9254901960784314, green: 0.5686274509803921, blue: 0.3607843137254902, alpha: 1.0)
        case "Zimpl":
            self.init(red: 0.8392156862745098, green: 0.4666666666666667, blue: 0.06666666666666667, alpha: 1.0)
        case "cURL Config":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "desktop":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "dircolors":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "eC":
            self.init(red: 0.5686274509803921, green: 0.2235294117647059, blue: 0.3764705882352941, alpha: 1.0)
        case "edn":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "fish":
            self.init(red: 0.2901960784313726, green: 0.6823529411764706, blue: 0.2784313725490196, alpha: 1.0)
        case "jq":
            self.init(red: 0.7803921568627451, green: 0.1450980392156863, blue: 0.3058823529411765, alpha: 1.0)
        case "mIRC Script":
            self.init(red: 0.23921568627450981, green: 0.3411764705882353, blue: 0.7647058823529411, alpha: 1.0)
        case "mcfunction":
            self.init(red: 0.8862745098039215, green: 0.1568627450980392, blue: 0.21568627450980393, alpha: 1.0)
        case "mupad":
            self.init(red: 0.1411764705882353, green: 0.28627450980392155, blue: 0.38823529411764707, alpha: 1.0)
        case "nanorc":
            self.init(red: 0.17647058823529413, green: 0.0, blue: 0.30196078431372547, alpha: 1.0)
        case "nesC":
            self.init(red: 0.5803921568627451, green: 0.6901960784313725, blue: 0.7803921568627451, alpha: 1.0)
        case "ooc":
            self.init(red: 0.6901960784313725, green: 0.7176470588235294, blue: 0.49411764705882355, alpha: 1.0)
        case "q":
            self.init(red: 0.0, green: 0.25098039215686274, blue: 0.803921568627451, alpha: 1.0)
        case "reStructuredText":
            self.init(red: 0.0784313725490196, green: 0.0784313725490196, blue: 0.0784313725490196, alpha: 1.0)
        case "robots.txt":
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        case "sed":
            self.init(red: 0.39215686274509803, green: 0.7254901960784313, blue: 0.4392156862745098, alpha: 1.0)
        case "wdl":
            self.init(red: 0.25882352941176473, green: 0.9450980392156862, blue: 0.9568627450980393, alpha: 1.0)
        case "wisp":
            self.init(red: 0.4588235294117647, green: 0.5098039215686274, blue: 0.8196078431372549, alpha: 1.0)
        case "xBase":
            self.init(red: 0.25098039215686274, green: 0.22745098039215686, blue: 0.25098039215686274, alpha: 1.0)
        default:
            self.init(red: 0.754, green: 0.754, blue: 0.754, alpha: 1.0)
        }
    }
}
