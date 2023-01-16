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










    Rectangle {
        id: snakeBoard
        anchors.fill: parent

        property int nextTileTime: 500
        property int nextTileTailTime: nextTileTime
        property int nextTileHeadTime: nextTileTime
        property BoardTile tailTile
        property BoardTile headTile
        property bool foodEaten: false
        property bool gameStarted: false

        function generateFood(){
            var tmpTile = tail.nextTile
            while(tmpTile.isSnake){
                var randomIndex = Math.floor(Math.random() * (grid.columns * grid.rows))
                tmpTile = tilesRepeater.itemAt(randomIndex)
            }
            tmpTile.isFood = true
        }












                SnakeHead{


                    id: head
                    onStateChanged: {
                        //console.log(1)
                        updateTargetTile()
                        //console.log(2)
                        stateChangedFlag = true
                        //console.log(3)
                    }





                    function checkFood(){
                        if(head.currentTile.isFood){
                            if(snakeBoard.nextTileTime > 50)
                                snakeBoard.nextTileTime -= 5
                            snakeBoard.foodEaten = true
                            snakeBoard.generateFood()
                        }
                    }





                    function checkCollision(){

                        console.log(1 + " " + head.currentTile.row + " " + head.state)
                        console.log(2 + " " + head.currentTile.col + " " + head.state)



                        if((head.currentTile.row == 0 && head.state == "up") ||
                                (head.currentTile.row == (grid.rows - 1) && head.state == "down") ||
                                (head.currentTile.col == 0 && head.state == "left") ||
                                (head.currentTile.col == (grid.columns - 1) && head.state == "right")){
                            //console.log(1)
                            Qt.quit()
                        }
                        if(head.nextTile != null && head.nextTile.isSnake == true){
                            //console.log(2)
                            Qt.quit()}
                    }






                    function updateTargetTile(){
                        if(!stateChangedFlag && currentTile != null){
                            if(state == "up"){
                                nextTile = tilesRepeater.itemAt((currentTile.row-1)*grid.columns+currentTile.col)
                            }
                            else if(state == "down"){
                                nextTile = tilesRepeater.itemAt((currentTile.row+1)*grid.columns+currentTile.col)
                            }
                            else if(state == "right"){
                                nextTile = tilesRepeater.itemAt((currentTile.row)*grid.columns+currentTile.col + 1)
                            }
                            else if(state == "left"){
                                nextTile = tilesRepeater.itemAt((currentTile.row)*grid.columns+currentTile.col - 1)
                            }
                        }
                        if(head.currentTile != null){
                            checkCollision()
                        }
                    }








                    function setCurrentTile(){
                        currentTile = nextTile
                        stateChangedFlag = false
                    }






                    Behavior on x {
                        NumberAnimation {
                            duration: snakeBoard.nextTileHeadTime
                            easing.type: Easing.Linear
                            onRunningChanged: {
                                if(running == false){
                                    head.stateChangedFlag = false
                                    head.currentTile.isSnake = true
                                    head.currentTile.state = head.state
                                    head.updateTargetTile()
                                    head.setCurrentTile()
                                }
                                else if(running == true){
                                    head.checkFood()
                                }
                            }
                        }
                    }





                    Behavior on y {
                        NumberAnimation {
                            duration: snakeBoard.nextTileHeadTime
                            easing.type: Easing.Linear
                            onRunningChanged: {
                                if(running == false){
                                    head.stateChangedFlag = false
                                    head.currentTile.isSnake = true
                                    head.currentTile.state = head.state
                                    head.updateTargetTile()
                                    head.setCurrentTile()
                                }
                                else if(running == true){
                                    head.checkFood()
                                }
                            }
                        }
                    }




                }
















                        SnakePart{
                            id: tail
                            property NumberAnimation pausedAnimation

                            function updateTargetTile(){
                                if(currentTile.state == "up")
                                    nextTile = tilesRepeater.itemAt((currentTile.row-1)*grid.columns+currentTile.col)
                                else if(currentTile.state == "down"){
                                    nextTile = tilesRepeater.itemAt((currentTile.row+1)*grid.columns+currentTile.col)
                                }
                                else if(currentTile.state == "right"){
                                    nextTile = tilesRepeater.itemAt((currentTile.row)*grid.columns+currentTile.col + 1)
                                }
                                else if(currentTile.state == "left"){
                                    nextTile = tilesRepeater.itemAt((currentTile.row)*grid.columns+currentTile.col - 1)
                                }
                            }

                            function setCurrentTile(){
                                currentTile = nextTile
                            }

                            Behavior on x {
                                id: behaviorXTail
                                NumberAnimation {
                                    id: xAnimTail
                                    duration: snakeBoard.nextTileTailTime
                                    easing.type: Easing.Linear
                                    onRunningChanged: {
                                        if(running == false){
                                            tail.currentTile.isSnake = false
                                            tail.currentTile.isFood = false
                                            tail.updateTargetTile()
                                            tail.setCurrentTile()
                                            if(snakeBoard.foodEaten){
                                                snakeBoard.nextTileTailTime = snakeBoard.nextTileTailTime*2
                                                snakeBoard.foodEaten = false
                                            }
                                            else
                                                snakeBoard.nextTileTailTime = snakeBoard.nextTileHeadTime
                                        }
                                    }
                                }
                            }
                            Behavior on y {
                                id: behaviorYTail
                                NumberAnimation {
                                    id: yAnimTail
                                    duration: snakeBoard.nextTileTailTime
                                    easing.type: Easing.Linear
                                    onRunningChanged: {
                                        if(running == false){
                                            tail.currentTile.isSnake = false
                                            tail.currentTile.isFood = false
                                            tail.updateTargetTile()
                                            tail.setCurrentTile()
                                            if(snakeBoard.foodEaten){
                                                snakeBoard.nextTileTailTime = snakeBoard.nextTileTailTime*2
                                                snakeBoard.foodEaten = false
                                            }
                                            else
                                                snakeBoard.nextTileTailTime = snakeBoard.nextTileHeadTime
                                        }
                                    }
                                }
                            }
                        }
































        Grid{
            id: grid
            rows: 26//1040/40
            columns: 14//1840/40
            anchors.fill: parent
            Repeater {
                id: tilesRepeater
                model: grid.rows * grid.columns
                BoardTile{
                    id: tile

                    row: index/grid.columns
                    col: index%grid.columns
                    MouseArea{
                        anchors.fill: parent
                        onClicked: {

                            //console.log(index);


                            if(!snakeBoard.gameStarted){

                                //console.log(head.currentTile)
                                //console.log(head.nextTile)

                                head.currentTile = head.nextTile
                                tail.currentTile = tail.nextTile
                                snakeBoard.generateFood()
                                snakeBoard.gameStarted = true
                            }
                        }
                    }
                    Component.onCompleted: {
                        if(index == 300){
                            //console.log(300)
                            tile.isSnake = true
                            tile.state = "right"
                            head.currentTile = tile
                            head.x = tile.col*tile.width
                            head.y = tile.row*tile.height
                        }
                        else if(index == 301){
                            //console.log(301)
                            head.nextTile = tile}
                        else if(index == 298){
                            //console.log(298)
                            tile.state = "right"
                            tail.currentTile = tile
                            tail.x = tile.col*tile.width
                            tail.y = tile.row*tile.height
                        }
                        else if(index == 299){
                            //console.log(299)
                            tile.isSnake = true
                            tile.state = "right"
                            tail.nextTile = tile
                        }
                    }
                }
            }
        }









































        focus: true
        Keys.onPressed: {
            if (event.key == Qt.Key_Left) {
                console.log("move left")
                if(!head.stateChangedFlag && head.state != "right"){
                    head.state = "left"
                }
            }
            else if(event.key == Qt.Key_Right){
                console.log("move right")
                if(!head.stateChangedFlag && head.state != "left"){
                    head.state = "right"
                }
            }
            else if(event.key == Qt.Key_Up){
                console.log("move up")
                if(!head.stateChangedFlag && head.state != "down"){
                    head.state = "up"
                }
            }
            else if(event.key == Qt.Key_Down){
                console.log("move down")
                if(!head.stateChangedFlag && head.state != "up"){
                    head.state = "down"
                }
            }
            else if(event.key == Qt.Key_Escape){
                console.log("Game over")
                Qt.quit()
            }
            event.accepted = true
        }











    }










































}
