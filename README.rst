###########
userxinitrc
###########

Custom script and .desktop file to allow direct running from a normal DM
(e.g. GDM) of the traditional .xinitrc file.

Also related: `AUR xinit-xsession
<https://aur.archlinux.org/cgit/aur.git/?h=xinit-xsession>`_.

Installation
============

To install, simply run

::

	sudo make install

Then, restart your display manager (e.g. by doing a reboot) for the
changes to take effect.

Environment variables
=====================

You can set these environment variables if necessary:

* ``PREFIX``: to install to somewhere other than ``/usr/local/bin``,
  e.g.  if you want to install to ``/my/dir/bin``, use
  ``PREFIX=/my/dir sudo make install``.
* ``XSESSION``: to install the .desktop file to somewhere other than
  ``/usr/share/xsessions``, e.g. if you want to install to
  ``/my/dir/xsessions``, use ``XSESSION=/my/dir/xsessions sudo make
  install``.

Uninstallation
==============

To uninstall, remove the files ``/usr/local/bin/userxinitrc`` and
``/usr/share/xsessions/xinitrc.desktop``.
