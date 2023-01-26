Click [here]({{TRAFFIC_HOST1_2802}}) to access the Falcosidekick UI (use `admin:admin` to log in).
Notice that there is already one event.
Click on events to see the events detail.

![Scan results](../assets/falcosidekick_events.png)

### Event Generator

It is better to explore the Falcosidekick UI with more events.
Run the following command to use [event-generator](https://github.com/falcosecurity/event-generator) to generate a variety of suspect actions that are detected by Falco rulesets.
```bash
docker run -it --rm falcosecurity/event-generator run syscall --loop
```{{exec}}

Explore Falcosidekick UI.
Notice the different priorities and tags.
