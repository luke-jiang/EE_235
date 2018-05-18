% ADD FUNCTION HEADER COMMENTS
function [y, t] = timeshift(x, Fs, t0)

   % Create a vector of zeros to be inserted at the beginning or end
   % of the input signal x depending on the time shift
   nz = ceil(abs(t0) * Fs + 1);
   z = zeros(nz, 1);
   % Perform time shifting operation, produce sound vector y and compute
   % the corresponding time samples vector t
   if t0 >= 0          % Time shift right 
        
        % FILL IN LINES OF CODE HERE
        y = [z;x];
        t = (0:length(y)-1)*(1/Fs);
    else                % Time shift left
        
        % FILL IN LINES OF CODE HERE
        y = [x;z];
        t = (0:length(y)-1)*(1/Fs) + t0;
    end
    
end
