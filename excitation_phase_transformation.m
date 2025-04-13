clear all;
object_phase = textread('designed_excitation_phase.txt','%f');
[Data(:,1),Data(:,2),Data(:,3)] = textread('unit_phase.txt','%f%f%f','headerlines',3);
unit_angle = Data(:,1);
unit_amplitude = Data(:,2);
unit_phase = Data(:,3);
num_phase = length(object_phase);
num_angle = length(unit_angle);
fact_angle = zeros(num_phase,1);
fact_phase = zeros(num_phase,1);
for ii = 1:num_phase
    for jj = 1:num_angle
        if abs(object_phase(ii) - unit_phase(jj))<=0.5
            fact_angle(ii) = unit_angle(jj);
            fact_phase(ii) = unit_phase(jj);
        else if abs(object_phase(ii) - unit_phase(jj))<=1.0
            fact_angle(ii) = unit_angle(jj);
            fact_phase(ii) = unit_phase(jj);
        else if abs(object_phase(ii) - unit_phase(jj))<=1.5
            fact_angle(ii) = unit_angle(jj);
            fact_phase(ii) = unit_phase(jj);
            end
            end
        end
    end
end