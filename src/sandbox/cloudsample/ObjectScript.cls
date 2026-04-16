Class Sandbox.Cloudsample.ObjectScript
{

ClassMethod HelloWorld(name As %String = "") As %Status
{
    if (name = "") {
        set name =  "World"
    } 
    write "Hello " _ name _ "!"

    write !!
    write "This is InterSystems IRIS with version ",$zv,!
    write "Current time is: "_$zdt($now(),3,,6),!
    return $$$OK
}

}
