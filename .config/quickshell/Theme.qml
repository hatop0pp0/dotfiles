pragma Singleton
import QtQuick

QtObject {
    readonly property color base00: "#e1d6a9"
    readonly property color base01: "#ebdbb2"
    readonly property color base02: "#d5c4a1"
    readonly property color base03: "#bdae93"
    readonly property color base04: "#665c54"
    readonly property color base05: "#504945"
    readonly property color base06: "#3c3836"
    readonly property color base07: "#282828"
    readonly property color base08: "#9d0006"
    readonly property color base09: "#af3a03"
    readonly property color base0A: "#b57614"
    readonly property color base0B: "#79740e"
    readonly property color base0C: "#427b58"
    readonly property color base0D: "#076678"
    readonly property color base0E: "#8f3f71"
    readonly property color base0F: "#d65d0e"

    readonly property color bg: base00
    readonly property color bgDim: base01
    readonly property color bgHover: base02
    readonly property color bgFocus: base03
    readonly property color fg: base07
    readonly property color fgMuted: base04
    readonly property color fgDim: base05
    readonly property color fgFocus: base06

    readonly property color red: base08
    readonly property color orange: base09
    readonly property color yellow: base0A
    readonly property color green: base0B
    readonly property color cyan: base0C
    readonly property color blue: base0D
    readonly property color purple: base0E
    readonly property color brown: base0F

    readonly property color highlight: base00
    readonly property color shadow: base07
    readonly property color border: base03
    readonly property color selection: base0D

    readonly property color launcherBg: base07
    readonly property color launcherPrompt: base0B
    readonly property color launcherText: base01
    readonly property color launcherSelectBlue: base0D

    readonly property color clipboardBg: base07
    readonly property color clipboardPrompt: base0B
    readonly property color clipboardText: base01

    readonly property color topbarBg: base07
    readonly property color topbarWidgetBg: base07
    readonly property color topbarSliderBg: base07
    readonly property color topbarClockBg: base07
}
