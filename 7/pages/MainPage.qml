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

Page {
    objectName: "mainPage"
    allowedOrientations: Orientation.All





//1 и 2



//Column{
//    width: parent.width

//    Rectangle{
//        id:red
//        color: "red"

//        width: 100
//        height: 100
//        radius: 50

//    state: "black"
//        states: [State {
//                name: "red"
//                PropertyChanges {target: red; color: "red"}
//            },State{
//                name: "black"
//                PropertyChanges {target: red; color: "black"}
//            }]
//    }

//    Rectangle{
//        id: ye
//        color: "yellow"

//        width: 100
//        height: 100
//        radius: 50

//        state: "black"
//            states: [State {
//                    name: "yellow"
//                    PropertyChanges {target: ye; color: "yellow"}
//                },State{
//                    name: "black"
//                    PropertyChanges {target: ye; color: "black"}
//                }]
//    }

//    Rectangle{
//        id: gr
//        color: "green"

//        width: 100
//        height: 100
//        radius: 50

//        state: "black"
//            states: [State {
//                    name: "green"
//                    PropertyChanges {target: gr; color: "green"}
//                },State{
//                    name: "black"
//                    PropertyChanges {target: gr; color: "black"}
//                }]
//    }


//    IconButton{
//        id:ib
//        property int xx: 10
//        icon.source: "image://theme/icon-m-people?"
//        x:xx
//        state: "none"
//        states: [State{
//            name:"anim"
//            PropertyChanges {
//                target: ib
//                x:(ib.xx+10)
//            }

//        },State{
//            name:"anim2"
//            StateChangeScript {
//                script:{ib.xx=ib.xx+10
//                    ib.x = ib.xx
//                console.log(ib.x)
//                }

//            }

//            }]
//       transitions: Transition {
//            to: "anim"
//            NumberAnimation { properties: "x"; duration: 400 }

//        }
//    }



//    Timer {
//        property int next: 0
//            interval: 500; running: true; repeat: true
//            onTriggered: {

//                if(next == 0)
//                {
//                    if(ye.state == "yellow")
//                    {ye.state = "black"}
//                    red.state = red.state == "red" ? "black":"red"
//                    next = 1
//                }
//                else if(next == 1)
//                {
//                    red.state = red.state == "red" ? "black":"red"
//                    ye.state = ye.state == "yellow" ? "black":"yellow"
//                    next = 2
//                }
//                else if(next == 2)
//                {
//                    ye.state = ye.state == "yellow" ? "black":"yellow"
//                    gr.state = gr.state == "green" ? "black":"green"
//                    next = 3
//                   ib.state = ib.state == "anim" ? "anim2":"anim"



//                }
//                else if(next == 3)
//                {
//                    gr.state = gr.state == "green" ? "black":"green"
//                    ye.state = ye.state == "yellow" ? "black":"yellow"
//                    next = 0
//                    ib.state = ib.state == "anim" ? "anim2":"anim"
//                }



//            }


//        }
//}




//3
//    Text {
//            id: t
//            text: "AAAAAAAAAAAAAAAAA"
//            color: "green"
//            state: "default"

//            MouseArea {
//                anchors.fill: parent
//                onPressed: parent.state = "anim"
//                onReleased: parent.state = "default"
//            }

//            states: [
//                State {
//                    name: "default"
//                },
//                State {
//                    name: "anim"
//                    PropertyChanges {
//                        target: t
//                        color: "red"
//                        rotation: 180
//                    }
//                }
//            ]
//            transitions: [
//                Transition {
//                    from: "default"
//                    to: "anim"
//                    ParallelAnimation {
//                        PropertyAnimation {
//                            target: t
//                            property: "y"
//                            to: page.height
//                            duration: 1000
//                        }
//                    }
//                },
//                Transition {
//                    from: "anim"
//                    to: "default"
//                    ParallelAnimation {
//                        PropertyAnimation {
//                            target: t
//                            property: "y"
//                            to: 0
//                            duration: 1000
//                        }
//                    }
//                }
//            ]
//        }


//4

//Svettt{}

//5

//NB{
//    Text {
//        text: "Da"
//        color: "gray"
//    }
//}


//6

//Row{
//    id:r
//    width: parent.width
//    height: 100
//    HMS{
//        id:h
//        height: 50
//        width: 50
//        num: 0
//    }
//    HMS{
//        id:m
//        height: 50
//        width: 50
//        num: 0
//    }
//    HMS{
//        id:s
//        height: 50
//        width: 50
//        num: 0
//    }
//}

//Timer {
//    id:ti
//        interval: 1000; running: false; repeat: true
//        onTriggered: {
//            s.num++
//            if(s.num == 60)
//            {
//                s.num=0
//                m.num++
//                if(m.num==60)
//                {
//                    m.num=0
//                    h.num++
//                }
//            }

//        }
//    }
//Button{
//    anchors.top:r.bottom
//    onClicked: ti.running = ti.running == false ? true:false
//}

 //7
//    property int pushPage: 0
//    property int popPage: 0
//    property int prevDepth: 1
//    function check()
//    {
//        if (prevDepth > pageStack.depth)
//           popPage++;
//       else if (prevDepth < pageStack.depth)
//           pushPage++;
//       prevDepth = pageStack.depth;
//    }

//    Component.onCompleted: pageStack.depthChanged.connect(check)
//    Column {
//           width: page.width
//           spacing: 30
//           Button {
//               text: "Добавить"
//               onClicked: pageStack.push(Qt.resolvedUrl("MainPage.qml"))
//           }
//           Button {
//               text: "Удалить"
//               onClicked: pageStack.pop()
//           }

//           Label {
//               text: "Глубина стека: " + pageStack.depth
//           }

//           Label {
//               text: "Добавленные страницы: " + pushPage.toString()
//           }

//           Label {
//               text: "Удалённые страницы: " + popPage.toString()
//           }
//       }








}
