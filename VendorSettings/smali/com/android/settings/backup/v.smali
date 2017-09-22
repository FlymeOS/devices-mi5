.class Lcom/android/settings/backup/v;
.super Ljava/lang/Object;
.source "SettingsAgent.java"


# instance fields
.field private PT:Ljava/util/HashMap;

.field private Py:Ljava/io/File;

.field private Qc:Lcom/android/settings/backup/j;

.field final synthetic Qd:Lcom/android/settings/backup/t;


# direct methods
.method private constructor <init>(Lcom/android/settings/backup/t;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/settings/backup/v;->Qd:Lcom/android/settings/backup/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/backup/t;Lcom/android/settings/backup/u;)V
    .locals 0

    .prologue
    .line 181
    invoke-direct {p0, p1}, Lcom/android/settings/backup/v;-><init>(Lcom/android/settings/backup/t;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/ParcelFileDescriptor;)I
    .locals 12

    .prologue
    const/4 v6, 0x0

    .line 187
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/settings/backup/v;->Qd:Lcom/android/settings/backup/t;

    iget-object v1, v1, Lcom/android/settings/backup/t;->PL:Lmiui/app/backup/FullBackupAgent;

    invoke-virtual {v1}, Lmiui/app/backup/FullBackupAgent;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "_tmp_attach"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/backup/v;->Py:Ljava/io/File;

    .line 188
    iget-object v0, p0, Lcom/android/settings/backup/v;->Py:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/android/settings/backup/v;->Py:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 192
    :cond_0
    new-instance v0, Lcom/android/settings/backup/j;

    iget-object v1, p0, Lcom/android/settings/backup/v;->Qd:Lcom/android/settings/backup/t;

    iget-object v1, v1, Lcom/android/settings/backup/t;->PL:Lmiui/app/backup/FullBackupAgent;

    invoke-direct {v0, v1}, Lcom/android/settings/backup/j;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/backup/v;->Qc:Lcom/android/settings/backup/j;

    .line 193
    invoke-static {}, Lcom/android/settings/backup/SettingProtos$Settings;->mz()Lcom/android/settings/backup/p;

    move-result-object v1

    .line 194
    iget-object v0, p0, Lcom/android/settings/backup/v;->Qc:Lcom/android/settings/backup/j;

    invoke-virtual {v0}, Lcom/android/settings/backup/j;->lL()Ljava/util/Vector;

    move-result-object v0

    .line 195
    iget-object v2, p0, Lcom/android/settings/backup/v;->Qc:Lcom/android/settings/backup/j;

    invoke-virtual {v2}, Lcom/android/settings/backup/j;->lM()Ljava/util/Vector;

    move-result-object v2

    .line 196
    iget-object v3, p0, Lcom/android/settings/backup/v;->Qc:Lcom/android/settings/backup/j;

    invoke-virtual {v3}, Lcom/android/settings/backup/j;->lK()Ljava/util/Vector;

    move-result-object v3

    .line 197
    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 199
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/backup/v;->Qc:Lcom/android/settings/backup/j;

    invoke-virtual {v5, v0}, Lcom/android/settings/backup/j;->aw(Ljava/lang/String;)Lcom/android/settings/backup/SettingProtos$SystemSetting;

    move-result-object v0

    .line 200
    if-eqz v0, :cond_1

    .line 201
    invoke-virtual {v1, v0}, Lcom/android/settings/backup/p;->b(Lcom/android/settings/backup/SettingProtos$SystemSetting;)Lcom/android/settings/backup/p;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 203
    :catch_0
    move-exception v0

    .line 204
    const-string v5, "Backup:SettingsAgent"

    const-string v7, "Cannot load system setting "

    invoke-static {v5, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 207
    :cond_2
    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 209
    :try_start_1
    iget-object v4, p0, Lcom/android/settings/backup/v;->Qc:Lcom/android/settings/backup/j;

    invoke-virtual {v4, v0}, Lcom/android/settings/backup/j;->ax(Ljava/lang/String;)Lcom/android/settings/backup/SettingProtos$SecureSetting;

    move-result-object v0

    .line 210
    if-eqz v0, :cond_3

    .line 211
    invoke-virtual {v1, v0}, Lcom/android/settings/backup/p;->d(Lcom/android/settings/backup/SettingProtos$SecureSetting;)Lcom/android/settings/backup/p;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 213
    :catch_1
    move-exception v0

    .line 214
    const-string v4, "Backup:SettingsAgent"

    const-string v5, "Cannot load secure setting "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 217
    :cond_4
    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/backup/SettingProtos$LockSetting;

    .line 218
    invoke-virtual {v1, v0}, Lcom/android/settings/backup/p;->d(Lcom/android/settings/backup/SettingProtos$LockSetting;)Lcom/android/settings/backup/p;

    goto :goto_2

    .line 220
    :cond_5
    invoke-static {}, Lcom/android/settings/backup/SyncRootProtos$SyncRoot;->nb()Lcom/android/settings/backup/y;

    move-result-object v0

    .line 221
    invoke-virtual {v1}, Lcom/android/settings/backup/p;->mF()Lcom/android/settings/backup/SettingProtos$Settings;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/backup/y;->f(Lcom/android/settings/backup/SettingProtos$Settings;)Lcom/android/settings/backup/y;

    .line 222
    const/4 v2, 0x0

    .line 224
    :try_start_2
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 225
    :try_start_3
    invoke-virtual {v0}, Lcom/android/settings/backup/y;->nh()Lcom/android/settings/backup/SyncRootProtos$SyncRoot;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/settings/backup/SyncRootProtos$SyncRoot;->writeTo(Ljava/io/OutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 227
    if-eqz v1, :cond_6

    .line 228
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 233
    :cond_6
    sget-object v1, Lcom/android/settings/backup/h;->PM:[Lcom/android/settings/backup/A;

    array-length v2, v1

    move v0, v6

    :goto_3
    if-ge v0, v2, :cond_8

    aget-object v3, v1, v0

    .line 234
    iget-object v4, p0, Lcom/android/settings/backup/v;->Qd:Lcom/android/settings/backup/t;

    iget-object v4, v4, Lcom/android/settings/backup/t;->PL:Lmiui/app/backup/FullBackupAgent;

    iget-object v3, v3, Lcom/android/settings/backup/A;->Qh:Ljava/lang/String;

    invoke-virtual {v4, v3}, Lmiui/app/backup/FullBackupAgent;->addAttachedFile(Ljava/lang/String;)V

    .line 233
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 227
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_4
    if-eqz v1, :cond_7

    .line 228
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_7
    throw v0

    .line 237
    :cond_8
    iget-object v0, p0, Lcom/android/settings/backup/v;->Qc:Lcom/android/settings/backup/j;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/backup/j;->ba(I)Ljava/io/File;

    move-result-object v7

    .line 238
    iget-object v0, p0, Lcom/android/settings/backup/v;->Qc:Lcom/android/settings/backup/j;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/settings/backup/j;->ba(I)Ljava/io/File;

    move-result-object v8

    .line 239
    iget-object v0, p0, Lcom/android/settings/backup/v;->Qc:Lcom/android/settings/backup/j;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/settings/backup/j;->ba(I)Ljava/io/File;

    move-result-object v9

    .line 240
    iget-object v0, p0, Lcom/android/settings/backup/v;->Qc:Lcom/android/settings/backup/j;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/settings/backup/j;->ba(I)Ljava/io/File;

    move-result-object v10

    .line 241
    iget-object v0, p0, Lcom/android/settings/backup/v;->Qc:Lcom/android/settings/backup/j;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/android/settings/backup/j;->ba(I)Ljava/io/File;

    move-result-object v11

    .line 242
    new-instance v0, Lcom/android/settings/backup/i;

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/backup/i;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/settings/backup/v;->Py:Ljava/io/File;

    const-string v3, "settings_descript.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/backup/i;->c(Ljava/io/File;)V

    .line 245
    iget-object v0, p0, Lcom/android/settings/backup/v;->Qd:Lcom/android/settings/backup/t;

    iget-object v0, v0, Lcom/android/settings/backup/t;->PL:Lmiui/app/backup/FullBackupAgent;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/app/backup/FullBackupAgent;->addAttachedFile(Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/android/settings/backup/v;->Qd:Lcom/android/settings/backup/t;

    iget-object v0, v0, Lcom/android/settings/backup/t;->PL:Lmiui/app/backup/FullBackupAgent;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/app/backup/FullBackupAgent;->addAttachedFile(Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/android/settings/backup/v;->Qd:Lcom/android/settings/backup/t;

    iget-object v0, v0, Lcom/android/settings/backup/t;->PL:Lmiui/app/backup/FullBackupAgent;

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/app/backup/FullBackupAgent;->addAttachedFile(Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/android/settings/backup/v;->Qd:Lcom/android/settings/backup/t;

    iget-object v0, v0, Lcom/android/settings/backup/t;->PL:Lmiui/app/backup/FullBackupAgent;

    invoke-virtual {v10}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/app/backup/FullBackupAgent;->addAttachedFile(Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/android/settings/backup/v;->Qd:Lcom/android/settings/backup/t;

    iget-object v0, v0, Lcom/android/settings/backup/t;->PL:Lmiui/app/backup/FullBackupAgent;

    invoke-virtual {v11}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/app/backup/FullBackupAgent;->addAttachedFile(Ljava/lang/String;)V

    .line 250
    return v6

    .line 227
    :catchall_1
    move-exception v0

    goto/16 :goto_4
.end method

.method public a(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)I
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 312
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/settings/backup/v;->Py:Ljava/io/File;

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 317
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 320
    const/16 v2, 0x2000

    :try_start_2
    new-array v2, v2, [B

    .line 322
    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_2

    .line 323
    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 326
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 327
    :goto_1
    :try_start_3
    const-string v3, "Backup:SettingsAgent"

    const-string v4, "IllegalArgumentException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 331
    if-eqz v2, :cond_0

    .line 333
    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 338
    :cond_0
    :goto_2
    if-eqz v1, :cond_1

    .line 340
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 346
    :cond_1
    :goto_3
    return v6

    .line 325
    :cond_2
    :try_start_6
    iget-object v2, p0, Lcom/android/settings/backup/v;->PT:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_b
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 331
    if-eqz v3, :cond_3

    .line 333
    :try_start_7
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 338
    :cond_3
    :goto_4
    if-eqz v1, :cond_1

    .line 340
    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_3

    .line 341
    :catch_1
    move-exception v0

    .line 342
    const-string v1, "Backup:SettingsAgent"

    const-string v2, "IOException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 334
    :catch_2
    move-exception v0

    .line 335
    const-string v2, "Backup:SettingsAgent"

    const-string v3, "IOException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 334
    :catch_3
    move-exception v0

    .line 335
    const-string v2, "Backup:SettingsAgent"

    const-string v3, "IOException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 341
    :catch_4
    move-exception v0

    .line 342
    const-string v1, "Backup:SettingsAgent"

    const-string v2, "IOException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 328
    :catch_5
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    .line 329
    :goto_5
    :try_start_9
    const-string v2, "Backup:SettingsAgent"

    const-string v4, "IOException"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 331
    if-eqz v3, :cond_4

    .line 333
    :try_start_a
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 338
    :cond_4
    :goto_6
    if-eqz v1, :cond_1

    .line 340
    :try_start_b
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    goto :goto_3

    .line 341
    :catch_6
    move-exception v0

    .line 342
    const-string v1, "Backup:SettingsAgent"

    const-string v2, "IOException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 334
    :catch_7
    move-exception v0

    .line 335
    const-string v2, "Backup:SettingsAgent"

    const-string v3, "IOException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 331
    :catchall_0
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_7
    if-eqz v3, :cond_5

    .line 333
    :try_start_c
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    .line 338
    :cond_5
    :goto_8
    if-eqz v1, :cond_6

    .line 340
    :try_start_d
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    .line 343
    :cond_6
    :goto_9
    throw v0

    .line 334
    :catch_8
    move-exception v2

    .line 335
    const-string v3, "Backup:SettingsAgent"

    const-string v4, "IOException"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 341
    :catch_9
    move-exception v1

    .line 342
    const-string v2, "Backup:SettingsAgent"

    const-string v3, "IOException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 331
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_7

    :catchall_2
    move-exception v0

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object v3, v2

    goto :goto_7

    .line 328
    :catch_a
    move-exception v0

    move-object v1, v2

    goto :goto_5

    :catch_b
    move-exception v0

    goto :goto_5

    .line 326
    :catch_c
    move-exception v0

    move-object v1, v2

    goto/16 :goto_1

    :catch_d
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto/16 :goto_1
.end method

.method public a(Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I
    .locals 7

    .prologue
    .line 254
    new-instance v6, Ljava/io/File;

    iget-object v0, p0, Lcom/android/settings/backup/v;->Py:Ljava/io/File;

    const-string v1, "settings_descript.xml"

    invoke-direct {v6, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 255
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    sget-object v1, Lmiui/app/backup/BackupManager;->DOMAIN_ATTACH:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v6}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    move-object v0, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lmiui/app/backup/FullBackupProxy;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I

    .line 259
    :cond_0
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 260
    const/4 v0, 0x0

    return v0
.end method

.method public b(Landroid/os/ParcelFileDescriptor;)I
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 264
    new-instance v0, Lcom/android/settings/backup/j;

    iget-object v1, p0, Lcom/android/settings/backup/v;->Qd:Lcom/android/settings/backup/t;

    iget-object v1, v1, Lcom/android/settings/backup/t;->PL:Lmiui/app/backup/FullBackupAgent;

    invoke-direct {v0, v1}, Lcom/android/settings/backup/j;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/backup/v;->Qc:Lcom/android/settings/backup/j;

    .line 267
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 268
    :try_start_1
    invoke-static {v1}, Lcom/android/settings/backup/SyncRootProtos$SyncRoot;->a(Ljava/io/InputStream;)Lcom/android/settings/backup/SyncRootProtos$SyncRoot;

    move-result-object v0

    .line 270
    if-eqz v0, :cond_0

    .line 271
    invoke-virtual {v0}, Lcom/android/settings/backup/SyncRootProtos$SyncRoot;->na()Lcom/android/settings/backup/SettingProtos$Settings;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 273
    :cond_0
    if-nez v2, :cond_2

    .line 274
    const/4 v0, 0x6

    .line 298
    if-eqz v1, :cond_1

    .line 299
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 308
    :cond_1
    :goto_0
    return v0

    .line 276
    :cond_2
    :try_start_2
    invoke-virtual {v2}, Lcom/android/settings/backup/SettingProtos$Settings;->mw()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/backup/SettingProtos$SystemSetting;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 278
    :try_start_3
    iget-object v4, p0, Lcom/android/settings/backup/v;->Qc:Lcom/android/settings/backup/j;

    invoke-virtual {v4, v0}, Lcom/android/settings/backup/j;->a(Lcom/android/settings/backup/SettingProtos$SystemSetting;)Landroid/net/Uri;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 279
    :catch_0
    move-exception v0

    .line 280
    :try_start_4
    const-string v4, "Backup:SettingsAgent"

    const-string v5, "Cannot add system setting "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 298
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_3

    .line 299
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    :cond_3
    throw v0

    .line 283
    :cond_4
    :try_start_5
    invoke-virtual {v2}, Lcom/android/settings/backup/SettingProtos$Settings;->mx()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/backup/SettingProtos$SecureSetting;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 285
    :try_start_6
    iget-object v4, p0, Lcom/android/settings/backup/v;->Qc:Lcom/android/settings/backup/j;

    invoke-virtual {v4, v0}, Lcom/android/settings/backup/j;->a(Lcom/android/settings/backup/SettingProtos$SecureSetting;)Landroid/net/Uri;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    .line 286
    :catch_1
    move-exception v0

    .line 287
    :try_start_7
    const-string v4, "Backup:SettingsAgent"

    const-string v5, "Cannot add secure setting "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 290
    :cond_5
    invoke-virtual {v2}, Lcom/android/settings/backup/SettingProtos$Settings;->my()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/backup/SettingProtos$LockSetting;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 292
    :try_start_8
    iget-object v3, p0, Lcom/android/settings/backup/v;->Qc:Lcom/android/settings/backup/j;

    invoke-virtual {v3, v0}, Lcom/android/settings/backup/j;->a(Lcom/android/settings/backup/SettingProtos$LockSetting;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_4

    .line 293
    :catch_2
    move-exception v0

    .line 294
    :try_start_9
    const-string v3, "Backup:SettingsAgent"

    const-string v4, "Cannot add lock setting "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_4

    .line 298
    :cond_6
    if-eqz v1, :cond_7

    .line 299
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 303
    :cond_7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/backup/v;->PT:Ljava/util/HashMap;

    .line 304
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/settings/backup/v;->Qd:Lcom/android/settings/backup/t;

    iget-object v1, v1, Lcom/android/settings/backup/t;->PL:Lmiui/app/backup/FullBackupAgent;

    invoke-virtual {v1}, Lmiui/app/backup/FullBackupAgent;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "_tmp_attach"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/backup/v;->Py:Ljava/io/File;

    .line 305
    iget-object v0, p0, Lcom/android/settings/backup/v;->Py:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_8

    .line 306
    iget-object v0, p0, Lcom/android/settings/backup/v;->Py:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 308
    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 298
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_2
.end method

.method public mW()I
    .locals 2

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/settings/backup/v;->Qc:Lcom/android/settings/backup/j;

    iget-object v1, p0, Lcom/android/settings/backup/v;->PT:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/android/settings/backup/j;->b(Ljava/util/HashMap;)V

    .line 351
    iget-object v0, p0, Lcom/android/settings/backup/v;->Qc:Lcom/android/settings/backup/j;

    invoke-virtual {v0}, Lcom/android/settings/backup/j;->lN()V

    .line 352
    iget-object v0, p0, Lcom/android/settings/backup/v;->Qc:Lcom/android/settings/backup/j;

    invoke-virtual {v0}, Lcom/android/settings/backup/j;->lO()V

    .line 353
    iget-object v0, p0, Lcom/android/settings/backup/v;->Py:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/android/settings/backup/v;->Py:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/os/FileUtils;->rm(Ljava/lang/String;)Z

    .line 356
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
