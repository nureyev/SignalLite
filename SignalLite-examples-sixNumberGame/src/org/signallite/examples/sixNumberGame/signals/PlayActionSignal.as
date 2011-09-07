package org.signallite.examples.sixNumberGame.signals
{
    import org.signallite.SignalBase;

    public class PlayActionSignal extends SignalBase
    {
        //======================================================================
        //  Constructor
        //======================================================================
        public function PlayActionSignal(target:Object = null, value:int = 0)
        {
            super(target);
            _value = value;
        }
        //======================================================================
        //  Properties
        //======================================================================
        //------------------------------
        //  value
        //------------------------------
        private var _value:int;
        public function get value():int
        {
            return _value;
        }
        //======================================================================
        //  Public methods
        //======================================================================
        public function dispatch(value:int):void
        {
            _value = value;
            callListeners();
        }
    }
}