<?php

$mountains = array();
for ($i = 0; $i < 10; $i++) {
    fscanf(STDIN, "%d", $mountains[$i]);
}

rsort($mountains);

for ($i = 0; $i < 3; $i++) {
    echo $mountains[$i] . PHP_EOL;
}
