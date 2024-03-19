# Error Management Demo App

## Introduction

This all started with the introduction of the TryFunction procedures. We used that not only to handle exceptions back in NAV 2016 but also to observe and log execution complete with callstack information.

But Microsoft didn't stop there. The development team started introducing the concept of the Error Management framework starting (from what I can tell) BC14, and from there it matured into an important tool for the improvements in the various aspects of design for User Experience, from empowering users in handling exceptions, to enable support and ultimately the development teams to observe and detect the issues encountered during usage.

The framework can also take off some of the development load especially when designing processing reports, when stopping at the first exception encountered is not desirable and on the other hand a report on the exception is a requirement.

The Error Management is therefore one of the most essential frameworks to know and implement in your solutions.

## What can we see in the demo

The demo was first started for BC19. The "Error Messages" list looks quite a bit different since then. MS removed most of the original columns, I found them quite informative, but I guess the ruling was that this was still too much for the regular user. The new concept of providing a one-click suggested solution is not part of this demo, yet.

The concept of providing URLs pointing to pages providing in-depth explanation of the context seems also to be out of fashion but the demo still shows both how to provide custom links and how to use them.

You can try a simple exception harvesting with transaction breaks, a slightly more advanced harvesting of multiple issues per run, without transaction breaking.

You can also try breaking the execution at first encountered error.

These a simplified examples. Contexts can be nested per requirement. It is important where and when the error management codeunits are instantiated. I hope to find more time to cover these question in more detail.
