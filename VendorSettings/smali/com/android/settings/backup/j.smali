.class public Lcom/android/settings/backup/j;
.super Ljava/lang/Object;
.source "SettingManager.java"


# instance fields
.field private PT:Ljava/util/HashMap;

.field private PU:Lcom/android/internal/widget/ILockSettings;

.field protected mContext:Landroid/content/Context;

.field protected mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/settings/backup/j;->mContext:Landroid/content/Context;

    .line 46
    iget-object v0, p0, Lcom/android/settings/backup/j;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/backup/j;->mResolver:Landroid/content/ContentResolver;

    .line 47
    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 326
    .line 328
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 331
    if-eqz v1, :cond_2

    .line 332
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 333
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 335
    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 340
    :goto_1
    if-eqz v0, :cond_0

    :goto_2
    return-object v0

    .line 337
    :catch_0
    move-exception v0

    .line 338
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v6

    goto :goto_1

    .line 340
    :cond_0
    const-string v0, ""

    goto :goto_2

    .line 337
    :catch_1
    move-exception v1

    move-object v6, v0

    move-object v0, v1

    goto :goto_3

    :cond_1
    move-object v0, v6

    goto :goto_0

    :cond_2
    move-object v0, v6

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/lang/String;
    .locals 3

    .prologue
    .line 344
    if-nez p1, :cond_1

    .line 345
    const-string v0, ""

    .line 364
    :cond_0
    :goto_0
    return-object v0

    .line 347
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 348
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 349
    const-string v2, "content"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz p2, :cond_4

    .line 350
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 351
    const-string v2, "settings"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 352
    const-string v0, "value"

    invoke-static {p0, p1, v0}, Lcom/android/settings/backup/j;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 356
    :cond_2
    :goto_1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 357
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 358
    if-eqz v2, :cond_0

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 359
    const/4 v0, 0x1

    invoke-static {p0, v1, v0}, Lcom/android/settings/backup/j;->a(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 353
    :cond_3
    const-string v2, "media"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 354
    const-string v0, "_data"

    invoke-static {p0, p1, v0}, Lcom/android/settings/backup/j;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 361
    :cond_4
    const-string v2, "file"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 362
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 322
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/settings/backup/j;->a(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private lJ()Lcom/android/internal/widget/ILockSettings;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings/backup/j;->PU:Lcom/android/internal/widget/ILockSettings;

    if-nez v0, :cond_0

    .line 53
    const-string v0, "lock_settings"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/backup/j;->PU:Lcom/android/internal/widget/ILockSettings;

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/android/settings/backup/j;->PU:Lcom/android/internal/widget/ILockSettings;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/android/settings/backup/SettingProtos$SecureSetting;)Landroid/net/Uri;
    .locals 3

    .prologue
    .line 176
    invoke-virtual {p1}, Lcom/android/settings/backup/SettingProtos$SecureSetting;->hasName()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/settings/backup/SettingProtos$SecureSetting;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/settings/backup/SettingProtos$SecureSetting;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 177
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cannot add secure setting which has empty name"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 180
    const-string v1, "name"

    invoke-virtual {p1}, Lcom/android/settings/backup/SettingProtos$SecureSetting;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-virtual {p1}, Lcom/android/settings/backup/SettingProtos$SecureSetting;->hasValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 182
    const-string v1, "value"

    invoke-virtual {p1}, Lcom/android/settings/backup/SettingProtos$SecureSetting;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :cond_2
    iget-object v1, p0, Lcom/android/settings/backup/j;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 185
    return-object v0
.end method

.method public a(Lcom/android/settings/backup/SettingProtos$SystemSetting;)Landroid/net/Uri;
    .locals 3

    .prologue
    .line 163
    invoke-virtual {p1}, Lcom/android/settings/backup/SettingProtos$SystemSetting;->hasName()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/settings/backup/SettingProtos$SystemSetting;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/settings/backup/SettingProtos$SystemSetting;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 164
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cannot add system setting which has empty name"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 167
    const-string v1, "name"

    invoke-virtual {p1}, Lcom/android/settings/backup/SettingProtos$SystemSetting;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-virtual {p1}, Lcom/android/settings/backup/SettingProtos$SystemSetting;->hasValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 169
    const-string v1, "value"

    invoke-virtual {p1}, Lcom/android/settings/backup/SettingProtos$SystemSetting;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :cond_2
    iget-object v1, p0, Lcom/android/settings/backup/j;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 172
    return-object v0
.end method

.method public a(Lcom/android/settings/backup/SettingProtos$LockSetting;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 189
    invoke-virtual {p1}, Lcom/android/settings/backup/SettingProtos$LockSetting;->getName()Ljava/lang/String;

    move-result-object v1

    .line 190
    invoke-virtual {p1}, Lcom/android/settings/backup/SettingProtos$LockSetting;->getValue()J

    move-result-wide v2

    .line 192
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/backup/j;->lJ()Lcom/android/internal/widget/ILockSettings;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v1, v2, v3, v5}, Lcom/android/internal/widget/ILockSettings;->setLong(Ljava/lang/String;JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    const/4 v0, 0x1

    .line 197
    :goto_0
    return v0

    .line 194
    :catch_0
    move-exception v1

    .line 195
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public aw(Ljava/lang/String;)Lcom/android/settings/backup/SettingProtos$SystemSetting;
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 60
    invoke-static {}, Lcom/android/settings/backup/SettingProtos$SystemSetting;->mN()Lcom/android/settings/backup/r;

    move-result-object v7

    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/backup/j;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "name= ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 73
    if-eqz v1, :cond_5

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 74
    invoke-interface {v1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_7

    .line 75
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v2

    .line 76
    const-string v3, "_id"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 77
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/android/settings/backup/r;->aG(Ljava/lang/String;)Lcom/android/settings/backup/r;

    .line 74
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 78
    :cond_1
    const-string v3, "name"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 79
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/android/settings/backup/r;->aH(Ljava/lang/String;)Lcom/android/settings/backup/r;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 87
    :catch_0
    move-exception v0

    move-object v6, v1

    .line 88
    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 90
    if-eqz v6, :cond_2

    .line 91
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 93
    :cond_2
    :goto_3
    invoke-virtual {v7}, Lcom/android/settings/backup/r;->mT()Lcom/android/settings/backup/SettingProtos$SystemSetting;

    move-result-object v0

    :goto_4
    return-object v0

    .line 80
    :cond_3
    :try_start_3
    const-string v3, "value"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 81
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/android/settings/backup/r;->aI(Ljava/lang/String;)Lcom/android/settings/backup/r;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 90
    :catchall_0
    move-exception v0

    :goto_5
    if-eqz v1, :cond_4

    .line 91
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    .line 90
    :cond_5
    if-eqz v1, :cond_6

    .line 91
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6
    move-object v0, v6

    goto :goto_4

    .line 90
    :cond_7
    if-eqz v1, :cond_2

    .line 91
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 90
    :catchall_1
    move-exception v0

    move-object v1, v6

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v1, v6

    goto :goto_5

    .line 87
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public ax(Ljava/lang/String;)Lcom/android/settings/backup/SettingProtos$SecureSetting;
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 98
    invoke-static {}, Lcom/android/settings/backup/SettingProtos$SecureSetting;->ml()Lcom/android/settings/backup/n;

    move-result-object v7

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/backup/j;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "name= ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 111
    if-eqz v1, :cond_5

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 112
    invoke-interface {v1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_7

    .line 113
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v2

    .line 114
    const-string v3, "_id"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 115
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/android/settings/backup/n;->aC(Ljava/lang/String;)Lcom/android/settings/backup/n;

    .line 112
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 116
    :cond_1
    const-string v3, "name"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 117
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/android/settings/backup/n;->aD(Ljava/lang/String;)Lcom/android/settings/backup/n;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 125
    :catch_0
    move-exception v0

    move-object v6, v1

    .line 126
    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 128
    if-eqz v6, :cond_2

    .line 129
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 131
    :cond_2
    :goto_3
    invoke-virtual {v7}, Lcom/android/settings/backup/n;->mr()Lcom/android/settings/backup/SettingProtos$SecureSetting;

    move-result-object v0

    :goto_4
    return-object v0

    .line 118
    :cond_3
    :try_start_3
    const-string v3, "value"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 119
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/android/settings/backup/n;->aE(Ljava/lang/String;)Lcom/android/settings/backup/n;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 128
    :catchall_0
    move-exception v0

    :goto_5
    if-eqz v1, :cond_4

    .line 129
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    .line 128
    :cond_5
    if-eqz v1, :cond_6

    .line 129
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6
    move-object v0, v6

    goto :goto_4

    .line 128
    :cond_7
    if-eqz v1, :cond_2

    .line 129
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 128
    :catchall_1
    move-exception v0

    move-object v1, v6

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v1, v6

    goto :goto_5

    .line 125
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public b(Ljava/util/HashMap;)V
    .locals 0

    .prologue
    .line 260
    iput-object p1, p0, Lcom/android/settings/backup/j;->PT:Ljava/util/HashMap;

    .line 261
    return-void
.end method

.method public ba(I)Ljava/io/File;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 368
    iget-object v1, p0, Lcom/android/settings/backup/j;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Landroid/media/ExtraRingtoneManager;->getRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 370
    if-eqz v1, :cond_0

    .line 371
    iget-object v2, p0, Lcom/android/settings/backup/j;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/settings/backup/j;->b(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 372
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 373
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 377
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 378
    invoke-static {p1}, Landroid/media/ExtraRingtoneManager;->getDefaultSoundInternalUri(I)Landroid/net/Uri;

    move-result-object v1

    .line 379
    if-eqz v1, :cond_1

    .line 380
    new-instance v0, Ljava/io/File;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 383
    :cond_1
    return-object v0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public lK()Ljava/util/Vector;
    .locals 6

    .prologue
    .line 136
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 137
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/settings/backup/j;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 139
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v0

    .line 140
    invoke-static {}, Lcom/android/settings/backup/SettingProtos$LockSetting;->lY()Lcom/android/settings/backup/l;

    move-result-object v2

    .line 141
    const-string v3, "lockscreen.password_type"

    invoke-virtual {v2, v3}, Lcom/android/settings/backup/l;->aA(Ljava/lang/String;)Lcom/android/settings/backup/l;

    .line 142
    int-to-long v4, v0

    invoke-virtual {v2, v4, v5}, Lcom/android/settings/backup/l;->o(J)Lcom/android/settings/backup/l;

    .line 143
    invoke-virtual {v2}, Lcom/android/settings/backup/l;->mf()Lcom/android/settings/backup/SettingProtos$LockSetting;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 145
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/backup/j;->lJ()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    const-string v2, "lockscreen.password_salt"

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v2, v4, v5, v3}, Lcom/android/internal/widget/ILockSettings;->getLong(Ljava/lang/String;JI)J

    move-result-wide v2

    .line 146
    invoke-static {}, Lcom/android/settings/backup/SettingProtos$LockSetting;->lY()Lcom/android/settings/backup/l;

    move-result-object v0

    .line 147
    const-string v4, "lockscreen.password_salt"

    invoke-virtual {v0, v4}, Lcom/android/settings/backup/l;->aA(Ljava/lang/String;)Lcom/android/settings/backup/l;

    .line 148
    invoke-virtual {v0, v2, v3}, Lcom/android/settings/backup/l;->o(J)Lcom/android/settings/backup/l;

    .line 149
    invoke-virtual {v0}, Lcom/android/settings/backup/l;->mf()Lcom/android/settings/backup/SettingProtos$LockSetting;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 151
    invoke-direct {p0}, Lcom/android/settings/backup/j;->lJ()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    const-string v2, "lock_pattern_autolock"

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v2, v4, v5, v3}, Lcom/android/internal/widget/ILockSettings;->getLong(Ljava/lang/String;JI)J

    move-result-wide v2

    .line 152
    invoke-static {}, Lcom/android/settings/backup/SettingProtos$LockSetting;->lY()Lcom/android/settings/backup/l;

    move-result-object v0

    .line 153
    const-string v4, "lock_pattern_autolock"

    invoke-virtual {v0, v4}, Lcom/android/settings/backup/l;->aA(Ljava/lang/String;)Lcom/android/settings/backup/l;

    .line 154
    invoke-virtual {v0, v2, v3}, Lcom/android/settings/backup/l;->o(J)Lcom/android/settings/backup/l;

    .line 155
    invoke-virtual {v0}, Lcom/android/settings/backup/l;->mf()Lcom/android/settings/backup/SettingProtos$LockSetting;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :goto_0
    return-object v1

    .line 156
    :catch_0
    move-exception v0

    .line 157
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public lL()Ljava/util/Vector;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 201
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 204
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/backup/j;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "name"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 212
    if-nez v1, :cond_1

    .line 224
    if-eqz v1, :cond_0

    .line 225
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v0, v6

    .line 228
    :goto_0
    return-object v0

    .line 215
    :cond_1
    :try_start_1
    const-string v0, "name"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 217
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 218
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_3

    .line 219
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 220
    invoke-virtual {v6, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 221
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 224
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_2

    .line 225
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 224
    :cond_3
    if-eqz v1, :cond_4

    .line 225
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v0, v6

    .line 228
    goto :goto_0

    .line 224
    :catchall_1
    move-exception v0

    move-object v1, v7

    goto :goto_2
.end method

.method public lM()Ljava/util/Vector;
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 232
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    .line 235
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/backup/j;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "name"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 243
    :try_start_1
    const-string v0, "name"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 245
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 246
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_1

    .line 247
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 248
    invoke-virtual {v7, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 249
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 252
    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v1, :cond_0

    .line 253
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    .line 252
    :cond_1
    if-eqz v1, :cond_2

    .line 253
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 256
    :cond_2
    return-object v7

    .line 252
    :catchall_1
    move-exception v0

    move-object v1, v6

    goto :goto_1
.end method

.method public lN()V
    .locals 8

    .prologue
    const/16 v7, 0x3e8

    .line 264
    sget-object v2, Lcom/android/settings/backup/h;->PM:[Lcom/android/settings/backup/A;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v4, v2, v1

    .line 265
    iget-object v0, p0, Lcom/android/settings/backup/j;->PT:Ljava/util/HashMap;

    iget-object v5, v4, Lcom/android/settings/backup/A;->Qg:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 266
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 264
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 269
    :cond_1
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 270
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, v4, Lcom/android/settings/backup/A;->Qh:Ljava/lang/String;

    invoke-static {v0}, Landroid/miui/Shell;->remove(Ljava/lang/String;)Z

    .line 274
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v6, v4, Lcom/android/settings/backup/A;->Qh:Ljava/lang/String;

    invoke-static {v0, v6}, Landroid/miui/Shell;->copy(Ljava/lang/String;Ljava/lang/String;)Z

    .line 275
    iget-object v0, v4, Lcom/android/settings/backup/A;->Qh:Ljava/lang/String;

    const/16 v6, 0x180

    invoke-static {v0, v6}, Landroid/miui/Shell;->chmod(Ljava/lang/String;I)Z

    .line 276
    iget-object v0, v4, Lcom/android/settings/backup/A;->Qh:Ljava/lang/String;

    invoke-static {v0, v7, v7}, Landroid/miui/Shell;->chown(Ljava/lang/String;II)Z

    .line 277
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 279
    :cond_2
    return-void
.end method

.method public lO()V
    .locals 3

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/settings/backup/j;->PT:Ljava/util/HashMap;

    const-string v1, "settings_descript.xml"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 283
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 296
    :cond_0
    :goto_0
    return-void

    .line 286
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 287
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    new-instance v0, Lcom/android/settings/backup/i;

    invoke-direct {v0}, Lcom/android/settings/backup/i;-><init>()V

    .line 289
    invoke-virtual {v0, v1}, Lcom/android/settings/backup/i;->d(Ljava/io/File;)Z

    .line 290
    iget-object v1, v0, Lcom/android/settings/backup/i;->PN:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/backup/j;->m(Ljava/lang/String;I)V

    .line 291
    iget-object v1, v0, Lcom/android/settings/backup/i;->PO:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/backup/j;->m(Ljava/lang/String;I)V

    .line 292
    iget-object v1, v0, Lcom/android/settings/backup/i;->PP:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/backup/j;->m(Ljava/lang/String;I)V

    .line 293
    iget-object v1, v0, Lcom/android/settings/backup/i;->PQ:Ljava/lang/String;

    const/16 v2, 0x8

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/backup/j;->m(Ljava/lang/String;I)V

    .line 294
    iget-object v0, v0, Lcom/android/settings/backup/i;->PR:Ljava/lang/String;

    const/16 v1, 0x10

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/backup/j;->m(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public m(Ljava/lang/String;I)V
    .locals 4

    .prologue
    .line 299
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 302
    :cond_1
    iget-object v0, p0, Lcom/android/settings/backup/j;->PT:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 303
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 306
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 307
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lmiui/os/Environment;->getExternalStorageMiuiDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "ringtone"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 309
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 310
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 312
    :cond_2
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 313
    invoke-static {v1, v2}, Lmiui/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 314
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 315
    iget-object v0, p0, Lcom/android/settings/backup/j;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v0, p2, v2}, Landroid/media/ExtraRingtoneManager;->saveDefaultSound(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 317
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method
