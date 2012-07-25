
use <body.scad>;
use <cutter.scad>;

CLEAR = 0.1;
BODY_THICKNESS = 6;
BODY_WIDTH = 100;
BODY_LENGTH = 320;
  
TEETHS_COUNT = 4;

teeths = [TEETHS_COUNT, 10, CLEAR];

module part0() {
    cutter([0, - BODY_LENGTH / (3 * 2), 0], [0, 0, 0], [BODY_WIDTH, BODY_LENGTH, BODY_THICKNESS], teeths, [300, 300, 10], false) {
        rotate([0, 0, 90]) body();
    }
}

module part1() {

    cutter([0, - BODY_LENGTH / (3 * 2), 0], [0, 0, 0], [BODY_WIDTH, BODY_LENGTH, BODY_THICKNESS], teeths, [300, 300, 10]) {
        rotate([0, 0, 90]) body();
    }

/*
    cutter(BODY_LENGTH / (3 * 2), [BODY_WIDTH, BODY_LENGTH, BODY_THICKNESS], [TEETHS_COUNT, 10, CLEAR], [300, 300, 10]) {
        rotate([0, 0, 90]) body();
    }

    cutter(BODY_LENGTH / (3 * 2), [BODY_WIDTH, BODY_LENGTH, BODY_THICKNESS], [TEETHS_COUNT, 10, CLEAR], [300, 300, 10], false) {
        rotate([0, 0, 90]) body();
    }
*/
}

module part2() {
    cutter([0, - BODY_LENGTH / (3 * 2), 0], [0, 0, 0], [BODY_WIDTH, BODY_LENGTH, BODY_THICKNESS], teeths, [300, 300, 10]) {
        rotate([0, 0, 90]) body();
    }
}

render() {
    //part0();
    part1();
    //part2();
};

