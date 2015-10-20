(TeX-add-style-hook
 "windows_dev_setup"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "11pt")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("inputenc" "utf8") ("fontenc" "T1") ("ulem" "normalem")))
   (TeX-run-style-hooks
    "latex2e"
    "article"
    "art11"
    "inputenc"
    "fontenc"
    "fixltx2e"
    "graphicx"
    "grffile"
    "longtable"
    "wrapfig"
    "rotating"
    "ulem"
    "amsmath"
    "textcomp"
    "amssymb"
    "capt-of"
    "hyperref")
   (LaTeX-add-labels
    "sec:orgheadline89"
    "sec:orgheadline23"
    "sec:orgheadline22"
    "sec:orgheadline2"
    "sec:orgheadline1"
    "sec:orgheadline13"
    "sec:orgheadline3"
    "sec:orgheadline4"
    "sec:orgheadline12"
    "sec:orgheadline5"
    "sec:orgheadline6"
    "sec:orgheadline7"
    "sec:orgheadline8"
    "sec:orgheadline11"
    "sec:orgheadline9"
    "sec:orgheadline10"
    "sec:orgheadline16"
    "sec:orgheadline14"
    "sec:orgheadline15"
    "sec:orgheadline19"
    "sec:orgheadline17"
    "sec:orgheadline18"
    "sec:orgheadline21"
    "sec:orgheadline20"
    "orgtarget1"
    "sec:orgheadline64"
    "sec:orgheadline38"
    "sec:orgheadline24"
    "sec:orgheadline25"
    "sec:orgheadline26"
    "sec:orgheadline27"
    "sec:orgheadline28"
    "sec:orgheadline29"
    "sec:orgheadline31"
    "sec:orgheadline30"
    "sec:orgheadline36"
    "sec:orgheadline32"
    "sec:orgheadline33"
    "sec:orgheadline34"
    "sec:orgheadline35"
    "sec:orgheadline37"
    "sec:orgheadline49"
    "sec:orgheadline39"
    "sec:orgheadline40"
    "sec:orgheadline41"
    "sec:orgheadline42"
    "sec:orgheadline43"
    "sec:orgheadline44"
    "sec:orgheadline47"
    "sec:orgheadline45"
    "sec:orgheadline46"
    "sec:orgheadline48"
    "sec:orgheadline50"
    "sec:orgheadline51"
    "sec:orgheadline52"
    "sec:orgheadline59"
    "sec:orgheadline53"
    "sec:orgheadline54"
    "sec:orgheadline55"
    "sec:orgheadline57"
    "sec:orgheadline56"
    "sec:orgheadline58"
    "sec:orgheadline63"
    "sec:orgheadline60"
    "sec:orgheadline61"
    "sec:orgheadline62"
    "sec:orgheadline83"
    "sec:orgheadline78"
    "sec:orgheadline68"
    "sec:orgheadline65"
    "sec:orgheadline66"
    "sec:orgheadline67"
    "sec:orgheadline69"
    "sec:orgheadline70"
    "sec:orgheadline73"
    "sec:orgheadline71"
    "sec:orgheadline72"
    "sec:orgheadline74"
    "sec:orgheadline75"
    "sec:orgheadline76"
    "sec:orgheadline77"
    "sec:orgheadline79"
    "sec:orgheadline80"
    "sec:orgheadline81"
    "sec:orgheadline82"
    "sec:orgheadline88"
    "sec:orgheadline84"
    "sec:orgheadline85"
    "sec:orgheadline86"
    "sec:orgheadline87")))
