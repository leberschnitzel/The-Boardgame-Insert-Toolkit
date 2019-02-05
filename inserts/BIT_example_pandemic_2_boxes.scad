
include <../boardgame_insert_toolkit_lib.scad>;


// This is a working example of the Boardgame Insert Toolkit used to create a two box insert
// for the Z-Man game, Pandemic. It is designed for a printer that can print 170mm x 210mm x 28mm.
// See the one box version for an example of a design for larger printers.
// 

data =
[
    [   "card box",
        [
            [ "box_dimensions",                             [168.0, 210.0, 28.0] ],                       // float f -- default:[ 100, 100, 100]
            [ "enabled",                                    true ],

            [   "components",
                [
                    [   "cards",
                        [
                            ["type",                        "cards"],                   // "cards" | "chits" | "generic" -- default: "generic"
                            ["compartment_size",            [ 80.0, 50.0, 20.0] ],      // float f -- default:[ 10, 10, 10]
                            ["num_compartments",            [2, 3] ],                   // int i -- default: [1, 1]
                            ["enabled",                     true ],                     // true | false
                            ["rotation",                    0 ],                        // 0 | 1 | -1

                        ]
                    ],
                ]
            ]
        ]
    ],

    [   "chits box",
        [
            [ "box_dimensions",                             [118.0, 210.0, 28.0] ],                       // float f -- default:[ 100, 100, 100]
            [ "enabled",                                    true ],

            [   "components",
                [
                    [   "disease markers",
                        [
                            ["enabled",                     true ],                     // true | false
                            ["type",                        "chits"],
                            ["compartment_size",            [ 45.0, 45.0, 10.0] ],
                            ["num_compartments",            [1, 4] ],
                            ["position",                    [10, "center"] ],
                        ]
                    ],

                    [   "other bits",
                        [
                            ["enabled",                     true ],                     // true | false
                            ["type",                        "chits"],
                            ["compartment_size",            [ 40.0, 50.0, 10.0] ],
                            ["num_compartments",            [1, 3] ],
                            ["position",                    [65, "center"] ],
                            ["extra_spacing",               [0, 10] ]
                        ]
                    ]
                ]
            ]
        ]
    ]
];


// for printing control.
b_print_lid = true;
b_print_box = true;

//b_print_box = "card box"; // isolate one box to print

MakeAll();
