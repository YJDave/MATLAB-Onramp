load('spectrum_data.mat', '-mat');
nObs = size(spectra,1);
lambdaStart = 630.02;
lambdaDelta = 0.14;
lambdaEnd = lambdaStart + (nObs - 1) * lambdaDelta;

lambda = [lambdaStart:lambdaDelta:lambdaEnd]';

s = spectra(: ,6);

plot(lambda, s, 'b.-');
grid on;
xlabel('Wavelength')
ylabel('Intensity')

[sHa, idx] = min(s);
lambdaHa = lambda(idx);

