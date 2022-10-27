import QtQuick 2.0
import QtQuick.LocalStorage 2.0


Item {
    property var db;

    Component.onCompleted: {
        db = LocalStorage.openDatabaseSync("bookss", "1.0");
//        db.transaction(function(tx) {
//            tx.executeSql("DROP TABLE bookss;");
//        });
        createBooksTable();
    }
    function createBooksTable() {
        db.transaction(function(tx) {
            tx.executeSql("CREATE TABLE IF NOT EXISTS bookss (
                id INTEGER PRIMARY KEY AUTOINCREMENT, title TEXT)");
        });

    }
    function retrieveBooks(callback) {
        db.readTransaction(function(tx) {
            var result = tx.executeSql("SELECT * FROM bookss;");
            callback(result.rows);
        });
    }
    function insertBook(title) {
        db.transaction(function(tx) {
           tx.executeSql("INSERT INTO bookss (title) VALUES(?);", [title]);
        });
    }
    function updateBook(id, title) {
        db.transaction(function(tx) {
            tx.executeSql("UPDATE bookss SET title = ? WHERE id = ?;", [title, id]);
        });
    }
    function deleteBook(id) {
        db.transaction(function(tx) {
            tx.executeSql("DELETE FROM bookss WHERE id = ?;", [id]);
        });
    }
}




