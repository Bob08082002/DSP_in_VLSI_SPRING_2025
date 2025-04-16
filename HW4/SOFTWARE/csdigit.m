function [csdDigits, posPart, negPart, approximationError] = csdigit(inputNumber, bitRange, fracBits)

    if nargin < 1
        help csdigit;
        return
    end
    if nargin < 2
        bitRange = ceil(log(abs(inputNumber)) / log(2)) + 1;
    end
    if nargin < 3
        fracBits = 0;
    end

    originalNumber = inputNumber;
    scaledAbsNumber = abs(inputNumber) / (2 ^ (-fracBits));
    scaledAbsNumber = floor(scaledAbsNumber);

    binaryString = dec2bin(scaledAbsNumber, bitRange + fracBits);
    csdArray = repmat('0', size(binaryString));

    oneIndices = find(binaryString == '1');

    if ~isempty(oneIndices)
        runOfOnes = find(diff(oneIndices) == 1);

        while ~isempty(runOfOnes)
            consecutiveOnePos = runOfOnes(end) + 1;
            addBitIndex = oneIndices(consecutiveOnePos);

            % Generate a binary adder string with 1 at addBitIndex
            adder = repmat('0', size(binaryString));
            adder(addBitIndex) = '1';

            % Mark as negative digit
            csdArray(addBitIndex) = '-';

            % Add adder to binaryString
            binaryString = dec2bin(bin2dec(binaryString) + bin2dec(adder), bitRange + fracBits);

            % Update oneIndices and runOfOnes after addition
            oneIndices = find(binaryString == '1');
            runOfOnes = find(diff(oneIndices) == 1);

            % If length grew, pad csdArray accordingly
            if length(binaryString) > length(csdArray)
                csdArray = ['0', csdArray];
            end
        end
    end

    posPart = bin2dec(binaryString) * 2^(-fracBits);

    negIndices = find(csdArray == '-');
    negBinaryArray = repmat('0', size(binaryString));
    negBinaryArray(negIndices) = '1';
    negPart = bin2dec(char(negBinaryArray)) * 2^(-fracBits);

    csdArray(oneIndices) = '+';

    % Pad with zeros if too short
    if length(csdArray) < fracBits
        csdArray = [csdArray, repmat('0', 1, fracBits - length(csdArray))];
    end

    % Add binary point
    csdDigits = char([csdArray(1:end - fracBits), '.', csdArray(end - fracBits + 1:end)]);

    % Flip signs if the original number was negative
    if originalNumber < 0
        temp = negPart;
        negPart = posPart;
        posPart = temp;

        csdDigits = strrep(csdDigits, '+', 'p');
        csdDigits = strrep(csdDigits, '-', '+');
        csdDigits = strrep(csdDigits, 'p', '-');
    end

    approximationError = originalNumber - (posPart - negPart);
end