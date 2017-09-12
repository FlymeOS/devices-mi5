.class public Lmiui/provider/CloudAppControll;
.super Ljava/lang/Object;
.source "CloudAppControll.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/provider/CloudAppControll$TAG;
    }
.end annotation


# static fields
.field public static final ACTION_APP_CONTROL_LIST_UPDATED:Ljava/lang/String; = "miui.provider.action.APP_CONTROL_LIST_UPDATED"

.field private static final AUTHORITY:Ljava/lang/String; = "com.android.settings.cloud.CloudSettings"

.field private static final CLOUD_APP_CONTROL_URI:Landroid/net/Uri;

.field private static final CLOUD_CONTROL_DATABASE_PATH:Ljava/lang/String; = "/data/data/com.android.settings/databases/cloud_settings.db"

.field private static final CLOUD_INSTALL_COMPATIBILITY_URI:Landroid/net/Uri;

.field private static final CLOUD_RUNNING_COMPATIBILITY_URI:Landroid/net/Uri;

.field private static final COLUMN_ATTRIBUTES:Ljava/lang/String; = "attributes"

.field private static final COLUMN_MAX_VERSION_CODE:Ljava/lang/String; = "max_version_code"

.field private static final COLUMN_MIN_VERSION_CODE:Ljava/lang/String; = "min_version_code"

.field private static final COLUMN_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field private static final COLUMN_RELEASE_KEY:Ljava/lang/String; = "release_key"

.field private static final COMPAT_DATABASE_PATH:Ljava/lang/String; = "/data/data/com.android.settings/databases/compatibility_settings.db"

.field private static final DEFAULT_PROJECTION:[Ljava/lang/String;

.field public static final ERROR:I = -0x1

.field public static final FLAG_INSTALL_COMPATIBILITY:I = 0x1

.field public static final FLAG_RUNNING_COMPATIBILITY:I = 0x2

.field public static final INSTALL_COMPATIBILITY_AUTHORITY:Ljava/lang/String; = "com.android.settings.cloud.compatibility.install"

.field public static final MESSAGE:Ljava/lang/String; = "c_message"

.field public static final PACKAGE_NAME:Ljava/lang/String; = "c_package_name"

.field public static final PRECISE:Ljava/lang/String; = "c_precise"

.field public static final PRECISE_FALSE:I = -0x1

.field public static final PRECISE_TRUE:I = 0x1

.field public static final RUNNING_COMPATIBILITY_AUTHORITY:Ljava/lang/String; = "com.android.settings.cloud.compatibility.running"

.field public static final TICKER:Ljava/lang/String; = "c_ticker"

.field public static final TITLE:Ljava/lang/String; = "c_title"

.field public static final VERSIONS:Ljava/lang/String; = "c_versions"

.field public static final VERSION_SEPARATOR:Ljava/lang/String; = "-"

.field private static final dbLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 226
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lmiui/provider/CloudAppControll;->dbLock:Ljava/lang/Object;

    .line 334
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "attributes"

    aput-object v2, v0, v1

    sput-object v0, Lmiui/provider/CloudAppControll;->DEFAULT_PROJECTION:[Ljava/lang/String;

    .line 346
    const-string v0, "content://com.android.settings.cloud.CloudSettings/cloud_app_control_list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/CloudAppControll;->CLOUD_APP_CONTROL_URI:Landroid/net/Uri;

    .line 350
    const-string v0, "content://com.android.settings.cloud.compatibility.install/install"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/CloudAppControll;->CLOUD_INSTALL_COMPATIBILITY_URI:Landroid/net/Uri;

    .line 352
    const-string v0, "content://com.android.settings.cloud.compatibility.running/running"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/CloudAppControll;->CLOUD_RUNNING_COMPATIBILITY_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static get(Landroid/content/Context;Lmiui/provider/CloudAppControll$TAG;Ljava/lang/String;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tag"    # Lmiui/provider/CloudAppControll$TAG;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 140
    const-string v0, ""

    const/4 v1, -0x1

    invoke-static {p0, p1, p2, v0, v1}, Lmiui/provider/CloudAppControll;->get(Landroid/content/Context;Lmiui/provider/CloudAppControll$TAG;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static get(Landroid/content/Context;Lmiui/provider/CloudAppControll$TAG;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tag"    # Lmiui/provider/CloudAppControll$TAG;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "releaseKey"    # Ljava/lang/String;

    .prologue
    .line 152
    const/4 v0, -0x1

    invoke-static {p0, p1, p2, p3, v0}, Lmiui/provider/CloudAppControll;->get(Landroid/content/Context;Lmiui/provider/CloudAppControll$TAG;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static get(Landroid/content/Context;Lmiui/provider/CloudAppControll$TAG;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tag"    # Lmiui/provider/CloudAppControll$TAG;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "releaseKey"    # Ljava/lang/String;
    .param p4, "versionCode"    # I

    .prologue
    .line 165
    if-eqz p0, :cond_0

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 166
    :cond_0
    const/4 v10, -0x1

    .line 223
    :cond_1
    :goto_0
    return v10

    .line 169
    :cond_2
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 170
    .local v15, "selectionArgsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v5, "package_name=?"

    .line 171
    .local v5, "selection":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 173
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND release_key=?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 174
    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    :cond_3
    if-ltz p4, :cond_4

    .line 177
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND max_version_code >=? AND min_version_code <= ?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 180
    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    :cond_4
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v6, v3, [Ljava/lang/String;

    .line 184
    .local v6, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 186
    const/4 v10, -0x1

    .line 187
    .local v10, "attribute":I
    const/4 v14, 0x0

    .line 188
    .local v14, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v11, 0x0

    .line 190
    .local v11, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/16 v4, 0x3e8

    if-eq v3, v4, :cond_8

    .line 191
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lmiui/provider/CloudAppControll;->CLOUD_APP_CONTROL_URI:Landroid/net/Uri;

    sget-object v4, Lmiui/provider/CloudAppControll;->DEFAULT_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v11

    move-object v2, v14

    .line 201
    .end local v14    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_5
    :goto_1
    if-eqz v11, :cond_6

    .line 202
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 205
    const-string v3, "attributes"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 206
    .local v12, "attributes":J
    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Lmiui/provider/CloudAppControll$TAG;->getAttribute(J)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v10

    .line 215
    .end local v12    # "attributes":J
    :cond_6
    :goto_2
    if-eqz v11, :cond_7

    .line 216
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 218
    :cond_7
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 219
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 220
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 193
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v14    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_8
    :try_start_2
    sget-object v4, Lmiui/provider/CloudAppControll;->dbLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 194
    :try_start_3
    new-instance v3, Ljava/io/File;

    const-string v7, "/data/data/com.android.settings/databases/cloud_settings.db"

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 195
    const-string v3, "/data/data/com.android.settings/databases/cloud_settings.db"

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v3, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v2

    .line 197
    .end local v14    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_3
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 198
    if-eqz v2, :cond_5

    .line 199
    :try_start_5
    const-string v3, "cloud_app_control_list"

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-object v11

    goto :goto_1

    .line 197
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v14    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v3

    move-object v2, v14

    .end local v14    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_4
    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    throw v3
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 212
    :catch_0
    move-exception v3

    .line 215
    :goto_5
    if-eqz v11, :cond_9

    .line 216
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 218
    :cond_9
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 219
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 220
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 209
    :cond_a
    :try_start_8
    # getter for: Lmiui/provider/CloudAppControll$TAG;->mDefaultValue:I
    invoke-static/range {p1 .. p1}, Lmiui/provider/CloudAppControll$TAG;->access$000(Lmiui/provider/CloudAppControll$TAG;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-result v10

    goto :goto_2

    .line 215
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v14    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v3

    move-object v2, v14

    .end local v14    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_6
    if-eqz v11, :cond_b

    .line 216
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 218
    :cond_b
    if-eqz v2, :cond_c

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 219
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 220
    const/4 v2, 0x0

    :cond_c
    throw v3

    .line 215
    :catchall_2
    move-exception v3

    goto :goto_6

    .line 212
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v14    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catch_1
    move-exception v3

    move-object v2, v14

    .end local v14    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    goto :goto_5

    .line 197
    :catchall_3
    move-exception v3

    goto :goto_4

    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v14    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_d
    move-object v2, v14

    .end local v14    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    goto :goto_3
.end method

.method public static getCompatibility(Landroid/content/Context;Ljava/lang/String;II)Ljava/lang/String;
    .locals 26
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "versionCode"    # I
    .param p3, "flag"    # I

    .prologue
    .line 230
    sget-boolean v4, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v4, :cond_1

    const/16 v20, 0x0

    .line 325
    :cond_0
    :goto_0
    return-object v20

    .line 231
    :cond_1
    if-nez p0, :cond_2

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_14

    .line 232
    :cond_2
    const/16 v17, 0x0

    .line 233
    .local v17, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/16 v16, 0x0

    .line 234
    .local v16, "cursor":Landroid/database/Cursor;
    const-string v5, "c_package_name = ? "

    .line 235
    .local v5, "selection":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v6, v4

    .line 238
    .local v6, "selectionArgs":[Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const/16 v9, 0x3e8

    if-eq v4, v9, :cond_8

    .line 239
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 240
    .local v2, "cr":Landroid/content/ContentResolver;
    const/4 v3, 0x0

    .line 241
    .local v3, "contentUri":Landroid/net/Uri;
    const/4 v4, 0x1

    move/from16 v0, p3

    if-ne v0, v4, :cond_7

    .line 242
    sget-object v3, Lmiui/provider/CloudAppControll;->CLOUD_INSTALL_COMPATIBILITY_URI:Landroid/net/Uri;

    .line 247
    :cond_3
    :goto_1
    if-eqz v3, :cond_4

    .line 248
    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    :cond_4
    move-object/from16 v7, v17

    .line 266
    .end local v2    # "cr":Landroid/content/ContentResolver;
    .end local v3    # "contentUri":Landroid/net/Uri;
    .end local v17    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .local v7, "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_5
    :goto_2
    if-nez v16, :cond_c

    .line 267
    if-eqz v7, :cond_6

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 268
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 269
    const/4 v7, 0x0

    .line 271
    :cond_6
    const/16 v20, 0x0

    goto :goto_0

    .line 243
    .end local v7    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2    # "cr":Landroid/content/ContentResolver;
    .restart local v3    # "contentUri":Landroid/net/Uri;
    .restart local v17    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_7
    const/4 v4, 0x2

    move/from16 v0, p3

    if-ne v0, v4, :cond_3

    .line 244
    sget-object v3, Lmiui/provider/CloudAppControll;->CLOUD_RUNNING_COMPATIBILITY_URI:Landroid/net/Uri;

    goto :goto_1

    .line 250
    .end local v2    # "cr":Landroid/content/ContentResolver;
    .end local v3    # "contentUri":Landroid/net/Uri;
    :cond_8
    sget-object v9, Lmiui/provider/CloudAppControll;->dbLock:Ljava/lang/Object;

    monitor-enter v9

    .line 251
    :try_start_0
    new-instance v4, Ljava/io/File;

    const-string v10, "/data/data/com.android.settings/databases/compatibility_settings.db"

    invoke-direct {v4, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 252
    const-string v4, "/data/data/com.android.settings/databases/compatibility_settings.db"

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-static {v4, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 254
    .end local v17    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v7    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_3
    :try_start_1
    monitor-exit v9

    .line 255
    if-nez v7, :cond_9

    const/16 v20, 0x0

    goto :goto_0

    .line 254
    .end local v7    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v17    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v4

    move-object/from16 v7, v17

    .end local v17    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v7    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_4
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v4

    .line 256
    :cond_9
    const-string v8, ""

    .line 257
    .local v8, "tableName":Ljava/lang/String;
    const/4 v4, 0x1

    move/from16 v0, p3

    if-ne v0, v4, :cond_b

    .line 258
    const-string v8, "install_compatibility"

    .line 262
    :cond_a
    :goto_5
    if-eqz v7, :cond_5

    .line 263
    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v10, v5

    move-object v11, v6

    invoke-virtual/range {v7 .. v14}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    goto :goto_2

    .line 259
    :cond_b
    const/4 v4, 0x2

    move/from16 v0, p3

    if-ne v0, v4, :cond_a

    .line 260
    const-string v8, "running_compatibility"

    goto :goto_5

    .line 274
    .end local v8    # "tableName":Ljava/lang/String;
    :cond_c
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_e

    .line 275
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 276
    const/16 v16, 0x0

    .line 277
    if-eqz v7, :cond_d

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 278
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 279
    const/4 v7, 0x0

    .line 281
    :cond_d
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 284
    :cond_e
    const-string v4, "c_message"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 285
    .local v20, "message":Ljava/lang/String;
    if-nez v20, :cond_f

    .line 286
    const-string v20, ""

    .line 287
    :cond_f
    const-string v4, "c_precise"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 288
    .local v21, "precise":I
    const-string v4, "c_versions"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 290
    .local v23, "version":Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_12

    .line 291
    const/4 v4, 0x1

    move/from16 v0, v21

    if-eq v0, v4, :cond_10

    .line 292
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move/from16 v0, p2

    if-lt v0, v4, :cond_10

    .line 293
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 294
    const/16 v16, 0x0

    .line 295
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 296
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 297
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 302
    :cond_10
    new-instance v24, Ljava/util/HashSet;

    invoke-direct/range {v24 .. v24}, Ljava/util/HashSet;-><init>()V

    .line 303
    .local v24, "versionSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const-string v4, "-"

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    .line 304
    .local v25, "versions":[Ljava/lang/String;
    move-object/from16 v15, v25

    .local v15, "arr$":[Ljava/lang/String;
    array-length v0, v15

    move/from16 v19, v0

    .local v19, "len$":I
    const/16 v18, 0x0

    .local v18, "i$":I
    :goto_6
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_11

    aget-object v22, v15, v18

    .line 305
    .local v22, "v":Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 304
    add-int/lit8 v18, v18, 0x1

    goto :goto_6

    .line 307
    .end local v22    # "v":Ljava/lang/String;
    :cond_11
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 308
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 309
    const/16 v16, 0x0

    .line 310
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 311
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 312
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 317
    .end local v15    # "arr$":[Ljava/lang/String;
    .end local v18    # "i$":I
    .end local v19    # "len$":I
    .end local v24    # "versionSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v25    # "versions":[Ljava/lang/String;
    :cond_12
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 318
    const/16 v16, 0x0

    .line 319
    if-eqz v7, :cond_13

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 320
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 321
    const/4 v7, 0x0

    .line 323
    :cond_13
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 325
    .end local v5    # "selection":Ljava/lang/String;
    .end local v6    # "selectionArgs":[Ljava/lang/String;
    .end local v7    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v16    # "cursor":Landroid/database/Cursor;
    .end local v20    # "message":Ljava/lang/String;
    .end local v21    # "precise":I
    .end local v23    # "version":Ljava/lang/String;
    :cond_14
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 254
    .restart local v5    # "selection":Ljava/lang/String;
    .restart local v6    # "selectionArgs":[Ljava/lang/String;
    .restart local v7    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v16    # "cursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v4

    goto/16 :goto_4

    .end local v7    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v17    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_15
    move-object/from16 v7, v17

    .end local v17    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v7    # "db":Landroid/database/sqlite/SQLiteDatabase;
    goto/16 :goto_3
.end method
