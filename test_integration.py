import subprocess

def test_full_program_output_and_exit_code():
    result = subprocess.run(["python3", "hello_world.py"], capture_output=True, text=True)
    assert result.stdout == "Hello, world!\n"
    assert result.returncode == 0