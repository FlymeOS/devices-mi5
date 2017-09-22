.class public Lcom/android/settings/cloud/push/g;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "CloudOpenHelper.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 18
    const-string v0, "compatibility_settings.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 19
    return-void
.end method

.method private f(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 30
    const-string v0, "CREATE TABLE exist_compatibility(_id INTEGER PRIMARY KEY,c_precise INTEGER,c_versions TEXT,c_package_name TEXT,c_message TEXT,c_title TEXT,c_ticker TEXT); "

    .line 48
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method private g(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 53
    const-string v0, "CREATE TABLE install_compatibility(_id INTEGER PRIMARY KEY,c_precise INTEGER,c_versions TEXT,c_package_name TEXT,c_message TEXT); "

    .line 67
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method private h(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 72
    const-string v0, "CREATE TABLE running_compatibility(_id INTEGER PRIMARY KEY,c_precise INTEGER,c_versions TEXT,c_package_name TEXT,c_message TEXT); "

    .line 86
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 87
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/android/settings/cloud/push/g;->f(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 24
    invoke-direct {p0, p1}, Lcom/android/settings/cloud/push/g;->g(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 25
    invoke-direct {p0, p1}, Lcom/android/settings/cloud/push/g;->h(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 26
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .prologue
    .line 92
    return-void
.end method
