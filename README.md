This simple Pharo app displays the titles of all songs where the Italian cantautrice (singer-songwriter) Alice (Carla Bissi) has a writing credit, either for music or lyrics or both.

Obviously, it does not list the many tracks where Alice has sung songs not written or co-written by herself.

The data comes from the Italian website 

https://servizionline.siae.it/it/archivioOpere/

This is an official organisation for claiming royalties so should be more accurate than the credits given on Wikipedia pages or even on album sleeves themselves. 

It is also an example of how the Spec2 framework can build an interface with very little code. 

Written in Pharo 13.

Install with: 

Metacello new
	repository: 'github://voxkmp/AliceCreditsApp:main/src';
	baseline: 'AliceCreditsApp';
	load

Run with:

AliceCreditsApp new run.
