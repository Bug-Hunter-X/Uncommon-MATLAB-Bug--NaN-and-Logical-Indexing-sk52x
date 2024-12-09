function result = myFunctionCorrected(input)
% This function demonstrates the solution to the uncommon MATLAB error:
% it explicitly handles NaN values during logical indexing.

if isnan(input)
    result = 0; % Handle NaN input explicitly
    return;
end

% Some calculation involving the input
intermediate = input.^2;

% Explicitly handle NaN before logical indexing
isNaNValue = isnan(intermediate);
intermediate(isNaNValue) = 0; % Replace NaN with a suitable value

% Logical indexing
logicalIndex = intermediate > 10;

% Now logical indexing is reliable because NaN values are treated
result = input(logicalIndex);
end