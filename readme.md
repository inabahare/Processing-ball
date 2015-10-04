# Processing Ball
This is just for myself so that I can remember what happens

## Methods
All the ones prefixed with "set" are to be used when

### construct(id, mass)
A unique ID is passed in to help displaying text for debugging

### .applyForce(force)
The argument passed is a vector
This method is optional, but nice to have anyway

### applyFriction(frictionMagnitude)
This method takes the magnitude of the friction and calculates the friction from that. Optional, but nice to have.

(And it's essentially an extended version of the setStart(), but shh)

### .setstart(startX, startY)
I think this one gives itself away. Sets the startposision according to the variables passed. Both are floats.

### .setVel(startVelX, startVelY)
Sets the start velocity

### .setSize(diameter)
Set the size of the circle

### .detectEdges()
Detects the edges

### .move();
Calculates the movement of the ball

### .run();
Creates the ellipse
