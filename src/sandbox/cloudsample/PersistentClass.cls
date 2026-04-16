Class Sandbox.Cloudsample.PersistentClass Extends %Persistent
{

Property Value As %String(MAXLEN = 10000);

ClassMethod CreateRecord(ByRef id As %Integer) As %Status
{
    set obj = ..%New()
    set obj.Value = ##class(%Library.PopulateUtils).Company()
    set sc = obj.%Save()
    set id = obj.%Id()
    return sc
}

Storage Default
{
<Data name="PersistentClassDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Value</Value>
</Value>
</Data>
<DataLocation>^Sandbox.ClD62D.PersistentC1A93D</DataLocation>
<DefaultData>PersistentClassDefaultData</DefaultData>
<IdLocation>^Sandbox.ClD62D.PersistentC1A93D</IdLocation>
<IndexLocation>^Sandbox.ClD62D.PersistentC1A93I</IndexLocation>
<StreamLocation>^Sandbox.ClD62D.PersistentC1A93S</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
