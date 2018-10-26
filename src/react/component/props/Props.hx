package react.component.props;

import react.ReactComponent;

// TODO: just move these to haxe-react
typedef Props = PropsWithChildren<react.ReactComponent.ReactFragment>;
typedef PropsWithChildren<C> = {
	@:optional var ref:Any->Void;
	@:optional var children:C;
	
	#if coconut_react 
	// @:optional var key(default, never):coconut.react.Key;
	#else
	@:optional var key:Dynamic;
	#end
}