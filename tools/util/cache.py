
class cached_property(property):
    def __get__(self, instance, owner):
        try:
            return instance._cached_props[self]
        except AttributeError:
            instance._cached_props = {}
            instance._cached_props[self] = super(cached_property,
                                                 self).__get__(instance, owner)
            return instance._cached_props[self]
        except KeyError:
            instance._cached_props[self] = super(cached_property,
                                                 self).__get__(instance, owner)
            return instance._cached_props[self]
