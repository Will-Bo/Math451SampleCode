% Using the Taylor's Theorem estimate of f'(x) for f(x) = e^(-2x)
% evaluated at x=0.5

x0 = 0.5; % starting value
f0 = e^(-2*x0); % original function
fp = -2 * e^(-2*x0); % this is the real derivative
i = -20:0.5:0; % generating `i` exponent values from -20 to 0.5
h = 10.^i; % exponentiating 10, this creates our scale for the axes
err = abs (fp - (e.^(-2*(x0+h)) - f0)./h); % calculating the difference between the real derivative and the approximation
d_err = (4*e^(-2*x0))/2*h; % this is the error that we __should__ be getting, according to math (from Taylor's theorem)

% Now we plot the data that we found!
loglog (h, err, '-*');
hold on
loglog (h,d_err,'r-.');
xlabel('h')
ylabel('Absolute error')
