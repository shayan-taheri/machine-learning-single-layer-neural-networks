function w = simple_perceptron_k(x, y, bias, w=rand(size(x,2),1))
  f = 0;
  while f == 0
    f = 1;
    w
    for i = 1:size(x,1)
      d = signo((x(i,:) * w + bias));
      if d ~= y(i)
        w = w - (d - y(i))*x(i,:)';
        f = 0;
      end
    end
  end
end
