from hello_world import print_hello, print_world
from io import StringIO
import sys

def test_print_hello(monkeypatch):
    output = StringIO()
    monkeypatch.setattr(sys, 'stdout', output)
    print_hello()
    assert output.getvalue() == "Hello, "

def test_print_world(monkeypatch):
    output = StringIO()
    monkeypatch.setattr(sys, 'stdout', output)
    print_world()
    assert output.getvalue() == "world!\n"
