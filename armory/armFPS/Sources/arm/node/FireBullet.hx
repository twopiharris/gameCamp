package arm.node;

@:keep class FireBullet extends armory.logicnode.LogicTree {

	var functionNodes:Map<String, armory.logicnode.FunctionNode>;

	var functionOutputNodes:Map<String, armory.logicnode.FunctionOutputNode>;

	public function new() {
		super();
		this.functionNodes = new Map();
		this.functionOutputNodes = new Map();
		notifyOnAdd(add);
	}

	override public function add() {
		var _PlaySpeaker = new armory.logicnode.PlaySoundNode(this);
		var _OnMouse = new armory.logicnode.OnMouseNode(this);
		_OnMouse.property0 = "Started";
		_OnMouse.property1 = "left";
		var _SpawnObject = new armory.logicnode.SpawnObjectNode(this);
		_SpawnObject.addInput(_OnMouse, 0);
		_SpawnObject.addInput(new armory.logicnode.ObjectNode(this, "bullet"), 0);
		var _GetTransform = new armory.logicnode.GetTransformNode(this);
		_GetTransform.addInput(new armory.logicnode.ObjectNode(this, "gun"), 0);
		_GetTransform.addOutputs([_SpawnObject]);
		_SpawnObject.addInput(_GetTransform, 0);
		_SpawnObject.addInput(new armory.logicnode.BooleanNode(this, true), 0);
		var _ApplyImpulse = new armory.logicnode.ApplyImpulseNode(this);
		_ApplyImpulse.addInput(_SpawnObject, 0);
		_ApplyImpulse.addInput(_SpawnObject, 1);
		_ApplyImpulse.addInput(new armory.logicnode.VectorNode(this, 0.0, 20.0, 0.0), 0);
		_ApplyImpulse.addInput(new armory.logicnode.BooleanNode(this, true), 0);
		var _Sleep = new armory.logicnode.SleepNode(this);
		_Sleep.addInput(_ApplyImpulse, 0);
		_Sleep.addInput(new armory.logicnode.FloatNode(this, 2.0), 0);
		var _RemoveObject = new armory.logicnode.RemoveObjectNode(this);
		_RemoveObject.addInput(_Sleep, 0);
		_RemoveObject.addInput(_SpawnObject, 1);
		_RemoveObject.addOutputs([new armory.logicnode.NullNode(this)]);
		_Sleep.addOutputs([_RemoveObject]);
		_ApplyImpulse.addOutputs([_Sleep]);
		_SpawnObject.addOutputs([_ApplyImpulse]);
		_SpawnObject.addOutputs([_ApplyImpulse, _RemoveObject]);
		_OnMouse.addOutputs([_SpawnObject, _PlaySpeaker]);
		_PlaySpeaker.addInput(_OnMouse, 0);
		_PlaySpeaker.addInput(new armory.logicnode.ObjectNode(this, "pew"), 0);
		_PlaySpeaker.addOutputs([new armory.logicnode.NullNode(this)]);
	}
}