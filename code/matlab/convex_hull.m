%% Graham's scan

% 14. \textbf{return} $\mathcal{L}$
function L = convex_hull(P)

% 1. Sort the points by $x-$coordinate, resulting in a sequence
% $p_1,...,p_n$.
Ps = sortrows(P,2);     % sort points by y-value
Ps = sortrows(Ps,1);    % sort points by x-value

% X. Remove duplicate points
for c = length(Ps):-1:2
    if isequal(Ps(c,:),Ps(c-1,:)), Ps(c,:) = []; end
end

% 2. Put the points $p_1$ and $p_2$ in a list $\mathcal{L}_{upper}$, with
% $p_1$ as the first point.
Lu = Ps(1:2,:);

% 3. \textbf{for} $ii \leftarrow 3$ \textbf{to} $n$
for ii = 3:length(Ps)
    % 4. \textbf{do} Append $p_i$ to $\mathcal{L}_{upper}$.
    Lu = [Lu;Ps(ii,:)];         
    % 5.1 \textbf{while} $\mathcal{L}_{upper}$ contains more than 2 points
    while length(Lu) > 2 
        p1 = [Lu(end-2,:),0];
        p2 = [Lu(end-1,:),0];
        p3 = [Lu(end,:),0];     
        % 5.2 \textbf{while} the last 3 points in $\mathcal{L}_{upper}$ do
        % not make a right turn.
        c = cross(p3-p1,p2-p1); 
        % 6. \textbf{do} Delete the middle of the last three points from
        % $\mathcal{L}_{upper}$.
        if c(3) <= 0
            Lu(end-1,:) = [];   
        else
            break
        end
    end
end

% 7. Put the points $p_n$ and $p_{n-1}$ in a list $\mathcal{L}_{lower}$,
% with $p_n$ as the first point.
Ll = [Ps(end,:);Ps(end-1,:)];   

% 8. \textbf{for} $ii \leftarrow n-2$ \textbf{downto} $1$
for ii = 3:length(Ps)
    % 9. \textbf{do} Append $p_i$ to $\mathcal{L}_{lower}$.
    Ll = [Ll;Ps(end-ii+1,:)];   % add next point to set
    % 10.1 \textbf{while} $\mathcal{L}_{lower}$ contains more than 2 points
    while length(Ll) > 2 
        p3 = [Ll(end,:),0];
        p2 = [Ll(end-1,:),0];
        p1 = [Ll(end-2,:),0];
        % 10.2 \textbf{while} the last 3 points in $\mathcal{L}_{lower}$ do
        % not make a right turn.
        c = cross(p3-p1,p2-p1);
        % 11. \textbf{do} Delete the middle of the last 3 points from
        % $\mathcal{L}_{lower}$.
        if c(3) <= 0
            Ll(end-1,:) = [];
        else
            break
        end
    end
end

% 12. Remove the first and the last point from $\mathcal{L}_{lower}$ to
% avoid duplication of the points where the upper and lower hull meet.
Ll(1,:) = []; Ll(end,:) = [];

% 13. Append $\mathcal{L}_{lower}$ to $\mathcal{L}_{upper}$, and call the
% resulting list $\mathcal{L}$.
L = [Lu;Ll];