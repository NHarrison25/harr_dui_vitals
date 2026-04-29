
# Vitals Indicator

The scripts run entirely on event handlers, as I have found this to be the most performant method. This does, however, require that the mod be running on every client for it to function properly.

I initially tried creating this as a clientside mod, but found that doing so would likely necessitate running a loop every second on the client to check the status of all group members, and I have a personal dislike of that method.

## When someone goes unconscious

* Their DUI icon is changed to a heartbeat symbol (radar, group list, and line compass)
* Any medic in their group that has the relevant setting toggled on will hear a beep sound (currently off by default)

## When someone wakes up

* Their DUI icon is cleared, returning it to their default symbol

## When someone dies

* Their DUI icon is cleared, returning it to their default symbol
