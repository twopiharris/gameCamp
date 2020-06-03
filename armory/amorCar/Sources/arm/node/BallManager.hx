package arm.node;

@:keep class BallManager extends armory.logicnode.LogicTree {

	var functionNodes:Map<String, armory.logicnode.FunctionNode>;

	var functionOutputNodes:Map<String, armory.logicnode.FunctionOutputNode>;

	public function new() {
		super();
		name = "BallManager";
		this.functionNodes = new Map();
		this.functionOutputNodes = new Map();
		notifyOnAdd(add);
	}

	override public function add() {
		var _SetLocation = new armory.logicnode.SetLocationNode(this);
		var _OnEvent = new armory.logicnode.OnEventNode(this);
		_OnEvent.property0 = "reset";
		_OnEvent.addOutputs([_SetLocation]);
		_SetLocation.addInput(_OnEvent, 0);
		_SetLocation.addInput(new armory.logicnode.ObjectNode(this, ""), 0);
		var _Vector = new armory.logicnode.VectorNode(this);
		var _Random_Float_ = new armory.logicnode.RandomFloatNode(this);
		_Random_Float_.addInput(new armory.logicnode.FloatNode(this, -10.0), 0);
		_Random_Float_.addInput(new armory.logicnode.FloatNode(this, 10.0), 0);
		_Random_Float_.addOutputs([_Vector]);
		_Vector.addInput(_Random_Float_, 0);
		var _Random_Float__001 = new armory.logicnode.RandomFloatNode(this);
		_Random_Float__001.addInput(new armory.logicnode.FloatNode(this, -10.0), 0);
		_Random_Float__001.addInput(new armory.logicnode.FloatNode(this, 10.0), 0);
		_Random_Float__001.addOutputs([_Vector]);
		_Vector.addInput(_Random_Float__001, 0);
		_Vector.addInput(new armory.logicnode.FloatNode(this, 3.0), 0);
		_Vector.addOutputs([_SetLocation]);
		_SetLocation.addInput(_Vector, 0);
		_SetLocation.addOutputs([new armory.logicnode.NullNode(this)]);
		var _SendEvent = new armory.logicnode.SendEventNode(this);
		var _OnInit = new armory.logicnode.OnInitNode(this);
		_OnInit.addOutputs([_SendEvent]);
		_SendEvent.addInput(_OnInit, 0);
		_SendEvent.addInput(new armory.logicnode.StringNode(this, "reset"), 0);
		_SendEvent.addInput(new armory.logicnode.ObjectNode(this, ""), 0);
		_SendEvent.addOutputs([new armory.logicnode.NullNode(this)]);
		var _OnVolumeTrigger = new armory.logicnode.OnVolumeTriggerNode(this);
		_OnVolumeTrigger.property0 = "Enter";
		_OnVolumeTrigger.addInput(new armory.logicnode.ObjectNode(this, ""), 0);
		_OnVolumeTrigger.addInput(new armory.logicnode.ObjectNode(this, "Cube"), 0);
		_OnVolumeTrigger.addOutputs([new armory.logicnode.NullNode(this)]);
		var _SendEvent_001 = new armory.logicnode.SendEventNode(this);
		var _Keyboard = new armory.logicnode.MergedKeyboardNode(this);
		_Keyboard.property0 = "Started";
		_Keyboard.property1 = "r";
		_Keyboard.addOutputs([_SendEvent_001]);
		_Keyboard.addOutputs([new armory.logicnode.BooleanNode(this, false)]);
		_SendEvent_001.addInput(_Keyboard, 0);
		_SendEvent_001.addInput(new armory.logicnode.StringNode(this, "reset"), 0);
		_SendEvent_001.addInput(new armory.logicnode.ObjectNode(this, ""), 0);
		_SendEvent_001.addOutputs([new armory.logicnode.NullNode(this)]);
	}
}