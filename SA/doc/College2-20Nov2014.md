# Notes

## Software Architecture Document (SAD)

The Architectural Description (AD) includes UML diagrams.

Architecture is about defining __many__ structures.

The information structure (e.g. data representation) must be consistent with the functional structure (e.g. queries).

## Views & Viewpoints

A view is represented through UML models.

Not all viewpoints have to be represented through views.

The most common 'standard' viewpoint is the RUP 4+1 viewpoint set (catalog).

The 4+1 model by [Philippe Kruchten](http://en.wikipedia.org/wiki/4%2B1_architectural_view_model).

The [Rozanski & Woods](http://www.viewpoints-and-perspectives.info/home/viewpoints/) perspective has __six__ viewpoints.

## RUP 4+1 Viewpoints

Defining the interaction between the user and the system defines the Use Cases.

A Use Case Diagram can have multiple Use Case Descriptions.

The system (functional structure) will be broken down into multiple fundamental pieces (components, etc.).

Sequence diagrams belong to the logical view.

Sequence diagrams that show concurreny belong to the concurrency view.

The implementation and deployment views can overlap in defining the relations between elements (e.g. servers).

The logical view defines behaviour, such as CRON jobs.

An ERD (packages) belongs to the implementation view.

A graphical mockup belongs to the logical view. Can also be added as a Use Case (e.g. as attachment).

Defining layers happens in de logical view.

## R&W Viewpoint Set

See slide 37.

Adds to views. The other views are practically the same.

