<?php

namespace Shapes\Client\Shell;

function readInput(): string {
    echo "Your Answer >>> ";
    $user_input = fgets(STDIN);
    $user_input = FALSE !== $user_input ? strtolower(trim($user_input)) : "";
    readExit($user_input);

    return $user_input;
}

function readNumber(): float {
    while (TRUE) {
        $user_input = readInput();

        if (is_numeric($user_input)) {
            return (float) $user_input;
        }
        echo "Invalid number. Please try again." . PHP_EOL;
    }
}

function readExit(string $user_input): void {
    if ("exit" === $user_input || "e" === $user_input) {
        echo "Thank you for using the Shapes CLI!" . PHP_EOL;

        exit(0);
    }
}
