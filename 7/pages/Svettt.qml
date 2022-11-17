import QtQuick 2.0
import Sailfish.Silica 1.0
Item {
    Column{
        width: parent.width

        Rectangle{
            id:red
            color: "red"

            width: 100
            height: 100
            radius: 50

        state: "black"
            states: [State {
                    name: "red"
                    PropertyChanges {target: red; color: "red"}
                },State{
                    name: "black"
                    PropertyChanges {target: red; color: "black"}
                }]
        }

        Rectangle{
            id: ye
            color: "yellow"

            width: 100
            height: 100
            radius: 50

            state: "black"
                states: [State {
                        name: "yellow"
                        PropertyChanges {target: ye; color: "yellow"}
                    },State{
                        name: "black"
                        PropertyChanges {target: ye; color: "black"}
                    }]
        }

        Rectangle{
            id: gr
            color: "green"

            width: 100
            height: 100
            radius: 50

            state: "black"
                states: [State {
                        name: "green"
                        PropertyChanges {target: gr; color: "green"}
                    },State{
                        name: "black"
                        PropertyChanges {target: gr; color: "black"}
                    }]
        }


        IconButton{
            id:ib
            property int xx: 10
            icon.source: "image://theme/icon-m-people?"
            x:xx
            state: "none"
            states: [State{
                name:"anim"
                PropertyChanges {
                    target: ib
                    x:(ib.xx+10)
                }

            },State{
                name:"anim2"
                StateChangeScript {
                    script:{ib.xx=ib.xx+10
                        ib.x = ib.xx
                    console.log(ib.x)
                    }

                }

                }]
           transitions: Transition {
                to: "anim"
                NumberAnimation { properties: "x"; duration: 400 }

            }
        }



        Timer {
            property int next: 0
                interval: 500; running: true; repeat: true
                onTriggered: {

                    if(next == 0)
                    {
                        if(ye.state == "yellow")
                        {ye.state = "black"}
                        red.state = red.state == "red" ? "black":"red"
                        next = 1
                    }
                    else if(next == 1)
                    {
                        red.state = red.state == "red" ? "black":"red"
                        ye.state = ye.state == "yellow" ? "black":"yellow"
                        next = 2
                    }
                    else if(next == 2)
                    {
                        ye.state = ye.state == "yellow" ? "black":"yellow"
                        gr.state = gr.state == "green" ? "black":"green"
                        next = 3
                       ib.state = ib.state == "anim" ? "anim2":"anim"



                    }
                    else if(next == 3)
                    {
                        gr.state = gr.state == "green" ? "black":"green"
                        ye.state = ye.state == "yellow" ? "black":"yellow"
                        next = 0
                        ib.state = ib.state == "anim" ? "anim2":"anim"
                    }



                }



            }
    }
}
