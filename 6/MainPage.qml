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
import QtQuick.XmlListModel 2.0
import Nemo.Configuration 1.0
import QtQuick.LocalStorage 2.0
Page {
    objectName: "mainPage"
    allowedOrientations: Orientation.All




//1

//    ListModel{
//        id: rectangle
//        ListElement{colo: "black"; background: "red"}//поч не работате color?
//        ListElement{colo: "red"; background: "black"}
//    }

//    SilicaListView{
//        spacing: 10
//        anchors.fill: parent
//        model: rectangle
//        delegate: Rectangle{
//            height: 100
//            width: parent.width
//            color: background
//            Text {
//                anchors.centerIn: parent
//                color: colo
//                text: colo
//            }
//        }
//    }

    //2

//    ListModel{
//        id: rect
//    }
//    SilicaListView{
//        header: Button{

//            property int id_b: 0
//            onClicked: {
//                rect.append({"textt": id_b, "idd":id_b})
//                id_b++
//            }
//        }

//        spacing: 10
//        anchors.fill: parent
//        model: rect
//        delegate: Rectangle{
//            height: 100
//            width: parent.width

//            Button{
//                width: parent.width
//                height: parent.height
//                text: textt
//                onClicked: {
//                    for(var i = 0; i < rect.count; i++)
//                    {
//                        rect.set(i,{"idd": i})
//                    }
//                    rect.remove(idd,1)
//                }
//            }
//        }
//    }

    //3

//    property var yas: [
//    {colo: "black", background: "red"},
//    {colo: "red", background: "black"}
//    ]

//        SilicaListView{
//            spacing: 10
//            anchors.fill: parent
//            model: yas
//            delegate: Rectangle{
//                height: 100
//                width: parent.width
//                color: modelData.background
//                Text {
//                    anchors.centerIn: parent
//                    color: modelData.colo
//                    text: modelData.colo
//                }
//            }
//        }

    //4

    //import

//    XmlListModel {
//        id:xmlListModel
//        source: "http://www.cbr.ru/scripts/XML_daily.asp"
//        query: "/ValCurs/Valute"
//        XmlRole{name: "Name"; query: "Name/string()"}
//        XmlRole{name: "Value"; query: "Value/string()"}
//    }

//    SilicaListView{
//        spacing: 10
//        anchors.fill: parent
//        model:xmlListModel
//        delegate: Column{
//            x:10
//            width: parent.width - 2*x
//            Label{
//                width: parent.width
//                text: Name + "<br>" + Value
//            }
//        }
//    }

    //5

//    function loadNews(){
//        var xhr = new XMLHttpRequest();
//        xhr.open('GET',"http://www.cbr.ru/scripts/XML_daily.asp", true)
//        //xhr.setRequestHeader('Content-type', 'application/x-www-form-urlencoded; charset=UTF-8')

//        xhr.onreadystatechange=function(){
//            if(xhr.readyState===XMLHttpRequest.DONE)
//            {
//                //console.log(xhr.responseText)
//                xmlListModel.xml = xhr.responseText
//            }
//        }
//        xhr.send()
//    }

//        XmlListModel {
//            id:xmlListModel
//            //source: "http://www.cbr.ru/scripts/XML_daily.asp"
//            query: "/ValCurs/Valute"
//            XmlRole{name: "Name"; query: "Name/string()"}
//            XmlRole{name: "Value"; query: "Value/string()"}
//        }

//        SilicaListView{
//            spacing: 10
//            anchors.fill: parent
//            model:xmlListModel
//            delegate: Column{
//                x:10
//                width: parent.width - 2*x
//                Label{
//                    width: parent.width
//                    text: Name + "<br>" + Value
//                }
//            }
//        }
//        Component.onCompleted: loadNews()

//6

//    Dao{id: dao}



//    SilicaListView {
//        header:Column{
//            TextField{
//                id: tf
//            }
//            Button{

//                text: "add"
//                onClicked: {
//                    dao.insertBook(tf.text);
//                    selectBooks()
//                }
//            }


//        }

//        spacing: 20
//        anchors.fill: parent
//            model: ListModel { id: booksListModel
//            }

//            delegate: ListItem {


//                Rectangle {
//                    //anchors.centerIn: parent
//                   // anchors.top: parent.bottom
//                    Button{
//                       // width: parent.width
//                        //height: parent.height
//                       text: title
//                       onClicked: {
//                           //console.log(model.id)
//                           dao.deleteBook(model.id)
//                           selectBooks()

//                       }
//                    }


//                }



//            }
//        }





//        //...
//        function selectBooks() {
//            booksListModel.clear();
//            dao.retrieveBooks(function(books) {
//                for (var i = 0; i < books.length; i++) {
//                    var book = books.item(i);
//                    booksListModel.append({id: book.id, title: book.title});
//                }
//            });
//        }
//        Component.onCompleted: selectBooks()














    //7

//    ConfigurationValue{
//        id: setting1
//            key: "string"
//        }
//    ConfigurationValue{
//        id: setting2
//            key: "string"
//        }
//        Column {

//            TextField{
//                id: tf
//                width: parent.width
//            }
//            Switch{
//                id:sw

//            }

//            Button{
//                onClicked: {
//                    setting1.value = tf.text
//                    setting2.value = sw.checked ? "yes":"no"
//                }
//            }

//            Label {
//                //...
//                text: setting1.value + " " + setting2.value

//            }


//    }


//        8
        ConfigurationGroup {
            id: settings
            path: "/path"
            //property bool bold: false
            //property bool strikeout: false
        }
        Column {


                        TextField{
                            id: tf
                            width: parent.width
                        }
                        Switch{
                            id:sw
                        }
                        Button{
                            onClicked: {
                                settings.setValue("value1", tf.text)
                                settings.setValue("value2", sw.checked? "yes":"no")
                                //settings.data = tf.text
                                console.log(settings.value("value1"))
                                console.log(settings.value("value2"))
                            }
                        }

                        Label {
                            //...

                            text: settings.value("value1") + " " + settings.value("value2")
                        }

        }



















}

