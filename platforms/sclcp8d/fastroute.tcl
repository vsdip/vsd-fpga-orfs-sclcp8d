# Feasibility trial: use the full two-layer routing capacity.
set_global_routing_layer_adjustment metal1-metal2 0.0
set_routing_layers -signal metal1-metal2
set_routing_layers -clock metal1-metal2
