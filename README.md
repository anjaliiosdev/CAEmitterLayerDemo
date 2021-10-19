# CAEmitterLayerDemo

-----------------Here’s a description of each property for CAEmitterLayer:---------------------

	emitterShape  : specifies the emitter shape.
	emitterPosition : specify the relates position to the emitter shapes.
	emitterSize : specify the initial velocity of the particle.
	emitterMode : specify the size of the particle 
	renderMode :  specify how particle cells are rendered into the layer.
  
-----------------Here’s a description of each property for CAEmitterCell:---------------------

  	birthRate  : specify the number of particles emitted per second.
	lifetime : specify the number of seconds a particle will be visible on the screen.
	velocity : specify the initial velocity of the particle.
	velocityRange : specify the amount by which the velocity can vary.
	emissionLongitude : specify the angle of emission.
	emissionRange : specify the amount by which the angle of emission can vary.
	spinRange : specify the amount by which the spin of the particle can vary.
	scale : applies magnification to the particle.
	scaleRange : specify the range of the magnification.
	alphaSpeed : is the amount by which the particle’s alpha property will change over its lifetime.
	contents : describes the image for the particle. In our case, it is a star icon.
