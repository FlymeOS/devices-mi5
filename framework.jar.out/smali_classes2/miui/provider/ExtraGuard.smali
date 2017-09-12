.class public final Lmiui/provider/ExtraGuard;
.super Ljava/lang/Object;
.source "ExtraGuard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/provider/ExtraGuard$DefaultContainerConnection;
    }
.end annotation


# static fields
.field private static final CLOUD_BLACK:I = 0x1

.field private static final CLOUD_SCAN_KEY:Ljava/lang/String; = "cloud_scan"

.field static final DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

.field static final DEFAULT_CONTAINER_PACKAGE:Ljava/lang/String; = "com.android.defcontainer"

.field public static final DEFAULT_PACKAGE_NAME:Ljava/lang/String; = "com.miui.guardprovider"

.field public static final INVALID_FLAG:I = 0x64

.field public static final SAFE_GUARD_CHOOSED:Ljava/lang/String; = "safe_guard_choosed"

.field private static final SMS_BLACK:I = 0x2

.field private static final SMS_WHITE:I = 0x1

.field public static final VIRUS_BLACK:I = 0x2

.field public static final VIRUS_GRAY:I = 0x3

.field public static final VIRUS_WHITE:I = 0x1

.field private static gService:Lcom/android/internal/app/IMediaContainerService;

.field private static final mDefContainerConn:Lmiui/provider/ExtraGuard$DefaultContainerConnection;

.field private static mVirusType:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 44
    const/4 v0, 0x1

    sput v0, Lmiui/provider/ExtraGuard;->mVirusType:I

    .line 52
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.defcontainer"

    const-string v2, "com.android.defcontainer.DefaultContainerService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lmiui/provider/ExtraGuard;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    .line 55
    const/4 v0, 0x0

    sput-object v0, Lmiui/provider/ExtraGuard;->gService:Lcom/android/internal/app/IMediaContainerService;

    .line 56
    new-instance v0, Lmiui/provider/ExtraGuard$DefaultContainerConnection;

    invoke-direct {v0}, Lmiui/provider/ExtraGuard$DefaultContainerConnection;-><init>()V

    sput-object v0, Lmiui/provider/ExtraGuard;->mDefContainerConn:Lmiui/provider/ExtraGuard$DefaultContainerConnection;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method

.method static synthetic access$002(Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/IMediaContainerService;

    .prologue
    .line 34
    sput-object p0, Lmiui/provider/ExtraGuard;->gService:Lcom/android/internal/app/IMediaContainerService;

    return-object p0
.end method

.method public static checkApk(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 21
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 288
    if-nez p1, :cond_0

    .line 289
    const/4 v3, -0x3

    .line 348
    :goto_0
    return v3

    .line 292
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 293
    .local v2, "resolver":Landroid/content/ContentResolver;
    const/16 v17, 0x0

    .line 294
    .local v17, "path":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v20

    .line 295
    .local v20, "scheme":Ljava/lang/String;
    const-string v3, "content"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 296
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 297
    .local v11, "cursor":Landroid/database/Cursor;
    if-eqz v11, :cond_2

    .line 298
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 299
    const-string v3, "_data"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 300
    .local v13, "index":I
    invoke-interface {v11, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 302
    .end local v13    # "index":I
    :cond_1
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 307
    .end local v11    # "cursor":Landroid/database/Cursor;
    :cond_2
    :goto_1
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 308
    const/4 v3, -0x3

    goto :goto_0

    .line 304
    :cond_3
    if-eqz v20, :cond_4

    const-string v3, "file"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 305
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v17

    goto :goto_1

    .line 312
    :cond_5
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    .line 313
    .local v18, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v14

    .line 314
    .local v14, "info":Landroid/content/pm/PackageInfo;
    if-eqz v14, :cond_6

    .line 315
    iget-object v9, v14, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 316
    .local v9, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v0, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 317
    .local v16, "packageName":Ljava/lang/String;
    iget v3, v14, Landroid/content/pm/PackageInfo;->versionCode:I

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v1, v3, v4}, Lmiui/provider/CloudAppControll;->getCompatibility(Landroid/content/Context;Ljava/lang/String;II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    .line 320
    .local v15, "msg":Ljava/lang/String;
    if-eqz v15, :cond_6

    .line 322
    const/16 v3, -0x1c

    goto :goto_0

    .line 325
    .end local v9    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v14    # "info":Landroid/content/pm/PackageInfo;
    .end local v15    # "msg":Ljava/lang/String;
    .end local v16    # "packageName":Ljava/lang/String;
    .end local v18    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v12

    .line 326
    .local v12, "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 330
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_6
    :try_start_1
    const-string v3, "AntiVirusUri"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lmiui/provider/ExtraGuard;->getUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 331
    .local v8, "antiVirusUri":Landroid/net/Uri;
    if-eqz v8, :cond_8

    .line 332
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 334
    .local v10, "contentValues":Landroid/content/ContentValues;
    const-string v3, "cloud_scan"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v10, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 335
    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v17, v4, v5

    invoke-virtual {v2, v8, v10, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v19

    .line 341
    .local v19, "result":I
    const/4 v3, 0x2

    move/from16 v0, v19

    if-eq v0, v3, :cond_7

    const/4 v3, 0x3

    move/from16 v0, v19

    if-ne v0, v3, :cond_8

    .line 342
    :cond_7
    const/16 v3, -0x1b

    goto/16 :goto_0

    .line 345
    .end local v8    # "antiVirusUri":Landroid/net/Uri;
    .end local v10    # "contentValues":Landroid/content/ContentValues;
    .end local v19    # "result":I
    :catch_1
    move-exception v3

    .line 348
    :cond_8
    const/4 v3, 0x1

    goto/16 :goto_0
.end method

.method public static checkApk(Landroid/content/Context;Landroid/net/Uri;I)I
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "flags"    # I

    .prologue
    .line 356
    if-nez p1, :cond_0

    .line 357
    const/4 v1, -0x3

    .line 417
    :goto_0
    return v1

    .line 360
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 361
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v10, 0x0

    .line 362
    .local v10, "path":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v12

    .line 363
    .local v12, "scheme":Ljava/lang/String;
    const-string v1, "content"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 364
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 365
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 366
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 367
    const-string v1, "_data"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 368
    .local v8, "index":I
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 370
    .end local v8    # "index":I
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 375
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_2
    :goto_1
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 376
    const/4 v1, -0x3

    goto :goto_0

    .line 372
    :cond_3
    if-eqz v12, :cond_4

    const-string v1, "file"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 373
    :cond_4
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    .line 380
    :cond_5
    const/16 v1, 0x64

    if-eq p2, v1, :cond_6

    :try_start_0
    sget-object v1, Lmiui/provider/ExtraGuard;->gService:Lcom/android/internal/app/IMediaContainerService;

    if-eqz v1, :cond_6

    .line 381
    sget-object v1, Lmiui/provider/ExtraGuard;->gService:Lcom/android/internal/app/IMediaContainerService;

    const/4 v2, 0x0

    invoke-interface {v1, v10, p2, v2}, Lcom/android/internal/app/IMediaContainerService;->getMinimalPackageInfo(Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PackageInfoLite;

    move-result-object v11

    .line 382
    .local v11, "pkgLite":Landroid/content/pm/PackageInfoLite;
    if-eqz v11, :cond_6

    .line 383
    iget-object v1, v11, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    iget v2, v11, Landroid/content/pm/PackageInfoLite;->versionCode:I

    const/4 v3, 0x1

    invoke-static {p0, v1, v2, v3}, Lmiui/provider/CloudAppControll;->getCompatibility(Landroid/content/Context;Ljava/lang/String;II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 386
    .local v9, "msg":Ljava/lang/String;
    if-eqz v9, :cond_6

    .line 388
    const/16 v1, -0x1c

    goto :goto_0

    .line 392
    .end local v9    # "msg":Ljava/lang/String;
    .end local v11    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    :catch_0
    move-exception v7

    .line 393
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 417
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_6
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static checkApk(Landroid/content/Context;Landroid/net/Uri;Z)I
    .locals 21
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "cloud"    # Z

    .prologue
    .line 73
    if-nez p1, :cond_0

    .line 74
    const/4 v3, -0x3

    .line 133
    :goto_0
    return v3

    .line 77
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 78
    .local v2, "resolver":Landroid/content/ContentResolver;
    const/16 v17, 0x0

    .line 79
    .local v17, "path":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v20

    .line 80
    .local v20, "scheme":Ljava/lang/String;
    const-string v3, "content"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 81
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 82
    .local v11, "cursor":Landroid/database/Cursor;
    if-eqz v11, :cond_2

    .line 83
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 84
    const-string v3, "_data"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 85
    .local v13, "index":I
    invoke-interface {v11, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 87
    .end local v13    # "index":I
    :cond_1
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 92
    .end local v11    # "cursor":Landroid/database/Cursor;
    :cond_2
    :goto_1
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 93
    const/4 v3, -0x3

    goto :goto_0

    .line 89
    :cond_3
    if-eqz v20, :cond_4

    const-string v3, "file"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 90
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v17

    goto :goto_1

    .line 97
    :cond_5
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    .line 98
    .local v18, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v14

    .line 99
    .local v14, "info":Landroid/content/pm/PackageInfo;
    if-eqz v14, :cond_6

    .line 100
    iget-object v9, v14, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 101
    .local v9, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v0, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 102
    .local v16, "packageName":Ljava/lang/String;
    iget v3, v14, Landroid/content/pm/PackageInfo;->versionCode:I

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v1, v3, v4}, Lmiui/provider/CloudAppControll;->getCompatibility(Landroid/content/Context;Ljava/lang/String;II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    .line 105
    .local v15, "msg":Ljava/lang/String;
    if-eqz v15, :cond_6

    .line 107
    const/16 v3, -0x1c

    goto :goto_0

    .line 110
    .end local v9    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v14    # "info":Landroid/content/pm/PackageInfo;
    .end local v15    # "msg":Ljava/lang/String;
    .end local v16    # "packageName":Ljava/lang/String;
    .end local v18    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v12

    .line 111
    .local v12, "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 115
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_6
    :try_start_1
    const-string v3, "AntiVirusUri"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lmiui/provider/ExtraGuard;->getUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 116
    .local v8, "antiVirusUri":Landroid/net/Uri;
    if-eqz v8, :cond_7

    .line 117
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 119
    .local v10, "contentValues":Landroid/content/ContentValues;
    const-string v3, "cloud_scan"

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v10, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 120
    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v17, v4, v5

    invoke-virtual {v2, v8, v10, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v19

    .line 126
    .local v19, "result":I
    sput v19, Lmiui/provider/ExtraGuard;->mVirusType:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 127
    const/4 v3, 0x2

    move/from16 v0, v19

    if-ne v0, v3, :cond_7

    .line 128
    const/16 v3, -0x1b

    goto/16 :goto_0

    .line 131
    .end local v8    # "antiVirusUri":Landroid/net/Uri;
    .end local v10    # "contentValues":Landroid/content/ContentValues;
    .end local v19    # "result":I
    :catch_1
    move-exception v3

    .line 133
    :cond_7
    const/4 v3, 0x1

    goto/16 :goto_0
.end method

.method public static checkApkForVirusInfo(Landroid/content/Context;Landroid/net/Uri;Z)Lmiui/provider/ExtraGuardVirusInfoEntity;
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "cloud"    # Z

    .prologue
    .line 144
    if-nez p1, :cond_1

    .line 145
    const/16 v16, 0x0

    .line 215
    :cond_0
    :goto_0
    return-object v16

    .line 148
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 149
    .local v1, "resolver":Landroid/content/ContentResolver;
    const/4 v14, 0x0

    .line 150
    .local v14, "path":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v17

    .line 151
    .local v17, "scheme":Ljava/lang/String;
    const-string v3, "content"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 152
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 153
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_3

    .line 154
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 155
    const-string v3, "_data"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 156
    .local v10, "index":I
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 158
    .end local v10    # "index":I
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 163
    .end local v8    # "cursor":Landroid/database/Cursor;
    :cond_3
    :goto_1
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 164
    const/16 v16, 0x0

    goto :goto_0

    .line 160
    :cond_4
    if-eqz v17, :cond_5

    const-string v3, "file"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 161
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v14

    goto :goto_1

    .line 168
    :cond_6
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 169
    .local v15, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x1

    invoke-virtual {v15, v14, v3}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v11

    .line 170
    .local v11, "info":Landroid/content/pm/PackageInfo;
    if-eqz v11, :cond_7

    .line 171
    iget-object v7, v11, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 172
    .local v7, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v13, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 173
    .local v13, "packageName":Ljava/lang/String;
    iget v3, v11, Landroid/content/pm/PackageInfo;->versionCode:I

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v13, v3, v4}, Lmiui/provider/CloudAppControll;->getCompatibility(Landroid/content/Context;Ljava/lang/String;II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 176
    .local v12, "msg":Ljava/lang/String;
    if-eqz v12, :cond_7

    .line 178
    const/16 v16, 0x0

    goto :goto_0

    .line 181
    .end local v7    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v11    # "info":Landroid/content/pm/PackageInfo;
    .end local v12    # "msg":Ljava/lang/String;
    .end local v13    # "packageName":Ljava/lang/String;
    .end local v15    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v9

    .line 182
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 185
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_7
    const/4 v8, 0x0

    .line 187
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :try_start_1
    const-string v3, "content://guard/sync_scan"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 188
    .local v2, "antiUri":Landroid/net/Uri;
    if-eqz v2, :cond_9

    .line 189
    new-instance v16, Lmiui/provider/ExtraGuardVirusInfoEntity;

    invoke-direct/range {v16 .. v16}, Lmiui/provider/ExtraGuardVirusInfoEntity;-><init>()V

    .line 190
    .local v16, "result":Lmiui/provider/ExtraGuardVirusInfoEntity;
    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v14, v5, v3

    const/4 v3, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v3

    .line 193
    .local v5, "selectionArgs":[Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 194
    if-eqz v8, :cond_9

    .line 195
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 196
    const-string v3, "Type"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lmiui/provider/ExtraGuardVirusInfoEntity;->setType(I)V

    .line 197
    const-string v3, "Description"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lmiui/provider/ExtraGuardVirusInfoEntity;->setDescription(Ljava/lang/String;)V

    .line 199
    const-string v3, "VirusName"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lmiui/provider/ExtraGuardVirusInfoEntity;->setVirusName(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 207
    :cond_8
    if-eqz v8, :cond_0

    .line 209
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 210
    :catch_1
    move-exception v9

    .line 211
    .restart local v9    # "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 207
    .end local v5    # "selectionArgs":[Ljava/lang/String;
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v16    # "result":Lmiui/provider/ExtraGuardVirusInfoEntity;
    :cond_9
    if-eqz v8, :cond_a

    .line 209
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 215
    .end local v2    # "antiUri":Landroid/net/Uri;
    :cond_a
    :goto_2
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 210
    .restart local v2    # "antiUri":Landroid/net/Uri;
    :catch_2
    move-exception v9

    .line 211
    .restart local v9    # "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 204
    .end local v2    # "antiUri":Landroid/net/Uri;
    .end local v9    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v9

    .line 205
    .restart local v9    # "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 207
    if-eqz v8, :cond_a

    .line 209
    :try_start_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_2

    .line 210
    :catch_4
    move-exception v9

    .line 211
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 207
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    if-eqz v8, :cond_b

    .line 209
    :try_start_6
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 212
    :cond_b
    :goto_3
    throw v3

    .line 210
    :catch_5
    move-exception v9

    .line 211
    .restart local v9    # "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method public static checkSms(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 426
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 427
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v5, "AntiSmsSpamUri"

    invoke-static {p0, v5}, Lmiui/provider/ExtraGuard;->getUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 428
    .local v2, "uri":Landroid/net/Uri;
    if-eqz v2, :cond_1

    .line 429
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    const/4 v8, 0x1

    aput-object p2, v7, v8

    invoke-virtual {v0, v2, v5, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 435
    .local v1, "result":I
    if-ne v1, v9, :cond_0

    .line 440
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v1    # "result":I
    .end local v2    # "uri":Landroid/net/Uri;
    :goto_0
    return v3

    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    .restart local v1    # "result":I
    .restart local v2    # "uri":Landroid/net/Uri;
    :cond_0
    move v3, v4

    .line 435
    goto :goto_0

    .line 437
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v1    # "result":I
    .end local v2    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v3

    :cond_1
    move v3, v4

    .line 440
    goto :goto_0
.end method

.method public static checkSomeApkForVirusInfo(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/provider/ExtraGuardVirusInfoEntity;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 227
    if-nez p1, :cond_0

    move-object v8, v11

    .line 265
    :goto_0
    return-object v8

    .line 231
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 234
    .local v0, "resolver":Landroid/content/ContentResolver;
    :try_start_0
    const-string v2, "AntiVirusScanForCloudInfoUri"

    invoke-static {p0, v2}, Lmiui/provider/ExtraGuard;->getUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 235
    .local v1, "antiUri":Landroid/net/Uri;
    if-eqz v1, :cond_3

    .line 236
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 237
    .local v8, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmiui/provider/ExtraGuardVirusInfoEntity;>;"
    move-object v4, p1

    .line 238
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 239
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 240
    :cond_1
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 241
    new-instance v9, Lmiui/provider/ExtraGuardVirusInfoEntity;

    invoke-direct {v9}, Lmiui/provider/ExtraGuardVirusInfoEntity;-><init>()V

    .line 242
    .local v9, "singleEntity":Lmiui/provider/ExtraGuardVirusInfoEntity;
    const-string v2, "app_type"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 243
    .local v10, "type":I
    const/4 v2, 0x2

    if-eq v10, v2, :cond_2

    const/4 v2, 0x3

    if-ne v10, v2, :cond_1

    .line 244
    :cond_2
    invoke-virtual {v9, v10}, Lmiui/provider/ExtraGuardVirusInfoEntity;->setType(I)V

    .line 245
    const-string/jumbo v2, "virus_description"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lmiui/provider/ExtraGuardVirusInfoEntity;->setDescription(Ljava/lang/String;)V

    .line 247
    const-string v2, "solve_advice"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v9, v2}, Lmiui/provider/ExtraGuardVirusInfoEntity;->setAdvice(I)V

    .line 249
    const-string/jumbo v2, "virus_name"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lmiui/provider/ExtraGuardVirusInfoEntity;->setVirusName(Ljava/lang/String;)V

    .line 251
    const-string v2, "package_name"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lmiui/provider/ExtraGuardVirusInfoEntity;->setPackageName(Ljava/lang/String;)V

    .line 253
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 262
    .end local v1    # "antiUri":Landroid/net/Uri;
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v8    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmiui/provider/ExtraGuardVirusInfoEntity;>;"
    .end local v9    # "singleEntity":Lmiui/provider/ExtraGuardVirusInfoEntity;
    .end local v10    # "type":I
    :catch_0
    move-exception v7

    .line 263
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .end local v7    # "e":Ljava/lang/Exception;
    :cond_3
    move-object v8, v11

    .line 265
    goto :goto_0

    .line 256
    .restart local v1    # "antiUri":Landroid/net/Uri;
    .restart local v4    # "selectionArgs":[Ljava/lang/String;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v8    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmiui/provider/ExtraGuardVirusInfoEntity;>;"
    :cond_4
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 257
    const/4 v6, 0x0

    .line 259
    goto :goto_0
.end method

.method public static getAllProvinces(Landroid/content/Context;)Ljava/util/Map;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 448
    const/4 v7, 0x0

    .line 450
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v2, "TrafficCorrectionProvincesUri"

    invoke-static {p0, v2}, Lmiui/provider/ExtraGuard;->getUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 451
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_1

    .line 452
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 453
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 454
    if-eqz v7, :cond_1

    .line 455
    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    .line 456
    .local v9, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 457
    const-string v2, "code"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 458
    .local v6, "code":Ljava/lang/String;
    const-string v2, "name"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 459
    .local v10, "name":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v9, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 465
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v6    # "code":Ljava/lang/String;
    .end local v9    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v10    # "name":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 466
    .local v8, "e":Ljava/lang/Exception;
    if-eqz v7, :cond_0

    .line 467
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 469
    :cond_0
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .end local v8    # "e":Ljava/lang/Exception;
    :cond_1
    move-object v9, v11

    .line 471
    :goto_1
    return-object v9

    .line 461
    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v9    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_2
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static getBrands(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "operatorId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 546
    const/4 v7, 0x0

    .line 548
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v2, "TrafficCorrectionBrandsUri"

    invoke-static {p0, v2}, Lmiui/provider/ExtraGuard;->getUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 549
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_1

    .line 550
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 551
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 555
    if-eqz v7, :cond_1

    .line 556
    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    .line 557
    .local v9, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 558
    const-string v2, "code"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 559
    .local v6, "code":Ljava/lang/String;
    const-string v2, "name"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 560
    .local v10, "name":Ljava/lang/String;
    invoke-interface {v9, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 566
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v6    # "code":Ljava/lang/String;
    .end local v9    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "name":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 567
    .local v8, "e":Ljava/lang/Exception;
    if-eqz v7, :cond_0

    .line 568
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 570
    :cond_0
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .end local v8    # "e":Ljava/lang/Exception;
    :cond_1
    move-object v9, v11

    .line 572
    :goto_1
    return-object v9

    .line 562
    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v9    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static getCities(Landroid/content/Context;I)Ljava/util/Map;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "provinceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 480
    const/4 v7, 0x0

    .line 482
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v2, "TrafficCorrectionCitiesUri"

    invoke-static {p0, v2}, Lmiui/provider/ExtraGuard;->getUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 483
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_1

    .line 484
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 485
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 489
    if-eqz v7, :cond_1

    .line 490
    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    .line 491
    .local v9, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 492
    const-string v2, "code"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 493
    .local v6, "code":Ljava/lang/String;
    const-string v2, "name"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 494
    .local v10, "name":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v9, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 500
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v6    # "code":Ljava/lang/String;
    .end local v9    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v10    # "name":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 501
    .local v8, "e":Ljava/lang/Exception;
    if-eqz v7, :cond_0

    .line 502
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 504
    :cond_0
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .end local v8    # "e":Ljava/lang/Exception;
    :cond_1
    move-object v9, v11

    .line 506
    :goto_1
    return-object v9

    .line 496
    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v9    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_2
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static getOperators(Landroid/content/Context;)Ljava/util/Map;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 514
    const/4 v7, 0x0

    .line 516
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v2, "TrafficCorrectionOperatorsUri"

    invoke-static {p0, v2}, Lmiui/provider/ExtraGuard;->getUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 517
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_1

    .line 518
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 519
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 520
    if-eqz v7, :cond_1

    .line 521
    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    .line 522
    .local v9, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 523
    const-string v2, "code"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 524
    .local v6, "code":Ljava/lang/String;
    const-string v2, "name"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 525
    .local v10, "name":Ljava/lang/String;
    invoke-interface {v9, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 531
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v6    # "code":Ljava/lang/String;
    .end local v9    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "name":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 532
    .local v8, "e":Ljava/lang/Exception;
    if-eqz v7, :cond_0

    .line 533
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 535
    :cond_0
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .end local v8    # "e":Ljava/lang/Exception;
    :cond_1
    move-object v9, v11

    .line 537
    :goto_1
    return-object v9

    .line 527
    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v9    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static getSMSInstructons(Landroid/content/Context;)Ljava/util/Map;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 627
    const/4 v7, 0x0

    .line 629
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v2, "TrafficCorrectionInstructionsUri"

    invoke-static {p0, v2}, Lmiui/provider/ExtraGuard;->getUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 630
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_1

    .line 631
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 632
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 633
    if-eqz v7, :cond_1

    .line 634
    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    .line 635
    .local v9, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 636
    const-string v2, "address"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 637
    .local v6, "address":Ljava/lang/String;
    const-string v2, "message"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 638
    .local v10, "message":Ljava/lang/String;
    invoke-interface {v9, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 644
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v6    # "address":Ljava/lang/String;
    .end local v9    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "message":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 645
    .local v8, "e":Ljava/lang/Exception;
    if-eqz v7, :cond_0

    .line 646
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 648
    :cond_0
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .end local v8    # "e":Ljava/lang/Exception;
    :cond_1
    move-object v9, v11

    .line 650
    :goto_1
    return-object v9

    .line 640
    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v9    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static getTrafficCorrectionResult(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Long;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "senderNum"    # Ljava/lang/String;
    .param p2, "returnedSms"    # Ljava/lang/String;

    .prologue
    .line 660
    const/4 v6, 0x0

    .line 662
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v0, "TrafficCorrectionResultUri"

    invoke-static {p0, v0}, Lmiui/provider/ExtraGuard;->getUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 663
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_1

    .line 664
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 665
    .local v10, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 670
    if-eqz v6, :cond_1

    .line 671
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 672
    const-string v0, "used"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v12, v0

    .line 673
    .local v12, "used":J
    const-string v0, "left"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v8, v0

    .line 674
    .local v8, "left":J
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 675
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Long;

    const/4 v2, 0x0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 686
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v8    # "left":J
    .end local v10    # "resolver":Landroid/content/ContentResolver;
    .end local v12    # "used":J
    :goto_0
    return-object v0

    .line 680
    :catch_0
    move-exception v7

    .line 681
    .local v7, "e":Ljava/lang/Exception;
    if-eqz v6, :cond_0

    .line 682
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 684
    :cond_0
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 686
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 695
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "safe_guard_choosed"

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 697
    .local v3, "packageName":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 698
    const-string v3, "com.miui.guardprovider"

    .line 700
    :cond_0
    const/4 v5, 0x0

    .line 701
    .local v5, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 702
    .local v4, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v6, "miui.intent.action.safeguard"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 703
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 704
    const/16 v6, 0x80

    invoke-virtual {v4, v1, v6}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 705
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 706
    const/4 v6, 0x0

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v6, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 707
    .local v0, "authorities":Ljava/lang/String;
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 709
    .end local v0    # "authorities":Ljava/lang/String;
    :cond_1
    return-object v5
.end method

.method public static getVirusType()I
    .locals 1

    .prologue
    .line 47
    sget v0, Lmiui/provider/ExtraGuard;->mVirusType:I

    return v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    sget-object v2, Lmiui/provider/ExtraGuard;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 69
    .local v0, "service":Landroid/content/Intent;
    sget-object v1, Lmiui/provider/ExtraGuard;->mDefContainerConn:Lmiui/provider/ExtraGuard$DefaultContainerConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 70
    return-void
.end method

.method public static saveTrafficCorrectionConfig(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "provinceId"    # Ljava/lang/String;
    .param p2, "cityId"    # Ljava/lang/String;
    .param p3, "operatorId"    # Ljava/lang/String;
    .param p4, "brandId"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 606
    :try_start_0
    const-string v5, "TrafficCorrectionConfigUri"

    invoke-static {p0, v5}, Lmiui/provider/ExtraGuard;->getUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 607
    .local v2, "uri":Landroid/net/Uri;
    if-eqz v2, :cond_1

    .line 608
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 609
    .local v1, "resolver":Landroid/content/ContentResolver;
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const/4 v6, 0x0

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    const/4 v8, 0x1

    aput-object p2, v7, v8

    const/4 v8, 0x2

    aput-object p3, v7, v8

    const/4 v8, 0x3

    aput-object p4, v7, v8

    invoke-virtual {v1, v2, v5, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_0

    .line 619
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    .end local v2    # "uri":Landroid/net/Uri;
    :goto_0
    return v3

    .restart local v1    # "resolver":Landroid/content/ContentResolver;
    .restart local v2    # "uri":Landroid/net/Uri;
    :cond_0
    move v3, v4

    .line 609
    goto :goto_0

    .line 616
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    .end local v2    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 617
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    move v3, v4

    .line 619
    goto :goto_0
.end method

.method public static setTmsAutoConnectNetworkEnabled(Landroid/content/Context;Z)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 718
    :try_start_0
    const-string v5, "TmsAutoConnectNetwprkUri"

    invoke-static {p0, v5}, Lmiui/provider/ExtraGuard;->getUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 719
    .local v2, "uri":Landroid/net/Uri;
    if-eqz v2, :cond_1

    .line 720
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 721
    .local v1, "resolver":Landroid/content/ContentResolver;
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const/4 v6, 0x0

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v1, v2, v5, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_0

    .line 731
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    .end local v2    # "uri":Landroid/net/Uri;
    :goto_0
    return v3

    .restart local v1    # "resolver":Landroid/content/ContentResolver;
    .restart local v2    # "uri":Landroid/net/Uri;
    :cond_0
    move v3, v4

    .line 721
    goto :goto_0

    .line 728
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    .end local v2    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 729
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    move v3, v4

    .line 731
    goto :goto_0
.end method

.method public static stopCurrentScan(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 273
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 274
    .local v2, "resolver":Landroid/content/ContentResolver;
    const-string v3, "AntiVirusScanForStopCloudScanUri"

    invoke-static {p0, v3}, Lmiui/provider/ExtraGuard;->getUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 275
    .local v0, "antiUri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 276
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    .end local v0    # "antiUri":Landroid/net/Uri;
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    :cond_0
    :goto_0
    return-void

    .line 278
    :catch_0
    move-exception v1

    .line 279
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static updateSMSTemplate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "provinceId"    # Ljava/lang/String;
    .param p2, "cityId"    # Ljava/lang/String;
    .param p3, "operatorId"    # Ljava/lang/String;
    .param p4, "brandId"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 582
    :try_start_0
    const-string v5, "TrafficCorrectionUpdateUri"

    invoke-static {p0, v5}, Lmiui/provider/ExtraGuard;->getUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 583
    .local v2, "uri":Landroid/net/Uri;
    if-eqz v2, :cond_1

    .line 584
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 585
    .local v1, "resolver":Landroid/content/ContentResolver;
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const/4 v6, 0x0

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    const/4 v8, 0x1

    aput-object p2, v7, v8

    const/4 v8, 0x2

    aput-object p3, v7, v8

    const/4 v8, 0x3

    aput-object p4, v7, v8

    invoke-virtual {v1, v2, v5, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_0

    .line 595
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    .end local v2    # "uri":Landroid/net/Uri;
    :goto_0
    return v3

    .restart local v1    # "resolver":Landroid/content/ContentResolver;
    .restart local v2    # "uri":Landroid/net/Uri;
    :cond_0
    move v3, v4

    .line 585
    goto :goto_0

    .line 592
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    .end local v2    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 593
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    move v3, v4

    .line 595
    goto :goto_0
.end method
