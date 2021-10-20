# CAEmitterLayerDemo

----------------- Here’s a description of each property for CAEmitterLayer -----------------

	emitterShape - Defines where the emitted particles originate.
	emitterPosition - emitterShape defined by a subset of emitterPosition and emitterZPosition.
	emitterSize - Determines the initial velocity of the the size.
	emitterMode - Specify the size of the particle 
	renderMode - Use for how particle cells are rendered into the layer.

----------------- Here’s a description of each property for CAEmitterCell -----------------

	birthRate - It’s define the number of particles emitted per second.
	lifetime - Specify the number of seconds a particle will be visible on the screen.
	velocity - Initial velocity of the particle.
	velocityRange - The amount by which the velocity can vary.
	emissionLongitude - Specify the angle of emission.
	emissionRange - The amount by which the angle of emission can vary.
	spinRange - Specify the amount by which the spin of the particle can vary.
	scale - Applies magnification to the particle.
	scaleRange - Define the range of the magnification.
	alphaSpeed - Is the amount by which the particle’s alpha property will change over its lifetime.
	contents - Describes the image for the particle. In our case, it is a star icon.
