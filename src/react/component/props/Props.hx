package react.component.props;

import react.ReactComponent;

// TODO: just move these to haxe-react
typedef Props = PropsWithChildren<react.ReactComponent.ReactFragment>;
typedef PropsWithChildren<C> = {
	?ref:Any->Void,
	?children:C,
	?key: #if coconut_react coconut.react.Key #else Dynamic #end,
}