function obj = calcError(obj)
    % Error metrics from Chapman et al., 
    % Vol. 23, No. 5/May 2006/J. Opt. Soc. Am. A
    
    %% Real Space
    
    obj.errors(1,obj.nTotal) = norm( obj.ws.*(obj.support==false), 'fro') ...
        / norm(obj.ws.*(obj.support==true), 'fro');
    
    if ~isempty(obj.simScene)
        obj.errors(2,obj.nTotal) = min([
            norm( obj.ws - obj.simScene, 'fro'), ...
            norm( obj.ws - obj.simSceneFlipped, 'fro') ...
            ]) / norm((obj.simScene), 'fro');
    end
    
    %% Fourier Space
    
        obj.errors(3,obj.nTotal) = norm( ( abs(obj.W)-abs(obj.AMP0) ) .*obj.MASK, 'fro') ...
        / norm(obj.AMP0.*obj.MASK, 'fro');
end
