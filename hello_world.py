def print_hello() -> None:
    """Prints the first part of the greeting."""
    print("Hello, ", end="")  # No newline or extra spacing

def print_world() -> None:
    """Prints the second part of the greeting, ending with a newline."""
    print("world!")

def main() -> int:
    """Main entry point: prints the full greeting using two functions."""
    print_hello()
    print_world()
    return 0

if __name__ == "__main__":
    import sys
    sys.exit(main())