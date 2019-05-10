% Course: https://matlabacademy.mathworks.com/R2018b/portal.html?course=gettingstarted

% To calculate the velocity how much the star is away from earth
% A faint start HD 94028 in the constellation of Leo
% Variables loaded from 'electricy.mat'
% Name     : Size     : Description
% spectra  : 357 * 10 : evenly-spaced wavelengths data of different stars

% Clear variables
clc;
clear;

% Load data from .mat file
load('spectrum_data.mat', '-mat');

% Given observation data
% No of observation
no_observations = size(spectra, 1);
% Starting wavelength
lambdas_start = 630.02;
% Spacing between wavelength
lambdad_delta = 0.14;

% Calculate other required data from given data
lambda_end = lambdas_start + (no_observations - 1) * lambdad_delta;
% lambda (λ) containing the wavelengths in the spectrum, from λstart to λend, in steps of λdelta
lambda = [lambdas_start : lambdad_delta : lambda_end]';
% sixth column is the wavelength spectrum of star HD 94028
spectrum_data = spectra(: ,6);

% Plot wavelength spectrum to visualize the spike in spectrum
plot(lambda, spectrum_data, 'b.-');
grid on;
xlabel('Wavelength')
ylabel('Intensity')

[spectrum_Ha, idx] = min(spectrum_data);
lambda_for_Ha = lambda(idx);

