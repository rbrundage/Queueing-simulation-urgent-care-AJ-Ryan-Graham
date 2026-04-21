classdef Renege < Event
    % Renege Subclass of Event that represents a Customer leaving
    % the queue before being served.

    properties
        % Customer tied to this reneging event
        Customer;
    end

    methods
        function obj = Renege(Time, Customer)
            arguments
                Time = 0.0;
                Customer = [];
            end
            
            obj = obj@Event(Time);
            obj.Customer = Customer;
        end

        function varargout = visit(obj, other)
            [varargout{1:nargout}] = handle_renege(other, obj);
        end
    end
end