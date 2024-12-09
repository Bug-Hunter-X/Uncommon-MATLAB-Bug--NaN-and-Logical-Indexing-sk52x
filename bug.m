function result = myFunction(input)
% This function demonstrates an uncommon MATLAB error: unexpected behavior
% with logical indexing when dealing with NaN values.

if isnan(input)
    result = 0; % Handle NaN input explicitly
    return;
end

% Some calculation involving the input
intermediate = input.^2;

% Logical indexing
logicalIndex = intermediate > 10;

% This might surprisingly result in an empty array for certain NaN input
% values, even when we expect logicalIndex to contain at least one true
% element. This is due to how NaN values behave in comparisons. 
result = input(logicalIndex);
end