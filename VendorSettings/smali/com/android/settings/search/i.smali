.class Lcom/android/vendorsettings/search/i;
.super Landroid/os/AsyncTask;
.source "Index.java"


# instance fields
.field final synthetic apj:Lcom/android/vendorsettings/search/e;


# direct methods
.method private constructor <init>(Lcom/android/vendorsettings/search/e;)V
    .locals 0

    .prologue
    .line 1158
    iput-object p1, p0, Lcom/android/vendorsettings/search/i;->apj:Lcom/android/vendorsettings/search/e;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/vendorsettings/search/e;Lcom/android/vendorsettings/search/f;)V
    .locals 0

    .prologue
    .line 1158
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/search/i;-><init>(Lcom/android/vendorsettings/search/e;)V

    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 1264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1265
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    .line 1267
    const-string v2, "prefs_index"

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 11

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 1271
    .line 1273
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "locale"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1274
    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1275
    invoke-static {v0, p2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1278
    :try_start_0
    const-string v1, "prefs_index"

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "1"

    move-object v0, p1

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1280
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    .line 1281
    if-lt v0, v9, :cond_1

    move v0, v9

    .line 1283
    :goto_0
    if-eqz v1, :cond_0

    .line 1284
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1287
    :cond_0
    return v0

    .line 1281
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1283
    :catchall_0
    move-exception v0

    move-object v1, v10

    :goto_1
    if-eqz v1, :cond_2

    .line 1284
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 1283
    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/List;)Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 1236
    .line 1237
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1239
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    move v1, v2

    .line 1240
    :goto_0
    if-ge v1, v3, :cond_3

    .line 1241
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/provider/SearchIndexableData;

    .line 1242
    if-nez v0, :cond_1

    .line 1240
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1245
    :cond_1
    iget-object v6, v0, Landroid/provider/SearchIndexableData;->className:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1246
    const-string v6, "class_name"

    iget-object v0, v0, Landroid/provider/SearchIndexableData;->className:Ljava/lang/String;

    invoke-direct {p0, p1, v6, v0}, Lcom/android/vendorsettings/search/i;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1248
    :cond_2
    instance-of v6, v0, Lcom/android/vendorsettings/search/n;

    if-eqz v6, :cond_0

    .line 1249
    check-cast v0, Lcom/android/vendorsettings/search/n;

    .line 1250
    iget-object v6, v0, Lcom/android/vendorsettings/search/n;->title:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1251
    const-string v6, "data_title"

    iget-object v0, v0, Lcom/android/vendorsettings/search/n;->title:Ljava/lang/String;

    invoke-direct {p0, p1, v6, v0}, Lcom/android/vendorsettings/search/i;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1257
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1258
    const-string v3, "Index"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Deleting data for locale \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' took "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long/2addr v0, v4

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " millis"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    return v2
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Z)Z
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 1208
    if-nez p5, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/vendorsettings/search/i;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1209
    const-string v0, "Index"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Locale \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is already indexed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    const/4 v0, 0x1

    .line 1230
    :goto_0
    return v0

    .line 1214
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1216
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v6

    move v3, v1

    .line 1217
    :goto_1
    if-ge v3, v6, :cond_1

    .line 1218
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/provider/SearchIndexableData;

    .line 1220
    :try_start_0
    iget-object v2, p0, Lcom/android/vendorsettings/search/i;->apj:Lcom/android/vendorsettings/search/e;

    invoke-static {v2, p1, p2, v0, p4}, Lcom/android/vendorsettings/search/e;->a(Lcom/android/vendorsettings/search/e;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/provider/SearchIndexableData;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1217
    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 1221
    :catch_0
    move-exception v2

    .line 1222
    const-string v7, "Index"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot index: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v0, v0, Landroid/provider/SearchIndexableData;->className:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " for locale: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1227
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1228
    const-string v0, "Index"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Indexing locale \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' took "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long/2addr v2, v4

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " millis"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1230
    goto :goto_0
.end method


# virtual methods
.method protected varargs a([Lcom/android/vendorsettings/search/h;)Ljava/lang/Void;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 1174
    aget-object v0, p1, v2

    iget-object v3, v0, Lcom/android/vendorsettings/search/h;->apk:Ljava/util/List;

    .line 1175
    aget-object v0, p1, v2

    iget-object v0, v0, Lcom/android/vendorsettings/search/h;->apl:Ljava/util/List;

    .line 1176
    aget-object v1, p1, v2

    iget-object v4, v1, Lcom/android/vendorsettings/search/h;->apm:Ljava/util/Map;

    .line 1178
    aget-object v1, p1, v2

    iget-boolean v5, v1, Lcom/android/vendorsettings/search/h;->apn:Z

    .line 1180
    iget-object v1, p0, Lcom/android/vendorsettings/search/i;->apj:Lcom/android/vendorsettings/search/e;

    invoke-static {v1}, Lcom/android/vendorsettings/search/e;->b(Lcom/android/vendorsettings/search/e;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1181
    if-nez v1, :cond_0

    .line 1182
    const-string v0, "Index"

    const-string v1, "Cannot update Index as I cannot get a writable database"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    :goto_0
    return-object v7

    .line 1185
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1188
    :try_start_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1189
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 1190
    invoke-direct {p0, v1, v2, v0}, Lcom/android/vendorsettings/search/i;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/List;)Z

    .line 1192
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    move-object v0, p0

    .line 1193
    invoke-direct/range {v0 .. v5}, Lcom/android/vendorsettings/search/i;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Z)Z

    .line 1196
    :cond_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1198
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1158
    check-cast p1, [Lcom/android/vendorsettings/search/h;

    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/search/i;->a([Lcom/android/vendorsettings/search/h;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1158
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/search/i;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2

    .prologue
    .line 1168
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1169
    iget-object v0, p0, Lcom/android/vendorsettings/search/i;->apj:Lcom/android/vendorsettings/search/e;

    invoke-static {v0}, Lcom/android/vendorsettings/search/e;->a(Lcom/android/vendorsettings/search/e;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1170
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 1162
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 1163
    iget-object v0, p0, Lcom/android/vendorsettings/search/i;->apj:Lcom/android/vendorsettings/search/e;

    invoke-static {v0}, Lcom/android/vendorsettings/search/e;->a(Lcom/android/vendorsettings/search/e;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1164
    return-void
.end method
