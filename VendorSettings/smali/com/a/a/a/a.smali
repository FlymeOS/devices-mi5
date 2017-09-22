.class public Lcom/a/a/a/a;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DbHelper.java"


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 34
    .line 35
    const-string v0, "create table if not exists aplist (id integer primary key, mac text,ssid text,url text,itemtype integer, maclen integer)"

    .line 34
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 39
    const-string v0, "create table if not exists apversion (id integer primary key, curversion text)"

    .line 38
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/a/a/a/a;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 48
    return-void
.end method
