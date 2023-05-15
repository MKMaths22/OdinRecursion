# OdinRecursion
I followed The Odin Project's Recursion Assignment.

This project uses the MIT License.

For the Fibonacci functions, I introduced a guard clause using input_error method for both the iterative and recursive methods, fibs and fibs_rec respectively.

Although I could use one fewer line of code for fibs_rec, I decided to make fibs_rec quicker to run by having it only call the previous value (instead of the previous two values) and store that value in a variable 'previous' to extract the last two Fibonacci values from it and push their sum to the array.

For Merge Sort, the separate method merge(left, right) merges the pieces of the inputted array after it was split into two equal or almost equal pieces, which were themselves merge sorted.

To do the merging, the program compares the leftmost values of the two pieces and the lower one gets shifted out of its array and pushed onto the output. However, if one of the pieces has been completely emptied, its leftmost value will be 'nil', causing the comparison to throw an error. I solved this issue by adding dummy values to the ends of the two pieces, each of which is one higher than the highest (rightmost) value in the OTHER piece. This ensures that the dummy value would never be chosen for the output, since it is always greater than the value on the other side it is being compared to.

Both fibonacci.rb and merge_sort.rb include 'testing comments' which can be uncommented before running the programs, to see that they give the predicted output.
