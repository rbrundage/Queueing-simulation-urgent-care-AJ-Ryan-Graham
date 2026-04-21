classdef Renege < Event
    % Renege Subclass of Event that represents a Customer leaving
    % the queue before being served.

    properties
        % Keep same structure as Departure (even if not all used)
        ServerIndex;
    end

    methods
        function obj = Renege(Time, ServerIndex)
            arguments
                Time = 0.0;
                ServerIndex = 0;
            end
            
            obj = obj@Event(Time);

            obj.ServerIndex = ServerIndex;
        end

        function varargout = visit(obj, other)
            % ONLY change required:
            [varargout{1:nargout}] = handle_renege(other, obj);
        end
    end
end