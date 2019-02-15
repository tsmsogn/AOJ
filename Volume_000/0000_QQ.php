<?php

foreach (range(1, 9) as $i) {
    foreach (range(1, 9) as $j) {
        echo "{$i}x{$j}=" . $i * $j . PHP_EOL;
    }
}
