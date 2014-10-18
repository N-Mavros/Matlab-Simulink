%This program will be used to calculate derivatives, partial derivatives,
%and integrals based on user input

clear all
clc
while true
  %Below is all of the code the user wishes to repeat if they so choose.
  %The code being repeated is from "syms x y z" to the end of the first if
  %loop command.
  syms x y z
  disp('Basic Integration and Differentiation Program')
  disp('By: Nicholas C. Mavros')
  disp(' ')
  prompt = 'What is the original function? f = ';
  result = input(prompt);
  f = result
  disp('Would you like to...')
  disp('1. integrate');
  disp('2. derive');
  disp('3. partially differentiate');
  prompt = '';
  result = input(prompt);
  if (result == 1)
      int(f)
  elseif (result == 2)
      diff(f)
  elseif (result == 3)
      prompt =  'What variable would you like to derive with respect to?  ';
      result = input(prompt)
      if result == x
          diff(f,x)
      elseif result == y
          diff(f,y)
      elseif result == z
          diff(f,z)
      else
          break
      end
  end
  inp = input('Continue? (y/n) ', 's');
  if ~strcmp(inp, 'y')
    break;
  end
end
