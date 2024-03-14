% GSM A3_A8 Algorthim 
clear;
clc;
% A3 algorithm at Mobile Station

key_MS = input('Enter the 128 bit binary Key at Mobile Station: '); % 128-bit key
randNum = randi([0, 1], 1, 128);  % 128-bit random number

SRES_MS = xor(key_MS, randNum);

% Display A3 result
disp('A3 Result at Mobile Station - The first 32 bit is SRES :');
disp(SRES_MS);


% GSM A8 algorithm Mobile Station 
Kc_MS = xor(key_MS, randNum);

% Display A8 result
disp('A8 Result at Mobile Station - The last 54 bit appended with zeros is Kc :');
disp(Kc_MS);

%==========================================================================
% A3 algorithm at Subscriber Identification Module (SIM)

key_Sim = input('Enter the 128 bit binary Key at SIM : '); % 128-bit key

SRES_Sim = xor(key_Sim, randNum);

% Display A3 result
disp('A3 Result at Subscriber End- The first 32 bit is SRES :');
disp(SRES_Sim);

% GSM A8 algorithm Subscriber Identification Module (SIM)
Kc_Sim = xor(key_Sim, randNum);

% Display A8 result
disp('A8 Result at Subscriber End - The last 54 bit appended with zeros is Kc :');
disp(Kc_Sim);

%To check the authentication

if (SRES_MS==SRES_Sim)
    disp('Authentication Successful');
    else
    disp('Authentication Not Successful');
end