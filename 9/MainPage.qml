/*******************************************************************************
**
** Copyright (C) 2022 Open Mobile Platform LLC.
** Contact: https://community.omprussia.ru/open-source
**
** This file is part of the Aurora OS Application Template project.
**
** Redistribution and use in source and binary forms,
** with or without modification, are permitted provided
** that the following conditions are met:
**
** * Redistributions of source code must retain the above copyright notice,
**   this list of conditions and the following disclaimer.
** * Redistributions in binary form must reproduce the above copyright notice,
**   this list of conditions and the following disclaimer
**   in the documentation and/or other materials provided with the distribution.
** * Neither the name of the copyright holder nor the names of its contributors
**   may be used to endorse or promote products derived from this software
**   without specific prior written permission.
**
** THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
** AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
** THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
** FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
** IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
** FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY,
** OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
** PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
** LOSS OF USE, DATA, OR PROFITS;
** OR BUSINESS INTERRUPTION)
** HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
** WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
** (INCLUDING NEGLIGENCE OR OTHERWISE)
** ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
** EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
**
*******************************************************************************/

import QtQuick 2.0
import Sailfish.Silica 1.0
import QtQuick.Particles 2.0

import QtMultimedia 5.6
//import QtMultimedia 5.4
//import QtMultimedia 5.0

Page {
    objectName: "mainPage"
    allowedOrientations: Orientation.All












//1

//    Canvas{
//        width: parent.width
//        height: parent.height/2
//        onPaint: {
//            var ctx = getContext("2d");
//            ctx.fillStyle = Qt.rgba(0,0.3,1,1);
//            ctx.fillRect(0,0,width,height);

//            ctx.fillStyle = Qt.rgba(0,1,0,1);
//            ctx.fillRect(0,height*0.65,width,height);

//            ctx.fillStyle = Qt.rgba(0.5  ,0.3  ,0.1  ,1);
//            ctx.fillRect(width/3,height/3,width/3,height/2.5);

//            ctx.fillStyle = "brown";
//            ctx.fillRect(width*0.57,height*0.15,width*0.05,height/5);

//            ctx.lineWidth = 4;
//            ctx.fillStyle = Qt.rgba(0.5  ,0.4  ,0.2  ,1);
//            ctx.beginPath();
//            ctx.moveTo(width/2,height/5);

//            ctx.lineTo(width*0.25,height/2.5);

//            ctx.lineTo(width*0.75,height/2.5);

//            ctx.closePath();
//            ctx.fill();


//        }

//    }






    //2

//    SequentialAnimation{
//        ScriptAction{script: image.goalSprite="run"}

//        NumberAnimation {
//            target: image
//            property: "x"
//            to:500
//            duration: 6000

//        }

////        PropertyAction {
////            target: image; property: "x"
////            value: 0
////        }
//    }
//    NumberAnimation {
//        target: image
//        property: "x"
//        to:500
//        duration: 6000

//    }

//SpriteSequence{
//  id:image
//width: 200
//height: 200
////x:100*5
////anchors.left: parent.left
////anchors.leftMargin: 100
////anchors.top:parent.top
////anchors.topMargin: 100


//Sprite{
//    name:"run"
//    source: "run.png"
//    frameCount: 11
//    frameWidth: 934
//    frameHeight: 641
//   // frameDuration: 6000/11

//    to:{"dead":1}

//}


//Sprite{
//    name:"dead"
//    source: "dead.png"
//    frameCount: 17
//    frameWidth: 934
//    frameHeight: 641

//    to:{"run":1}

//}



//}


//3

//    ParticleSystem {
//        id: system
//        anchors.fill: parent
//        ImageParticle { source: "image://theme/icon-s-favorite"   }
//        Emitter {
//            id: emitter
//            //anchors.centerIn: parent
//            //enabled: false
//            width: 200
//            height: 200
//            lifeSpan: 5000
//            lifeSpanVariation: 2000
//            velocity: AngleDirection{magnitude: 64; angleVariation: 360}
//            shape: EllipseShape { fill: false }
//        }
//        MouseArea {
//            anchors.fill: parent
//            onClicked: emitter.burst(500,mouseX,mouseY)
//        }
//    }


//4




//    ParticleSystem {
//        id: system
//        anchors.fill: parent
//        ImageParticle {
//            source: "image://theme/icon-s-favorite"
//            groups: ["main"]
//        }
//        Emitter {
//            id: emitter
//            group: "main"
//            //anchors.centerIn: parent
//            //enabled: false
//            anchors.bottom: parent.bottom
//            x:parent.width/2
//            width: 50
//            height: 50
//            lifeSpan: 7000
//            //lifeSpanVariation: 2000
//            velocity: AngleDirection{magnitude: 400; angleVariation: 10
//                angle: -90
//            }
//            shape: EllipseShape { fill: false }
//        }
//        Gravity{
//            x:parent.width*0.5
//            y:parent.height*0
//            angle: 90
//            magnitude: 100
//            groups: ["main"]
//            Rectangle {
//                width: 10; height: 10; color: "red"
//            }

//        }


//    }



//5



//    Audio {
//           id: player
//           source: "bury1.mp3"
//       }
//       Column {
//           anchors.fill: parent
//           ProgressBar {
//               width: parent.width
//               label: player.metaData.author + "-"
//                             + player.metaData.title
//               value: player.position
//               maximumValue: player.duration
//           }
//           Row {
//               anchors.horizontalCenter: parent.horizontalCenter
//               IconButton { icon.source: "image://theme/icon-m-play"; onClicked: player.play() }
//               IconButton { icon.source: "image://theme/icon-m-pause"; onClicked: player.pause() }
//           }
//       }

//6

//       MediaPlayer {
//              id: player
//              source: "http://clips.vorwaerts-gmbh.de/big_buck_bunny.ogv"
//              autoPlay: true
//          }
//          VideoOutput {
//              source: player
//              anchors.fill: parent
//              ProgressBar {
//                  anchors.bottom: parent.bottom
//                  width: parent.width
//                  value: player.position
//                  maximumValue: player.duration
//              }
//          }

    //7

//    Audio {
//           id: player
//           autoPlay: true
//           playlist: Playlist {
//               id: playlist
//               PlaylistItem { source: "bury1.mp3" }
//               PlaylistItem { source: "hobbit.mp3" }
//           }
//       }
//       SilicaListView {
//           model: playlist
//           anchors.fill: parent
//           delegate: ListItem {
//               Label { text: source }
//               onClicked: player.playlist.currentIndex = index
//           }
//       }
















}
