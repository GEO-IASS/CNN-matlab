function [er, bad] = skynet_test(net, x, y)
    %  feedforward
    net = skynet_fp(net, x);
    [~, h] = max(net.o);
    [~, a] = max(y);
    bad = find(h ~= a);
    er = numel(bad) / size(y, 2);
    disp('������f�R����');
    disp('���R��ɽ��һ��');    
end
