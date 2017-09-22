.class public Lcom/android/vendorsettings/wifi/al;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "WifiDatabaseHelper.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 16
    const-string v0, "wifi_settings.db"

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 17
    return-void
.end method

.method private m(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 65
    const-string v0, "ALTER TABLE wifi ADD COLUMN share_state INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 66
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/wifi/al;->o(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 67
    return-void
.end method

.method private n(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 70
    const-string v0, "CREATE TABLE wifi(_id INTEGER PRIMARY KEY AUTOINCREMENT,uuid TEXT ,marker INTEGER DEFAULT 0,longitude TEXT,latitude TEXT,deleted INTEGER DEFAULT 0,sync_state INTEGER DEFAULT 0,share_state INTEGER DEFAULT 0,account TEXT,ssid TEXT,bssid TEXT,psk TEXT,wepkey0 TEXT,wepkey1 TEXT,wepkey2 TEXT,wepkey3 TEXT,wep_tx_keyidx INTEGER,priority INTEGER,scan_ssid INTEGER,adhoc INTEGER,keyMgmt TEXT,proto TEXT,authAlg TEXT,pairwise TEXT,groupCipher TEXT,eap TEXT,phase2 TEXT,identity TEXT,anonymousIdentity TEXT,password TEXT,clientCert TEXT,privateKey TEXT,caCert TEXT,clientCertFile TEXT,privateKeyFile TEXT,caCertFile TEXT)"

    .line 109
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 111
    const-string v0, "CREATE TABLE wifi_sync(_id INTEGER PRIMARY KEY AUTOINCREMENT,account_name TEXT NOT NULL,marker INTEGER DEFAULT 0,sync_extra_info TEXT)"

    .line 118
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 119
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/wifi/al;->o(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 120
    return-void
.end method

.method private o(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 123
    const-string v0, "CREATE TABLE wifi_share(_id INTEGER PRIMARY KEY AUTOINCREMENT,uuid TEXT ,marker BIGINT DEFAULT 0,longitude TEXT,latitude TEXT,deleted INTEGER DEFAULT 0,sync_state INTEGER DEFAULT 0,share_state INTEGER DEFAULT 0,share_count INTEGER DEFAULT 0,share_connect_state INTEGER DEFAULT 0,share_feedback INTEGER DEFAULT 0,share_upate_time INTEGER DEFAULT 0,account TEXT,ssid TEXT,bssid TEXT,psk TEXT,wepkey0 TEXT,wepkey1 TEXT,wepkey2 TEXT,wepkey3 TEXT,wep_tx_keyidx INTEGER,priority INTEGER,scan_ssid INTEGER,adhoc INTEGER,keyMgmt TEXT,proto TEXT,authAlg TEXT,pairwise TEXT,groupCipher TEXT,eap TEXT,phase2 TEXT,identity TEXT,anonymousIdentity TEXT,password TEXT,clientCert TEXT,privateKey TEXT,caCert TEXT,clientCertFile TEXT,privateKeyFile TEXT,caCertFile TEXT)"

    .line 166
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 167
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/wifi/al;->n(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 22
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x6

    const/4 v2, 0x3

    .line 27
    if-ge p2, v2, :cond_6

    .line 28
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/wifi/al;->m(Landroid/database/sqlite/SQLiteDatabase;)V

    move v0, v2

    .line 32
    :goto_0
    if-ne v0, v2, :cond_0

    .line 34
    const-string v0, "update wifi set deleted = 1, sync_state=0 where keyMgmt = \"NONE\" "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    move v0, v1

    .line 39
    :cond_0
    if-ne v0, v1, :cond_2

    .line 42
    :try_start_0
    const-string v1, "select * from wifi_share"

    .line 43
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 47
    if-eqz v1, :cond_1

    .line 48
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 51
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 54
    :cond_2
    const/4 v1, 0x7

    if-ne v0, v1, :cond_3

    .line 55
    const-string v1, "ALTER TABLE wifi_sync ADD COLUMN sync_extra_info TEXT"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 56
    add-int/lit8 v0, v0, 0x1

    .line 58
    :cond_3
    if-eq v0, p3, :cond_5

    .line 59
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrade wifi database to version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "fails"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :catch_0
    move-exception v1

    .line 45
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/wifi/al;->m(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    if-eqz v3, :cond_1

    .line 48
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 47
    :catchall_0
    move-exception v0

    if-eqz v3, :cond_4

    .line 48
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    .line 62
    :cond_5
    return-void

    :cond_6
    move v0, p2

    goto :goto_0
.end method
