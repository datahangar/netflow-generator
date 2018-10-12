flowgen
=======

Code modified from the original of Motonori Shindo in https://github.com/mshindo/NetFlow-Generator.

The purpose of the modifications were done to use flowgen to **scale** test netflow collectors, such as [pmacct](https://github.com/pmacct/pmacct). 

Please read the original repository for instructions.

Changes
------
* Added two extra ways of defining values for flow characteristics:
	* Using a comma (,) for defining a list of values.
	* Using %%file[line] to define a file and a line from which the number specification should be read.
* Added an option to specify a local IP (localipadd) from which packets should be originated.
* Added an option to not print flow generation report.

In [this repo](https://github.com/jccardonar/generator_for_flowgen), one can find a python script that generates specific calls to flowgen for simulating traffic from a larger, random, network.

License
-------
GNU General Public License, version 2 (GPL-2.0)





