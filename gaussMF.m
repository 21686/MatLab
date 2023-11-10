function func = gaussMF(x, a, sigmaG)
    func = exp(-((x-a)/sigmaG).^2);
end

