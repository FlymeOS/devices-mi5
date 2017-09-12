.class public Lcom/android/server/securespaces/PackageManagerQueue;
.super Ljava/lang/Object;
.source "PackageManagerQueue.java"


# static fields
.field private static final DIRECTORY:Ljava/lang/String; = ".Spaces"

.field private static final FILE_NAME:Ljava/lang/String; = "pmops"

.field public static final PMO_ADDEXCLUDEWIPE:I = 0x7

.field public static final PMO_CLEANUSERDATA:I = 0x8

.field public static final PMO_CLEARUSERDATA:I = 0x6

.field public static final PMO_CREATEUSERCONFIG:I = 0x5

.field public static final PMO_CREATEUSERDATA:I = 0x0

.field public static final PMO_DELETECACHEDIRS:I = 0x4

.field public static final PMO_DELETECODECACHEDIRS:I = 0x3

.field public static final PMO_LINKNATIVELIBRARYDIR:I = 0x2

.field public static final PMO_REMOVE:I = 0x1

.field private static final SALT_LENGTH:I = 0x10

.field static final TAG:Ljava/lang/String; = "PackageManagerQueue"

.field private static final VERSION:I = 0x2

.field private static final pmqLock:Ljava/lang/Object;

.field private static sInstance:Lcom/android/server/securespaces/PackageManagerQueue;


# instance fields
.field private nativeLibraryDir:Ljava/lang/String;

.field private opCode:I

.field private packageName:Ljava/lang/String;

.field private seinfo:Ljava/lang/String;

.field private uid:I

.field private user:I

.field private uuid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/securespaces/PackageManagerQueue;->sInstance:Lcom/android/server/securespaces/PackageManagerQueue;

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/securespaces/PackageManagerQueue;->pmqLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput v1, p0, Lcom/android/server/securespaces/PackageManagerQueue;->opCode:I

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/securespaces/PackageManagerQueue;->packageName:Ljava/lang/String;

    .line 65
    iput v1, p0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    .line 66
    iput v1, p0, Lcom/android/server/securespaces/PackageManagerQueue;->uid:I

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/securespaces/PackageManagerQueue;->seinfo:Ljava/lang/String;

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/securespaces/PackageManagerQueue;->nativeLibraryDir:Ljava/lang/String;

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/securespaces/PackageManagerQueue;->uuid:Ljava/lang/String;

    .line 80
    return-void
.end method

.method private checkUserData(ILcom/android/server/pm/Installer;)V
    .locals 12
    .param p1, "userId"    # I
    .param p2, "installer"    # Lcom/android/server/pm/Installer;

    .prologue
    .line 419
    const-string v0, "PackageManagerQueue"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Check user data for second space , user id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    const/16 v0, -0x2710

    if-ne p1, v0, :cond_1

    .line 421
    const-string v0, "PackageManagerQueue"

    const-string v1, "user id can\'t be -10000"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    :cond_0
    return-void

    .line 424
    :cond_1
    const-string v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v11

    check-cast v11, Lcom/android/server/pm/PackageManagerService;

    .line 425
    .local v11, "pms":Lcom/android/server/pm/PackageManagerService;
    const/4 v0, 0x0

    invoke-virtual {v11, v0, p1}, Lcom/android/server/pm/PackageManagerService;->getInstalledApplications(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v7

    .line 426
    .local v7, "applicationInfos":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v7, :cond_0

    .line 427
    invoke-virtual {v7}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v8

    .line 428
    .local v8, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ApplicationInfo;

    .line 429
    .local v6, "app":Landroid/content/pm/ApplicationInfo;
    iget-object v0, v6, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    iget-object v1, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Landroid/os/Environment;->getDataUserPackageDirectory(Ljava/lang/String;ILjava/lang/String;)Ljava/io/File;

    move-result-object v9

    .line 430
    .local v9, "dataPath":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 431
    const-string v0, "PackageManagerQueue"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create user data : {package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", volumeUuid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v6, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", seinfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v6, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    iget-object v1, v6, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    iget-object v2, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v0, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p1, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    iget-object v5, v6, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    move-object v0, p2

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/Installer;->createUserData(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)I

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/securespaces/PackageManagerQueue;
    .locals 2

    .prologue
    .line 83
    const-class v1, Lcom/android/server/securespaces/PackageManagerQueue;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/securespaces/PackageManagerQueue;->sInstance:Lcom/android/server/securespaces/PackageManagerQueue;

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Lcom/android/server/securespaces/PackageManagerQueue;

    invoke-direct {v0}, Lcom/android/server/securespaces/PackageManagerQueue;-><init>()V

    sput-object v0, Lcom/android/server/securespaces/PackageManagerQueue;->sInstance:Lcom/android/server/securespaces/PackageManagerQueue;

    .line 85
    :cond_0
    sget-object v0, Lcom/android/server/securespaces/PackageManagerQueue;->sInstance:Lcom/android/server/securespaces/PackageManagerQueue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public processQueue(Lcom/android/server/pm/Installer;Ljava/lang/Object;I)V
    .locals 23
    .param p1, "installer"    # Lcom/android/server/pm/Installer;
    .param p2, "installerLock"    # Ljava/lang/Object;
    .param p3, "userId"    # I

    .prologue
    .line 248
    new-instance v19, Ljava/io/File;

    invoke-static/range {p3 .. p3}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v3

    const-string v4, ".Spaces"

    move-object/from16 v0, v19

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 249
    .local v19, "userQueueDir":Ljava/io/File;
    new-instance v20, Ljava/io/File;

    const-string v3, "pmops"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 251
    .local v20, "userQueueFile":Ljava/io/File;
    const/4 v14, 0x0

    .line 252
    .local v14, "fis":Ljava/io/FileInputStream;
    const/4 v9, 0x0

    .line 253
    .local v9, "bis":Ljava/io/BufferedInputStream;
    const/4 v11, 0x0

    .line 255
    .local v11, "dis":Ljava/io/DataInputStream;
    sget-object v22, Lcom/android/server/securespaces/PackageManagerQueue;->pmqLock:Ljava/lang/Object;

    monitor-enter v22

    .line 257
    :try_start_0
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_11
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_b
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    move-result v3

    if-nez v3, :cond_1

    .line 405
    if-eqz v11, :cond_0

    :try_start_1
    invoke-virtual {v11}, Ljava/io/DataInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 409
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v22

    .line 416
    :goto_1
    return-void

    .line 406
    :catch_0
    move-exception v13

    .line 408
    .local v13, "e":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 411
    .end local v13    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_2
    monitor-exit v22
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 263
    :cond_1
    :try_start_3
    new-instance v15, Ljava/io/FileInputStream;

    move-object/from16 v0, v20

    invoke-direct {v15, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_11
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_b
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 264
    .end local v14    # "fis":Ljava/io/FileInputStream;
    .local v15, "fis":Ljava/io/FileInputStream;
    :try_start_4
    new-instance v10, Ljava/io/BufferedInputStream;

    const/16 v3, 0x800

    invoke-direct {v10, v15, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_12
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_c
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 265
    .end local v9    # "bis":Ljava/io/BufferedInputStream;
    .local v10, "bis":Ljava/io/BufferedInputStream;
    :try_start_5
    new-instance v12, Ljava/io/DataInputStream;

    invoke-direct {v12, v10}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_13
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_10
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_d
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    .line 269
    .end local v11    # "dis":Ljava/io/DataInputStream;
    .local v12, "dis":Ljava/io/DataInputStream;
    const/16 v3, 0x10

    :try_start_6
    new-array v0, v3, [B

    move-object/from16 v16, v0

    .line 270
    .local v16, "headerSalt":[B
    const/16 v3, 0x10

    new-array v0, v3, [B

    move-object/from16 v17, v0

    .line 273
    .local v17, "recordSalt":[B
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readInt()I

    move-result v21

    .line 274
    .local v21, "version":I
    const/4 v3, 0x2

    move/from16 v0, v21

    if-eq v0, v3, :cond_3

    .line 275
    const-string v3, "PackageManagerQueue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error processing PackageManager op-file for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Unrecognized version."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 405
    if-eqz v12, :cond_2

    :try_start_7
    invoke-virtual {v12}, Ljava/io/DataInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 409
    :cond_2
    :goto_3
    :try_start_8
    monitor-exit v22

    move-object v11, v12

    .end local v12    # "dis":Ljava/io/DataInputStream;
    .restart local v11    # "dis":Ljava/io/DataInputStream;
    move-object v9, v10

    .end local v10    # "bis":Ljava/io/BufferedInputStream;
    .restart local v9    # "bis":Ljava/io/BufferedInputStream;
    move-object v14, v15

    .end local v15    # "fis":Ljava/io/FileInputStream;
    .restart local v14    # "fis":Ljava/io/FileInputStream;
    goto :goto_1

    .line 406
    .end local v9    # "bis":Ljava/io/BufferedInputStream;
    .end local v11    # "dis":Ljava/io/DataInputStream;
    .end local v14    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "bis":Ljava/io/BufferedInputStream;
    .restart local v12    # "dis":Ljava/io/DataInputStream;
    .restart local v15    # "fis":Ljava/io/FileInputStream;
    :catch_1
    move-exception v13

    .line 408
    .restart local v13    # "e":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_3

    .line 411
    .end local v13    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v3

    move-object v11, v12

    .end local v12    # "dis":Ljava/io/DataInputStream;
    .restart local v11    # "dis":Ljava/io/DataInputStream;
    move-object v9, v10

    .end local v10    # "bis":Ljava/io/BufferedInputStream;
    .restart local v9    # "bis":Ljava/io/BufferedInputStream;
    move-object v14, v15

    .end local v15    # "fis":Ljava/io/FileInputStream;
    .restart local v14    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .line 278
    .end local v9    # "bis":Ljava/io/BufferedInputStream;
    .end local v11    # "dis":Ljava/io/DataInputStream;
    .end local v14    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "bis":Ljava/io/BufferedInputStream;
    .restart local v12    # "dis":Ljava/io/DataInputStream;
    .restart local v15    # "fis":Ljava/io/FileInputStream;
    :cond_3
    :try_start_9
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 281
    :goto_4
    invoke-virtual {v10}, Ljava/io/BufferedInputStream;->available()I

    move-result v3

    if-lez v3, :cond_a

    .line 283
    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 284
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/securespaces/PackageManagerQueue;->opCode:I

    .line 286
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/securespaces/PackageManagerQueue;->opCode:I

    packed-switch v3, :pswitch_data_0

    .line 324
    const-string v3, "PackageManagerQueue"

    const-string v4, "Unknown opcode in queueOperation."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_4

    .line 394
    .end local v16    # "headerSalt":[B
    .end local v17    # "recordSalt":[B
    .end local v21    # "version":I
    :catch_2
    move-exception v13

    move-object v11, v12

    .end local v12    # "dis":Ljava/io/DataInputStream;
    .restart local v11    # "dis":Ljava/io/DataInputStream;
    move-object v9, v10

    .end local v10    # "bis":Ljava/io/BufferedInputStream;
    .restart local v9    # "bis":Ljava/io/BufferedInputStream;
    move-object v14, v15

    .line 395
    .end local v15    # "fis":Ljava/io/FileInputStream;
    .local v13, "e":Ljava/io/FileNotFoundException;
    .restart local v14    # "fis":Ljava/io/FileInputStream;
    :goto_5
    :try_start_a
    const-string v3, "PackageManagerQueue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FileNotFoundException caught in writeOp(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    invoke-virtual {v13}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 405
    if-eqz v11, :cond_4

    :try_start_b
    invoke-virtual {v11}, Ljava/io/DataInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 411
    .end local v13    # "e":Ljava/io/FileNotFoundException;
    :cond_4
    :goto_6
    :try_start_c
    monitor-exit v22
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 414
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->delete()Z

    .line 415
    move-object/from16 v0, p0

    move/from16 v1, p3

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/securespaces/PackageManagerQueue;->checkUserData(ILcom/android/server/pm/Installer;)V

    goto/16 :goto_1

    .line 288
    .end local v9    # "bis":Ljava/io/BufferedInputStream;
    .end local v11    # "dis":Ljava/io/DataInputStream;
    .end local v14    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "bis":Ljava/io/BufferedInputStream;
    .restart local v12    # "dis":Ljava/io/DataInputStream;
    .restart local v15    # "fis":Ljava/io/FileInputStream;
    .restart local v16    # "headerSalt":[B
    .restart local v17    # "recordSalt":[B
    .restart local v21    # "version":I
    :pswitch_0
    :try_start_d
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/securespaces/PackageManagerQueue;->uuid:Ljava/lang/String;

    .line 289
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/securespaces/PackageManagerQueue;->packageName:Ljava/lang/String;

    .line 290
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    .line 291
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/securespaces/PackageManagerQueue;->uid:I

    .line 292
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/securespaces/PackageManagerQueue;->seinfo:Ljava/lang/String;

    .line 328
    :goto_7
    if-nez p1, :cond_7

    .line 329
    const-string v3, "PackageManagerQueue"

    const-string v4, "Unable to execute queued PackageManager operation.  reference to Installer is null."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 405
    if-eqz v12, :cond_5

    :try_start_e
    invoke-virtual {v12}, Ljava/io/DataInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 409
    :cond_5
    :goto_8
    :try_start_f
    monitor-exit v22
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    move-object v11, v12

    .end local v12    # "dis":Ljava/io/DataInputStream;
    .restart local v11    # "dis":Ljava/io/DataInputStream;
    move-object v9, v10

    .end local v10    # "bis":Ljava/io/BufferedInputStream;
    .restart local v9    # "bis":Ljava/io/BufferedInputStream;
    move-object v14, v15

    .end local v15    # "fis":Ljava/io/FileInputStream;
    .restart local v14    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_1

    .line 295
    .end local v9    # "bis":Ljava/io/BufferedInputStream;
    .end local v11    # "dis":Ljava/io/DataInputStream;
    .end local v14    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "bis":Ljava/io/BufferedInputStream;
    .restart local v12    # "dis":Ljava/io/DataInputStream;
    .restart local v15    # "fis":Ljava/io/FileInputStream;
    :pswitch_1
    :try_start_10
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/securespaces/PackageManagerQueue;->uuid:Ljava/lang/String;

    .line 296
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/securespaces/PackageManagerQueue;->packageName:Ljava/lang/String;

    .line 297
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_2
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_3
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_5
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    goto :goto_7

    .line 397
    .end local v16    # "headerSalt":[B
    .end local v17    # "recordSalt":[B
    .end local v21    # "version":I
    :catch_3
    move-exception v13

    move-object v11, v12

    .end local v12    # "dis":Ljava/io/DataInputStream;
    .restart local v11    # "dis":Ljava/io/DataInputStream;
    move-object v9, v10

    .end local v10    # "bis":Ljava/io/BufferedInputStream;
    .restart local v9    # "bis":Ljava/io/BufferedInputStream;
    move-object v14, v15

    .line 398
    .end local v15    # "fis":Ljava/io/FileInputStream;
    .local v13, "e":Ljava/io/IOException;
    .restart local v14    # "fis":Ljava/io/FileInputStream;
    :goto_9
    :try_start_11
    const-string v3, "PackageManagerQueue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IOException caught in writeOp(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    .line 405
    if-eqz v11, :cond_4

    :try_start_12
    invoke-virtual {v11}, Ljava/io/DataInputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_4
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto/16 :goto_6

    .line 406
    :catch_4
    move-exception v13

    .line 408
    :try_start_13
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto/16 :goto_6

    .line 300
    .end local v9    # "bis":Ljava/io/BufferedInputStream;
    .end local v11    # "dis":Ljava/io/DataInputStream;
    .end local v13    # "e":Ljava/io/IOException;
    .end local v14    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "bis":Ljava/io/BufferedInputStream;
    .restart local v12    # "dis":Ljava/io/DataInputStream;
    .restart local v15    # "fis":Ljava/io/FileInputStream;
    .restart local v16    # "headerSalt":[B
    .restart local v17    # "recordSalt":[B
    .restart local v21    # "version":I
    :pswitch_2
    :try_start_14
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/securespaces/PackageManagerQueue;->uuid:Ljava/lang/String;

    .line 301
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/securespaces/PackageManagerQueue;->packageName:Ljava/lang/String;

    .line 302
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/securespaces/PackageManagerQueue;->nativeLibraryDir:Ljava/lang/String;

    .line 303
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I
    :try_end_14
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_14} :catch_2
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_3
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_5
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    goto :goto_7

    .line 400
    .end local v16    # "headerSalt":[B
    .end local v17    # "recordSalt":[B
    .end local v21    # "version":I
    :catch_5
    move-exception v13

    move-object v11, v12

    .end local v12    # "dis":Ljava/io/DataInputStream;
    .restart local v11    # "dis":Ljava/io/DataInputStream;
    move-object v9, v10

    .end local v10    # "bis":Ljava/io/BufferedInputStream;
    .restart local v9    # "bis":Ljava/io/BufferedInputStream;
    move-object v14, v15

    .line 401
    .end local v15    # "fis":Ljava/io/FileInputStream;
    .local v13, "e":Ljava/lang/Exception;
    .restart local v14    # "fis":Ljava/io/FileInputStream;
    :goto_a
    :try_start_15
    const-string v3, "PackageManagerQueue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception caught in writeOp(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    .line 405
    if-eqz v11, :cond_4

    :try_start_16
    invoke-virtual {v11}, Ljava/io/DataInputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_6
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    goto/16 :goto_6

    .line 406
    :catch_6
    move-exception v13

    .line 408
    .local v13, "e":Ljava/io/IOException;
    :try_start_17
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    goto/16 :goto_6

    .line 306
    .end local v9    # "bis":Ljava/io/BufferedInputStream;
    .end local v11    # "dis":Ljava/io/DataInputStream;
    .end local v13    # "e":Ljava/io/IOException;
    .end local v14    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "bis":Ljava/io/BufferedInputStream;
    .restart local v12    # "dis":Ljava/io/DataInputStream;
    .restart local v15    # "fis":Ljava/io/FileInputStream;
    .restart local v16    # "headerSalt":[B
    .restart local v17    # "recordSalt":[B
    .restart local v21    # "version":I
    :pswitch_3
    :try_start_18
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/securespaces/PackageManagerQueue;->uuid:Ljava/lang/String;

    .line 307
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/securespaces/PackageManagerQueue;->packageName:Ljava/lang/String;

    .line 308
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I
    :try_end_18
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_18} :catch_2
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_3
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_5
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    goto/16 :goto_7

    .line 404
    .end local v16    # "headerSalt":[B
    .end local v17    # "recordSalt":[B
    .end local v21    # "version":I
    :catchall_2
    move-exception v3

    move-object v11, v12

    .end local v12    # "dis":Ljava/io/DataInputStream;
    .restart local v11    # "dis":Ljava/io/DataInputStream;
    move-object v9, v10

    .end local v10    # "bis":Ljava/io/BufferedInputStream;
    .restart local v9    # "bis":Ljava/io/BufferedInputStream;
    move-object v14, v15

    .line 405
    .end local v15    # "fis":Ljava/io/FileInputStream;
    .restart local v14    # "fis":Ljava/io/FileInputStream;
    :goto_b
    if-eqz v11, :cond_6

    :try_start_19
    invoke-virtual {v11}, Ljava/io/DataInputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_a
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    .line 409
    :cond_6
    :goto_c
    :try_start_1a
    throw v3
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    .line 311
    .end local v9    # "bis":Ljava/io/BufferedInputStream;
    .end local v11    # "dis":Ljava/io/DataInputStream;
    .end local v14    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "bis":Ljava/io/BufferedInputStream;
    .restart local v12    # "dis":Ljava/io/DataInputStream;
    .restart local v15    # "fis":Ljava/io/FileInputStream;
    .restart local v16    # "headerSalt":[B
    .restart local v17    # "recordSalt":[B
    .restart local v21    # "version":I
    :pswitch_4
    :try_start_1b
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/securespaces/PackageManagerQueue;->uuid:Ljava/lang/String;

    .line 312
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/securespaces/PackageManagerQueue;->packageName:Ljava/lang/String;

    .line 313
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    goto/16 :goto_7

    .line 316
    :pswitch_5
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    goto/16 :goto_7

    .line 319
    :pswitch_6
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/securespaces/PackageManagerQueue;->uuid:Ljava/lang/String;

    .line 320
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/securespaces/PackageManagerQueue;->packageName:Ljava/lang/String;

    .line 321
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I
    :try_end_1b
    .catch Ljava/io/FileNotFoundException; {:try_start_1b .. :try_end_1b} :catch_2
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_5
    .catchall {:try_start_1b .. :try_end_1b} :catchall_2

    goto/16 :goto_7

    .line 406
    :catch_7
    move-exception v13

    .line 408
    .restart local v13    # "e":Ljava/io/IOException;
    :try_start_1c
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1

    goto/16 :goto_8

    .line 333
    .end local v13    # "e":Ljava/io/IOException;
    :cond_7
    :try_start_1d
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    move/from16 v0, p3

    if-eq v3, v0, :cond_8

    .line 334
    const-string v3, "PackageManagerQueue"

    const-string v4, "Invalid user id in PackagerManager queue."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 338
    :cond_8
    const/16 v18, 0x0

    .line 339
    .local v18, "res":I
    monitor-enter p2
    :try_end_1d
    .catch Ljava/io/FileNotFoundException; {:try_start_1d .. :try_end_1d} :catch_2
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_5
    .catchall {:try_start_1d .. :try_end_1d} :catchall_2

    .line 341
    :try_start_1e
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/securespaces/PackageManagerQueue;->opCode:I

    packed-switch v3, :pswitch_data_1

    .line 388
    const-string v3, "PackageManagerQueue"

    const-string v4, "Unknown opcode in queueOperation."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    monitor-exit p2

    goto/16 :goto_4

    .line 391
    :catchall_3
    move-exception v3

    monitor-exit p2
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_3

    :try_start_1f
    throw v3
    :try_end_1f
    .catch Ljava/io/FileNotFoundException; {:try_start_1f .. :try_end_1f} :catch_2
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_5
    .catchall {:try_start_1f .. :try_end_1f} :catchall_2

    .line 343
    :pswitch_7
    :try_start_20
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/securespaces/PackageManagerQueue;->uuid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/securespaces/PackageManagerQueue;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/securespaces/PackageManagerQueue;->uid:I

    invoke-static {v3, v6}, Landroid/os/UserHandle;->getUid(II)I

    move-result v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/securespaces/PackageManagerQueue;->seinfo:Ljava/lang/String;

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/pm/Installer;->createUserData(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)I

    move-result v18

    .line 345
    if-gez v18, :cond_9

    .line 346
    const-string v3, "PackageManagerQueue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createUserData() returned "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with user="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and packageName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/securespaces/PackageManagerQueue;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and uuid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/securespaces/PackageManagerQueue;->uuid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :cond_9
    :goto_d
    monitor-exit p2

    goto/16 :goto_4

    .line 351
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/securespaces/PackageManagerQueue;->uuid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/securespaces/PackageManagerQueue;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/server/pm/Installer;->remove(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v18

    .line 352
    if-gez v18, :cond_9

    .line 353
    const-string v3, "PackageManagerQueue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "remove() returned "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with user="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and packageName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/securespaces/PackageManagerQueue;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and uuid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/securespaces/PackageManagerQueue;->uuid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 357
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/securespaces/PackageManagerQueue;->uuid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/securespaces/PackageManagerQueue;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/securespaces/PackageManagerQueue;->nativeLibraryDir:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/android/server/pm/Installer;->linkNativeLibraryDirectory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v18

    .line 359
    if-gez v18, :cond_9

    .line 360
    const-string v3, "PackageManagerQueue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "linkNativeLibraryDirectory() returned "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with user="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and packageName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/securespaces/PackageManagerQueue;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and uuid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/securespaces/PackageManagerQueue;->uuid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 364
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/securespaces/PackageManagerQueue;->uuid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/securespaces/PackageManagerQueue;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/server/pm/Installer;->deleteCodeCacheFiles(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v18

    .line 365
    if-gez v18, :cond_9

    .line 366
    const-string v3, "PackageManagerQueue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteCodeCacheFiles() returned "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with user="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and packageName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/securespaces/PackageManagerQueue;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and uuid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/securespaces/PackageManagerQueue;->uuid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 370
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/securespaces/PackageManagerQueue;->uuid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/securespaces/PackageManagerQueue;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/server/pm/Installer;->deleteCacheFiles(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v18

    .line 371
    if-gez v18, :cond_9

    .line 372
    const-string v3, "PackageManagerQueue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteCacheFiles() returned "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with user="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and packageName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/securespaces/PackageManagerQueue;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and uuid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/securespaces/PackageManagerQueue;->uuid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 376
    :pswitch_c
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/server/pm/Installer;->createUserConfig(I)I

    move-result v18

    .line 377
    if-gez v18, :cond_9

    .line 378
    const-string v3, "PackageManagerQueue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createUserConfig() returned "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with user="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 382
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/securespaces/PackageManagerQueue;->uuid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/securespaces/PackageManagerQueue;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/server/pm/Installer;->clearUserData(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v18

    .line 383
    if-gez v18, :cond_9

    .line 384
    const-string v3, "PackageManagerQueue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clearUserData() returned "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with user="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and packageName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/securespaces/PackageManagerQueue;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and uuid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/securespaces/PackageManagerQueue;->uuid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_3

    goto/16 :goto_d

    .line 405
    .end local v18    # "res":I
    :cond_a
    if-eqz v12, :cond_b

    :try_start_21
    invoke-virtual {v12}, Ljava/io/DataInputStream;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_8
    .catchall {:try_start_21 .. :try_end_21} :catchall_1

    :cond_b
    move-object v11, v12

    .end local v12    # "dis":Ljava/io/DataInputStream;
    .restart local v11    # "dis":Ljava/io/DataInputStream;
    move-object v9, v10

    .end local v10    # "bis":Ljava/io/BufferedInputStream;
    .restart local v9    # "bis":Ljava/io/BufferedInputStream;
    move-object v14, v15

    .line 409
    .end local v15    # "fis":Ljava/io/FileInputStream;
    .restart local v14    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_6

    .line 406
    .end local v9    # "bis":Ljava/io/BufferedInputStream;
    .end local v11    # "dis":Ljava/io/DataInputStream;
    .end local v14    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "bis":Ljava/io/BufferedInputStream;
    .restart local v12    # "dis":Ljava/io/DataInputStream;
    .restart local v15    # "fis":Ljava/io/FileInputStream;
    :catch_8
    move-exception v13

    .line 408
    .restart local v13    # "e":Ljava/io/IOException;
    :try_start_22
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_1

    move-object v11, v12

    .end local v12    # "dis":Ljava/io/DataInputStream;
    .restart local v11    # "dis":Ljava/io/DataInputStream;
    move-object v9, v10

    .end local v10    # "bis":Ljava/io/BufferedInputStream;
    .restart local v9    # "bis":Ljava/io/BufferedInputStream;
    move-object v14, v15

    .line 410
    .end local v15    # "fis":Ljava/io/FileInputStream;
    .restart local v14    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_6

    .line 406
    .end local v16    # "headerSalt":[B
    .end local v17    # "recordSalt":[B
    .end local v21    # "version":I
    .local v13, "e":Ljava/io/FileNotFoundException;
    :catch_9
    move-exception v13

    .line 408
    .local v13, "e":Ljava/io/IOException;
    :try_start_23
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_6

    .line 406
    .end local v13    # "e":Ljava/io/IOException;
    :catch_a
    move-exception v13

    .line 408
    .restart local v13    # "e":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_0

    goto/16 :goto_c

    .line 404
    .end local v13    # "e":Ljava/io/IOException;
    :catchall_4
    move-exception v3

    goto/16 :goto_b

    .end local v14    # "fis":Ljava/io/FileInputStream;
    .restart local v15    # "fis":Ljava/io/FileInputStream;
    :catchall_5
    move-exception v3

    move-object v14, v15

    .end local v15    # "fis":Ljava/io/FileInputStream;
    .restart local v14    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_b

    .end local v9    # "bis":Ljava/io/BufferedInputStream;
    .end local v14    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "bis":Ljava/io/BufferedInputStream;
    .restart local v15    # "fis":Ljava/io/FileInputStream;
    :catchall_6
    move-exception v3

    move-object v9, v10

    .end local v10    # "bis":Ljava/io/BufferedInputStream;
    .restart local v9    # "bis":Ljava/io/BufferedInputStream;
    move-object v14, v15

    .end local v15    # "fis":Ljava/io/FileInputStream;
    .restart local v14    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_b

    .line 400
    :catch_b
    move-exception v13

    goto/16 :goto_a

    .end local v14    # "fis":Ljava/io/FileInputStream;
    .restart local v15    # "fis":Ljava/io/FileInputStream;
    :catch_c
    move-exception v13

    move-object v14, v15

    .end local v15    # "fis":Ljava/io/FileInputStream;
    .restart local v14    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_a

    .end local v9    # "bis":Ljava/io/BufferedInputStream;
    .end local v14    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "bis":Ljava/io/BufferedInputStream;
    .restart local v15    # "fis":Ljava/io/FileInputStream;
    :catch_d
    move-exception v13

    move-object v9, v10

    .end local v10    # "bis":Ljava/io/BufferedInputStream;
    .restart local v9    # "bis":Ljava/io/BufferedInputStream;
    move-object v14, v15

    .end local v15    # "fis":Ljava/io/FileInputStream;
    .restart local v14    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_a

    .line 397
    :catch_e
    move-exception v13

    goto/16 :goto_9

    .end local v14    # "fis":Ljava/io/FileInputStream;
    .restart local v15    # "fis":Ljava/io/FileInputStream;
    :catch_f
    move-exception v13

    move-object v14, v15

    .end local v15    # "fis":Ljava/io/FileInputStream;
    .restart local v14    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_9

    .end local v9    # "bis":Ljava/io/BufferedInputStream;
    .end local v14    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "bis":Ljava/io/BufferedInputStream;
    .restart local v15    # "fis":Ljava/io/FileInputStream;
    :catch_10
    move-exception v13

    move-object v9, v10

    .end local v10    # "bis":Ljava/io/BufferedInputStream;
    .restart local v9    # "bis":Ljava/io/BufferedInputStream;
    move-object v14, v15

    .end local v15    # "fis":Ljava/io/FileInputStream;
    .restart local v14    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_9

    .line 394
    :catch_11
    move-exception v13

    goto/16 :goto_5

    .end local v14    # "fis":Ljava/io/FileInputStream;
    .restart local v15    # "fis":Ljava/io/FileInputStream;
    :catch_12
    move-exception v13

    move-object v14, v15

    .end local v15    # "fis":Ljava/io/FileInputStream;
    .restart local v14    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_5

    .end local v9    # "bis":Ljava/io/BufferedInputStream;
    .end local v14    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "bis":Ljava/io/BufferedInputStream;
    .restart local v15    # "fis":Ljava/io/FileInputStream;
    :catch_13
    move-exception v13

    move-object v9, v10

    .end local v10    # "bis":Ljava/io/BufferedInputStream;
    .restart local v9    # "bis":Ljava/io/BufferedInputStream;
    move-object v14, v15

    .end local v15    # "fis":Ljava/io/FileInputStream;
    .restart local v14    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_5

    .line 286
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 341
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public setOp(II)V
    .locals 0
    .param p1, "op"    # I
    .param p2, "user"    # I

    .prologue
    .line 117
    iput p1, p0, Lcom/android/server/securespaces/PackageManagerQueue;->opCode:I

    .line 118
    iput p2, p0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    .line 119
    return-void
.end method

.method public setOp(ILjava/lang/String;I)V
    .locals 0
    .param p1, "op"    # I
    .param p2, "uuid"    # Ljava/lang/String;
    .param p3, "user"    # I

    .prologue
    .line 111
    iput p1, p0, Lcom/android/server/securespaces/PackageManagerQueue;->opCode:I

    .line 112
    iput p3, p0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    .line 113
    iput-object p2, p0, Lcom/android/server/securespaces/PackageManagerQueue;->uuid:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setOp(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "op"    # I
    .param p2, "uuid"    # Ljava/lang/String;
    .param p3, "pName"    # Ljava/lang/String;
    .param p4, "user"    # I

    .prologue
    .line 104
    iput p1, p0, Lcom/android/server/securespaces/PackageManagerQueue;->opCode:I

    .line 105
    iput-object p3, p0, Lcom/android/server/securespaces/PackageManagerQueue;->packageName:Ljava/lang/String;

    .line 106
    iput p4, p0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    .line 107
    iput-object p2, p0, Lcom/android/server/securespaces/PackageManagerQueue;->uuid:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setOp(ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p1, "op"    # I
    .param p2, "uuid"    # Ljava/lang/String;
    .param p3, "pName"    # Ljava/lang/String;
    .param p4, "user"    # I
    .param p5, "uid"    # I
    .param p6, "seinfo"    # Ljava/lang/String;

    .prologue
    .line 91
    iput p1, p0, Lcom/android/server/securespaces/PackageManagerQueue;->opCode:I

    .line 92
    iput-object p3, p0, Lcom/android/server/securespaces/PackageManagerQueue;->packageName:Ljava/lang/String;

    .line 93
    iput p4, p0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    .line 94
    iput p5, p0, Lcom/android/server/securespaces/PackageManagerQueue;->uid:I

    .line 95
    iput-object p6, p0, Lcom/android/server/securespaces/PackageManagerQueue;->seinfo:Ljava/lang/String;

    .line 96
    iput-object p2, p0, Lcom/android/server/securespaces/PackageManagerQueue;->uuid:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setOp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "op"    # I
    .param p2, "uuid"    # Ljava/lang/String;
    .param p3, "pName"    # Ljava/lang/String;
    .param p4, "nativeLibDir"    # Ljava/lang/String;
    .param p5, "user"    # I

    .prologue
    .line 126
    iput p1, p0, Lcom/android/server/securespaces/PackageManagerQueue;->opCode:I

    .line 127
    iput-object p3, p0, Lcom/android/server/securespaces/PackageManagerQueue;->packageName:Ljava/lang/String;

    .line 128
    iput-object p4, p0, Lcom/android/server/securespaces/PackageManagerQueue;->nativeLibraryDir:Ljava/lang/String;

    .line 129
    iput p5, p0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    .line 130
    iput-object p2, p0, Lcom/android/server/securespaces/PackageManagerQueue;->uuid:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public writeOp()V
    .locals 15

    .prologue
    .line 138
    new-instance v9, Ljava/io/File;

    iget v11, p0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    invoke-static {v11}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v11

    const-string v12, ".Spaces"

    invoke-direct {v9, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 139
    .local v9, "userQueueDir":Ljava/io/File;
    new-instance v10, Ljava/io/File;

    const-string v11, "pmops"

    invoke-direct {v10, v9, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 141
    .local v10, "userQueueFile":Ljava/io/File;
    const/4 v5, 0x0

    .line 142
    .local v5, "fos":Ljava/io/FileOutputStream;
    const/4 v0, 0x0

    .line 143
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    const/4 v2, 0x0

    .line 145
    .local v2, "dos":Ljava/io/DataOutputStream;
    const/16 v11, 0x10

    new-array v7, v11, [B

    .line 146
    .local v7, "salt":[B
    new-instance v8, Ljava/security/SecureRandom;

    invoke-direct {v8}, Ljava/security/SecureRandom;-><init>()V

    .line 148
    .local v8, "sr":Ljava/security/SecureRandom;
    sget-object v12, Lcom/android/server/securespaces/PackageManagerQueue;->pmqLock:Ljava/lang/Object;

    monitor-enter v12

    .line 150
    :try_start_0
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_1

    .line 153
    const-string v11, "PackageManagerQueue"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "PackageManger op-file does not exist for user "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".  Creating it now."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    .line 156
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 157
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .local v6, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v1, Ljava/io/BufferedOutputStream;

    const/16 v11, 0x800

    invoke-direct {v1, v6, v11}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 158
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .local v1, "bos":Ljava/io/BufferedOutputStream;
    :try_start_2
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_f
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 160
    .end local v2    # "dos":Ljava/io/DataOutputStream;
    .local v3, "dos":Ljava/io/DataOutputStream;
    :try_start_3
    invoke-virtual {v8, v7}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 163
    const/4 v11, 0x2

    invoke-virtual {v3, v11}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 164
    invoke-virtual {v3, v7}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_10
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_a
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    move-object v2, v3

    .end local v3    # "dos":Ljava/io/DataOutputStream;
    .restart local v2    # "dos":Ljava/io/DataOutputStream;
    move-object v0, v1

    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .line 175
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :goto_0
    :try_start_4
    const-string v11, "PackageManagerQueue"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Appending record to PackageManager op-file for user "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-virtual {v8, v7}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 180
    invoke-virtual {v2, v7}, Ljava/io/DataOutputStream;->write([B)V

    .line 181
    iget v11, p0, Lcom/android/server/securespaces/PackageManagerQueue;->opCode:I

    invoke-virtual {v2, v11}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 183
    iget v11, p0, Lcom/android/server/securespaces/PackageManagerQueue;->opCode:I

    packed-switch v11, :pswitch_data_0

    .line 221
    const-string v11, "PackageManagerQueue"

    const-string v13, "Unknown opcode in queueOperation."

    invoke-static {v11, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 236
    :goto_1
    if-eqz v2, :cond_0

    :try_start_5
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 242
    :cond_0
    :goto_2
    :try_start_6
    monitor-exit v12
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 243
    return-void

    .line 169
    :cond_1
    :try_start_7
    new-instance v6, Ljava/io/FileOutputStream;

    const/4 v11, 0x1

    invoke-direct {v6, v10, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 170
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :try_start_8
    new-instance v1, Ljava/io/BufferedOutputStream;

    const/16 v11, 0x800

    invoke-direct {v1, v6, v11}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_e
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 171
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    :try_start_9
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_f
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .end local v2    # "dos":Ljava/io/DataOutputStream;
    .restart local v3    # "dos":Ljava/io/DataOutputStream;
    move-object v2, v3

    .end local v3    # "dos":Ljava/io/DataOutputStream;
    .restart local v2    # "dos":Ljava/io/DataOutputStream;
    move-object v0, v1

    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 185
    :pswitch_0
    :try_start_a
    iget-object v11, p0, Lcom/android/server/securespaces/PackageManagerQueue;->uuid:Ljava/lang/String;

    invoke-virtual {v2, v11}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 186
    iget-object v11, p0, Lcom/android/server/securespaces/PackageManagerQueue;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v11}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 187
    iget v11, p0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    invoke-virtual {v2, v11}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 188
    iget v11, p0, Lcom/android/server/securespaces/PackageManagerQueue;->uid:I

    invoke-virtual {v2, v11}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 189
    iget-object v11, p0, Lcom/android/server/securespaces/PackageManagerQueue;->seinfo:Ljava/lang/String;

    invoke-virtual {v2, v11}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_1

    .line 225
    :catch_0
    move-exception v4

    .line 226
    .local v4, "e":Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_b
    const-string v11, "PackageManagerQueue"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "FileNotFoundException caught in writeOp(): "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 236
    if-eqz v2, :cond_0

    :try_start_c
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_2

    .line 237
    :catch_1
    move-exception v4

    .line 239
    .local v4, "e":Ljava/io/IOException;
    :try_start_d
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 242
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    throw v11

    .line 192
    :pswitch_1
    :try_start_e
    iget-object v11, p0, Lcom/android/server/securespaces/PackageManagerQueue;->uuid:Ljava/lang/String;

    invoke-virtual {v2, v11}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 193
    iget-object v11, p0, Lcom/android/server/securespaces/PackageManagerQueue;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v11}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 194
    iget v11, p0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    invoke-virtual {v2, v11}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto :goto_1

    .line 228
    :catch_2
    move-exception v4

    .line 229
    .restart local v4    # "e":Ljava/io/IOException;
    :goto_4
    :try_start_f
    const-string v11, "PackageManagerQueue"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "IOException caught in writeOp(): "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 236
    if-eqz v2, :cond_0

    :try_start_10
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_3
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto/16 :goto_2

    .line 237
    :catch_3
    move-exception v4

    .line 239
    :try_start_11
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto/16 :goto_2

    .line 197
    .end local v4    # "e":Ljava/io/IOException;
    :pswitch_2
    :try_start_12
    iget-object v11, p0, Lcom/android/server/securespaces/PackageManagerQueue;->uuid:Ljava/lang/String;

    invoke-virtual {v2, v11}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 198
    iget-object v11, p0, Lcom/android/server/securespaces/PackageManagerQueue;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v11}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 199
    iget-object v11, p0, Lcom/android/server/securespaces/PackageManagerQueue;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {v2, v11}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 200
    iget v11, p0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    invoke-virtual {v2, v11}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_12} :catch_0
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_2
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_4
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    goto/16 :goto_1

    .line 231
    :catch_4
    move-exception v4

    .line 232
    .local v4, "e":Ljava/lang/Exception;
    :goto_5
    :try_start_13
    const-string v11, "PackageManagerQueue"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Exception caught in writeOp(): "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 236
    if-eqz v2, :cond_0

    :try_start_14
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_5
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    goto/16 :goto_2

    .line 237
    :catch_5
    move-exception v4

    .line 239
    .local v4, "e":Ljava/io/IOException;
    :try_start_15
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    goto/16 :goto_2

    .line 203
    .end local v4    # "e":Ljava/io/IOException;
    :pswitch_3
    :try_start_16
    iget-object v11, p0, Lcom/android/server/securespaces/PackageManagerQueue;->uuid:Ljava/lang/String;

    invoke-virtual {v2, v11}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 204
    iget-object v11, p0, Lcom/android/server/securespaces/PackageManagerQueue;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v11}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 205
    iget v11, p0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    invoke-virtual {v2, v11}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_16
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_16} :catch_0
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_2
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_4
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    goto/16 :goto_1

    .line 235
    :catchall_1
    move-exception v11

    .line 236
    :goto_6
    if-eqz v2, :cond_2

    :try_start_17
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_7
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    .line 240
    :cond_2
    :goto_7
    :try_start_18
    throw v11
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    .line 208
    :pswitch_4
    :try_start_19
    iget-object v11, p0, Lcom/android/server/securespaces/PackageManagerQueue;->uuid:Ljava/lang/String;

    invoke-virtual {v2, v11}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 209
    iget-object v11, p0, Lcom/android/server/securespaces/PackageManagerQueue;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v11}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 210
    iget v11, p0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    invoke-virtual {v2, v11}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto/16 :goto_1

    .line 213
    :pswitch_5
    iget v11, p0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    invoke-virtual {v2, v11}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto/16 :goto_1

    .line 216
    :pswitch_6
    iget-object v11, p0, Lcom/android/server/securespaces/PackageManagerQueue;->uuid:Ljava/lang/String;

    invoke-virtual {v2, v11}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 217
    iget-object v11, p0, Lcom/android/server/securespaces/PackageManagerQueue;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v11}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 218
    iget v11, p0, Lcom/android/server/securespaces/PackageManagerQueue;->user:I

    invoke-virtual {v2, v11}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_19
    .catch Ljava/io/FileNotFoundException; {:try_start_19 .. :try_end_19} :catch_0
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_2
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_4
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    goto/16 :goto_1

    .line 237
    :catch_6
    move-exception v4

    .line 239
    .restart local v4    # "e":Ljava/io/IOException;
    :try_start_1a
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 237
    .end local v4    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v4

    .line 239
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    goto :goto_7

    .line 235
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v11

    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto :goto_6

    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catchall_3
    move-exception v11

    move-object v0, v1

    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto :goto_6

    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v2    # "dos":Ljava/io/DataOutputStream;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v3    # "dos":Ljava/io/DataOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catchall_4
    move-exception v11

    move-object v2, v3

    .end local v3    # "dos":Ljava/io/DataOutputStream;
    .restart local v2    # "dos":Ljava/io/DataOutputStream;
    move-object v0, v1

    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto :goto_6

    .line 231
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catch_8
    move-exception v4

    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_5

    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catch_9
    move-exception v4

    move-object v0, v1

    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_5

    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v2    # "dos":Ljava/io/DataOutputStream;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v3    # "dos":Ljava/io/DataOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catch_a
    move-exception v4

    move-object v2, v3

    .end local v3    # "dos":Ljava/io/DataOutputStream;
    .restart local v2    # "dos":Ljava/io/DataOutputStream;
    move-object v0, v1

    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_5

    .line 228
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catch_b
    move-exception v4

    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_4

    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catch_c
    move-exception v4

    move-object v0, v1

    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_4

    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v2    # "dos":Ljava/io/DataOutputStream;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v3    # "dos":Ljava/io/DataOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catch_d
    move-exception v4

    move-object v2, v3

    .end local v3    # "dos":Ljava/io/DataOutputStream;
    .restart local v2    # "dos":Ljava/io/DataOutputStream;
    move-object v0, v1

    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_4

    .line 225
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catch_e
    move-exception v4

    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_3

    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catch_f
    move-exception v4

    move-object v0, v1

    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_3

    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v2    # "dos":Ljava/io/DataOutputStream;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v3    # "dos":Ljava/io/DataOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catch_10
    move-exception v4

    move-object v2, v3

    .end local v3    # "dos":Ljava/io/DataOutputStream;
    .restart local v2    # "dos":Ljava/io/DataOutputStream;
    move-object v0, v1

    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_3

    .line 183
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
