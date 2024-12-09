function sorted = quickSort(arr)
    if length(arr) <= 1 then
        sorted = arr; // If the array has 1 or 0 elements, it's already sorted
    else
        pivot = arr(1); // Choose the first element as the pivot
        left = arr(arr < pivot); // Elements less than the pivot
        right = arr(arr > pivot); // Elements greater than the pivot
        equal = arr(arr == pivot); // Elements equal to the pivot
        // Recursively sort left and right partitions, and concatenate results
        sorted = [quickSort(left), equal, quickSort(right)];
    end
end

// Main Program
clc;
disp("Quick Sort Algorithm");

n = input("Enter the size of the array (n): ");
randomArray = grand(1, n, "uin", 1, 100); // Generate random array
disp("Generated Array: " + string(randomArray));

sortedArray = quickSort(randomArray); // Perform quick sort
disp(sortedArray);
