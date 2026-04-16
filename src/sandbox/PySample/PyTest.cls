Class Sandbox.PySample.PyTest
{

/// Simple ObjectScript wrapper to call the embedded Python demo.
ClassMethod RunDemo() As %String
{
    quit ..PythonDemo()
}

/// Demo method implemented in embedded Python.
ClassMethod PythonDemo() As %String [ Language = python ]
{
    import platform
    from datetime import datetime, timezone

    python_version = platform.python_version()
    timestamp = datetime.now(timezone.utc).strftime("%Y-%m-%d %H:%M:%S UTC")

    return f"Embedded Python demo works. Python {python_version}, time {timestamp}"
}

}
