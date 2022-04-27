import dbus
    
session_bus = dbus.SessionBus()
bus_object = session_bus.get_object('org.gnome.Mutter.IdleMonitor', '/org/gnome/Mutter/IdleMonitor/Core')
bus_interface = dbus.Interface(bus_object, 'org.gnome.Mutter.IdleMonitor')
print(int(bus_interface.GetIdletime() / 1000))