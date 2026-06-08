// Trace this event.
__trace_event_once("Clean Up");

// Clean up infrastructure.
delete __traced_events;
__traced_events = undefined;
