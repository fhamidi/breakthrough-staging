// Inherit parent event.
event_inherited();

// The struct holding the events we have already traced.
__traced_events = {};

// Trace this event.
__trace_event_once("Create");

/**
 * Traces specified event for this instance in the debug log.
 * Specified event won't be traced for this instance ever again.
 * @param {string} event The event to trace.
 */
function __trace_event_once(event)
{
    var _hash = variable_get_hash(event);
    if (is_undefined(struct_get_from_hash(__traced_events, _hash))) {
        // This is the first time this event is traced.
        show_debug_message($"|EVENTS      | {id} {event}");
        struct_set_from_hash(__traced_events, _hash, event);
    }
}
