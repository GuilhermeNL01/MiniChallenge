//
//  File.swift
//  
//
//  Created by Guilherme Nunes Lobo on 08/12/23.
//

import AVFoundation

func requestMicrophonePermission() {
    AVAudioSession.sharedInstance().requestRecordPermission { granted in
        if granted {
            print("Permissão concedida")
        } else {
            print("Permissão negada")
        }
    }
}
