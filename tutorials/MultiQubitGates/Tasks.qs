// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT license.

//////////////////////////////////////////////////////////////////
// This file is a back end for the tasks in the tutorial.
// We strongly recommend to use the Notebook version of the tutorial
// to enjoy the full experience.
//////////////////////////////////////////////////////////////////

namespace Quantum.Kata.MultiQubitGates {
    open Microsoft.Quantum.Intrinsic;
	open Microsoft.Quantum.Canon;

    operation CompoundGate (qs : Qubit[]) : Unit is Adj {
        S(qs[0]);
		Y(qs[2]);
    }

    operation BellState (qs : Qubit[]) : Unit is Adj {
    	H(qs[0]);
    	CNOT(qs[0], qs[1]);
    }

    operation QubitSwap (qs : Qubit[], index1 : Int, index2 : Int) : Unit is Adj {
        SWAP(qs[index1], qs[index2]);
    }

    operation ControlledRotation (qs : Qubit[], theta : Double) : Unit is Adj {
        Controlled Rx([qs[0]], (theta, qs[1]));
    }

    operation MultiControls (controls : Qubit[], target : Qubit, controlBits : Bool[]) : Unit is Adj {
		ControlledOnBitString(controlBits, X)(controls, target);
    }
}