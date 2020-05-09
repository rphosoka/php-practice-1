<?php

$member_ages = array(54,3,23,5,53,34,3,21,22,24,19);

$age1 = ""; // 20歳未満
$age2 = ""; // 20歳以上40歳未満
$age3 = ""; // 40歳以上

foreach ($member_ages as $age) {
    if ($age < 20) {
        $age1 .= $age . ",";
    } elseif ($age >= 20 && $age < 40) {
        $age2 .= $age . ",";
    } else {
        $age3 .= $age . ",";
    }
}

echo "20未満：{$age1}";
echo "<br>";
echo "20以上40未満：{$age2}";
echo "<br>";
echo "40以上：{$age3}";
echo "<br>";