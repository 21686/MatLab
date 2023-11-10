function func = bellMF(x, a, sigmaG)
    func = (1 ./ (1 + sigmaG^2 * (x - a).^2));
end
