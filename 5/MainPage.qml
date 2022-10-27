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

//1

//Column{
//    Button {
//                text: "push()"
//                onClicked: pageStack.push(Qt.resolvedUrl("MainPage.qml"))
//            }
//    Button {
//                text: "pop()"
//                onClicked: pageStack.pop()
//            }
//    Text {

//        text: pageStack.depth
//    }
//}

//2

//Column{
//    Button {
//        text: "next"
//        onClicked: pageStack.pushAttached(Qt.resolvedUrl("two.qml"))
//    }
//    Button {
//        text: "delete"
//        onClicked: pageStack.popAttached()
//    }

//        Text {

//            text: pageStack.depth
//        }
//}

//3

//    Dialog{
//        id:dialog
//        Column{
//            width: parent.width
//            TextField{
//                id: textField
//                width: parent.width
//            }
//        }
//    }

//    Column{
//        Button{
//            onClicked: {
//                var dialogg = pageStack.push(dialog)
//                dialogg.accepted.connect(function(){
//                    tex.text = textField.text
//                })
//            }
//        }
//        Text {
//            id: tex

//        }
//    }





    //4

//        Column{
//            Button{
//                onClicked: {
//                    var dialogg = pageStack.push("Sailfish.Silica.DatePickerDialog")
//                    dialogg.accepted.connect(function(){
//                        tex.text = dialogg.date
//                    })
//                }
//            }
//            Text {
//                id: tex

//            }
//        }

    //5

//            Column{
//                Button{
//                    onClicked: {
//                        var dialogg = pageStack.push("Sailfish.Silica.TimePickerDialog")
//                        dialogg.accepted.connect(function(){
//                            tex.text = dialogg.hour + ":" + dialogg.minute
//                        })
//                    }
//                }
//                Text {
//                    id: tex

//                }
//            }

    //6

//    ListModel {
//        id: zadach
//        ListElement { name: "Чил"; date: "09.22"; }
//        ListElement { name: "Чил+Чил"; date: "09.22"; }
//        ListElement { name: "Чил"; date: "10.22"; }
//        ListElement { name: "Чил"; date: "11.22"; }
//        ListElement { name: "Сессия"; date: "12.22"; }
//    }
//    SilicaListView {
//        anchors.fill: parent
//        model: zadach
//        header: PageHeader { title: "Жизнь студента" }
//        section {
//            property: 'date'
//            delegate: SectionHeader { text: section }
//        }
//        delegate: Text { text: name }
//    }

    //7

//    SilicaWebView {
//            id: webView
//            anchors {
//                top: parent.top; bottom: urlField.top;
//                left: parent.left; right: parent.right;
//            }
//            url: "https://doc.qt.io/qt-6/qml-qtwebview-webview.html"
//        }

//    TextField {
//            id: urlField
//            anchors {
//                left: parent.left; right: parent.right;
//                bottom: parent.bottom
//            }
//            text: "https://stackoverflow.com/questions/5765398/whats-the-best-way-to-convert-a-number-to-a-string-in-javascript"
//            label: webView.title
//            EnterKey.onClicked: webView.url = text
//        }

    //8

//        ListModel {
//            id: zadach
//            ListElement { name: "Чил"; date: "пон"; }
//            ListElement { name: "Чил+Чил"; date: "вт"; }
//            ListElement { name: "Чил"; date: "ср"; }
//            ListElement { name: "Чил"; date: "чт"; }
//            ListElement { name: "Сессия"; date: "пят"; }
//        }

//    SlideshowView {
//        id: view
//        anchors.centerIn: parent
//        height: width
//        itemHeight: width; itemWidth: width;
//        model: zadach
//        delegate: Rectangle {
//            width: view.itemWidth;
//            height: view.itemHeight;
//            Text {
//                anchors.centerIn: parent
//                text: name + "<br>" + date
//            }
//        }
//    }

    //9

//    SilicaListView {
//        PullDownMenu {
//            MenuItem {
//                text: "Menu Item 2"
//                onClicked: name.text = text
//            }
//            MenuItem {
//                text: "Menu Item 1"
//                onClicked: name.text = text
//            }
//            MenuLabel { text: qsTr("Menu Label") }
//        }

//        PushUpMenu {
//            MenuItem {
//                text: "Menu Item 3"
//                onClicked: name.text = text
//            }
//            MenuItem {
//                text: "Menu Item 4"
//                onClicked: name.text = text
//            }
//            MenuLabel { text: qsTr("Menu Label") }
//        }

//        anchors.fill: parent
//        Text {
//            id: name
//        }
//    }

    //10

//    SilicaListView {
//        anchors.fill: parent
//        model: 20
//        delegate: ListItem {
//            id: delegate
//            Label {
//                id:da
//                x: Theme.paddingLarge
//                text: "List Item #" + index
//                color: delegate.highlighted ? Theme.highlightColor : Theme.primaryColor
//            }
//            menu: ContextMenu {
//                MenuLabel { text: "Context Menu" }
//                MenuItem {
//                    text: "Menu Item 1"
//                    onClicked: console.log(da.text + " " + index)
//                }

//            }
//        }
//    }

    //11

//    Cover {
//        Label {
//            id: coverLabel
//            text: "Hello, Sailor!"
//            anchors.centerIn: parent
//            width: parent.width
//            height: parent.height
//        }
//        CoverActionList {

//            CoverAction {
//                iconSource: "image://theme/icon-cover-play"
//                onTriggered: coverLabel.text = "Play!"
//            }
//            CoverAction {
//                //iconSource: "image://theme/icon-cover-next-song"
//                onTriggered: coverLabel.text = "Next!"
//            }
//        }
//    }






























}
