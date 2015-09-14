PyVSO
=====

Python API for interaction with Visual Studio Online API

Example
-------

```python

    #!/usr/bin/env python

    import sys
    import logging

    import vso

    logging.basicConfig(level=logging.DEBUG, format="%(asctime)s [%(levelname)-4.4s] %(name)s: %(message)s")

    api = vso.api.VSOApi(account='vso_account', user='user', password='get_token_from_security_tab_at_vso_profile')

    #getting work item by id
    wit = vso.wit.Wit(id=333761)

    # Wit class emulates Dict object with work item fields as keys
    wit['System.Description'] += '<br /> Hello from PyVSO!'
    # but also has some sugar for common tasks
    wit.add_tag("test_tag")
    wit.add_comment("Added some tag")
    # as in VSO interface, do not forget to save you work item after making changes
```
