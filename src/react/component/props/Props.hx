package react.component.props;

import react.ReactComponent;

typedef Props = {
	?ref:Any->Void,
	?children:Children,
	?key:Dynamic,
}

@:coreType abstract Children from Array<Child> from Child {
	public var length(get, never):Int;
		function get_length()
			return 
				if (Std.is(this, Array)) (cast this:Array<Dynamic>).length;
				else 1;
	@:arrayAccess function get(index:Int):Child
		return
			if (Std.is(this, Array)) (cast this:Array<Dynamic>)[index];
			else cast this;
}
@:coreType abstract Child from Bool from String from Int from Float from ReactElement #if coconut_react from coconut.react.ReactChild #end {}
