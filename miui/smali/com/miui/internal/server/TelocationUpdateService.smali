.class public Lcom/miui/internal/server/TelocationUpdateService;
.super Landroid/app/IntentService;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/server/TelocationUpdateService$b;,
        Lcom/miui/internal/server/TelocationUpdateService$c;,
        Lcom/miui/internal/server/TelocationUpdateService$a;
    }
.end annotation


# static fields
.field public static final ACTION_TELOCATION_DOWNLOAD_COMPLETED:Ljava/lang/String; = "com.miui.data.TELOCATION_DOWNLOAD_COMPLETED"

.field public static final ACTION_UPDATE_TELOCATION:Ljava/lang/String; = "com.miui.data.UPDATE_TELOCATION"

.field private static final TAG:Ljava/lang/String; = "TelocationUpdateService"

.field private static final hT:Ljava/lang/String;

.field private static final hU:Ljava/lang/String; = "telocation.idf"

.field private static final hV:Ljava/lang/String; = "telocation-patch"

.field private static final hW:Ljava/lang/String; = "telocation-old"

.field private static final hX:Ljava/lang/String; = "telocation-new"

.field private static final hY:I = 0x3

.field private static final hZ:Ljava/lang/String; = "ver"

.field private static final hl:Ljava/lang/String; = "77eb2e8a5755abd016c0d69ba74b219c"

.field private static final ia:Ljava/lang/String; = "t"

.field private static final ib:Ljava/lang/String; = "m"

.field private static final ic:Ljava/lang/String; = "d101b17c77ff93cs"

.field private static final ie:I = 0x1b4


# instance fields
.field private if:J

.field private ig:Landroid/app/DownloadManager;

.field private ii:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/miui/internal/util/DataUpdateUtils;->getBaseUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/cspmisc/patch/info"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/server/TelocationUpdateService;->hT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 73
    const-string v0, "TelocationUpdateService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method private X()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 304
    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "telocation.idf"

    invoke-static {v0, v1}, Lcom/miui/internal/util/DirectIndexedFileExtractor;->getDirectIndexedFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 308
    if-eqz v1, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    new-instance v0, Ljava/io/FileInputStream;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 312
    :goto_0
    return-object v0

    .line 311
    :cond_0
    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 312
    const-string v1, "telocation.idf"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 326
    const/4 v0, 0x0

    .line 328
    :try_start_0
    const-string v1, "MD5"

    invoke-static {p0, v1}, Lmiui/security/DigestUtils;->get(Ljava/io/InputStream;Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lmiui/text/ExtraTextUtils;->toHexReadable([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 333
    if-eqz p0, :cond_0

    .line 335
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 342
    :cond_0
    :goto_0
    return-object v0

    .line 336
    :catch_0
    move-exception v1

    .line 337
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 330
    :catch_1
    move-exception v1

    .line 331
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 333
    if-eqz p0, :cond_0

    .line 335
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 336
    :catch_2
    move-exception v1

    .line 337
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 333
    :catchall_0
    move-exception v0

    if-eqz p0, :cond_1

    .line 335
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 338
    :cond_1
    :goto_1
    throw v0

    .line 336
    :catch_3
    move-exception v1

    .line 337
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private a(Lcom/miui/internal/server/TelocationUpdateService$a;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 148
    new-instance v0, Landroid/app/DownloadManager$Query;

    invoke-direct {v0}, Landroid/app/DownloadManager$Query;-><init>()V

    .line 149
    new-array v1, v8, [J

    iget-wide v4, p1, Lcom/miui/internal/server/TelocationUpdateService$a;->io:J

    aput-wide v4, v1, v3

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    .line 151
    iget-object v1, p0, Lcom/miui/internal/server/TelocationUpdateService;->ig:Landroid/app/DownloadManager;

    invoke-virtual {v1, v0}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v1

    .line 152
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 154
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 155
    const-string v0, "status"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_1

    .line 160
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 167
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/miui/internal/server/TelocationUpdateService;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "telocation-patch"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 168
    const/4 v2, 0x0

    .line 170
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v4, p0, Lcom/miui/internal/server/TelocationUpdateService;->ig:Landroid/app/DownloadManager;

    iget-wide v6, p1, Lcom/miui/internal/server/TelocationUpdateService$a;->io:J

    invoke-virtual {v4, v6, v7}, Landroid/app/DownloadManager;->openDownloadedFile(J)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 172
    :try_start_2
    invoke-static {v1, v0}, Lmiui/os/FileUtils;->copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v2

    if-nez v2, :cond_2

    .line 176
    if-eqz v1, :cond_0

    .line 178
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 179
    :catch_0
    move-exception v0

    goto :goto_0

    .line 160
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 176
    :cond_2
    if-eqz v1, :cond_3

    .line 178
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 185
    :cond_3
    :goto_1
    iget-object v1, p1, Lcom/miui/internal/server/TelocationUpdateService$a;->iq:Ljava/lang/String;

    .line 186
    iget v2, p1, Lcom/miui/internal/server/TelocationUpdateService$a;->ir:I

    if-nez v2, :cond_5

    .line 187
    iget-object v2, p1, Lcom/miui/internal/server/TelocationUpdateService$a;->ip:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v1, v0}, Lcom/miui/internal/server/TelocationUpdateService;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 194
    :goto_2
    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/miui/internal/server/TelocationUpdateService;->ig:Landroid/app/DownloadManager;

    new-array v1, v8, [J

    iget-wide v4, p1, Lcom/miui/internal/server/TelocationUpdateService$a;->io:J

    aput-wide v4, v1, v3

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager;->remove([J)I

    .line 196
    iget-object v0, p0, Lcom/miui/internal/server/TelocationUpdateService;->ii:Landroid/content/SharedPreferences;

    invoke-static {v0}, Lcom/miui/internal/server/TelocationUpdateService$a;->c(Landroid/content/SharedPreferences;)V

    goto :goto_0

    .line 176
    :catchall_1
    move-exception v0

    move-object v1, v2

    :goto_3
    if-eqz v1, :cond_4

    .line 178
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 180
    :cond_4
    :goto_4
    throw v0

    .line 189
    :cond_5
    iget v1, p1, Lcom/miui/internal/server/TelocationUpdateService$a;->ir:I

    if-ne v1, v8, :cond_6

    .line 190
    iget-object v1, p1, Lcom/miui/internal/server/TelocationUpdateService$a;->ip:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/miui/internal/server/TelocationUpdateService;->f(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_2

    .line 179
    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_4

    .line 176
    :catchall_2
    move-exception v0

    goto :goto_3

    :cond_6
    move v0, v3

    goto :goto_2
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 202
    const/4 v0, 0x0

    .line 203
    invoke-static {p3}, Lcom/miui/internal/server/TelocationUpdateService;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 204
    if-eqz v1, :cond_4

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 205
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Lcom/miui/internal/server/TelocationUpdateService;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "telocation-old"

    invoke-direct {v3, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    new-instance v4, Ljava/io/File;

    invoke-virtual {p0}, Lcom/miui/internal/server/TelocationUpdateService;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "telocation-new"

    invoke-direct {v4, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const/4 v1, 0x3

    move v2, v1

    .line 208
    :goto_0
    if-lez v2, :cond_1

    .line 209
    const/4 v1, 0x0

    .line 211
    :try_start_0
    invoke-direct {p0}, Lcom/miui/internal/server/TelocationUpdateService;->X()Ljava/io/InputStream;

    move-result-object v1

    .line 212
    invoke-static {v1, v3}, Lmiui/os/FileUtils;->copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 218
    :try_start_1
    new-instance v1, Lmiui/util/Patcher;

    invoke-direct {v1}, Lmiui/util/Patcher;-><init>()V

    .line 219
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6, p3}, Lmiui/util/Patcher;->applyPatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 221
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/miui/internal/server/TelocationUpdateService;->g(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 223
    const-string v1, "TelocationUpdateService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Telocation Patch Update from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/miui/internal/server/TelocationUpdateService;->if:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->getInstance()Lmiui/telephony/phonenumber/ChineseTelocationConverter;

    move-result-object v6

    invoke-virtual {v6}, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->getVersion()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", result : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 228
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 229
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 232
    if-eqz v0, :cond_3

    .line 237
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 242
    :goto_1
    if-nez v0, :cond_2

    .line 245
    const/4 v1, 0x1

    :try_start_2
    invoke-direct {p0, v1}, Lcom/miui/internal/server/TelocationUpdateService;->e(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 251
    :cond_2
    :goto_2
    return v0

    .line 214
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v0

    .line 228
    :catchall_1
    move-exception v0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 229
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    throw v0

    .line 235
    :cond_3
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    .line 236
    goto/16 :goto_0

    .line 239
    :cond_4
    const-string v2, "TelocationUpdateService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: patch file md5 mismatch: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 246
    :catch_0
    move-exception v1

    .line 247
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private e(Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    .line 112
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 113
    const-string v0, "ver"

    iget-wide v2, p0, Lcom/miui/internal/server/TelocationUpdateService;->if:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string v0, "t"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    invoke-direct {p0}, Lcom/miui/internal/server/TelocationUpdateService;->X()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/internal/server/TelocationUpdateService;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 117
    if-eqz v0, :cond_1

    .line 118
    const-string v2, "TelocationUpdateService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Local file md5 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const-string v2, "m"

    if-eqz p1, :cond_2

    const-string v0, "-1"

    :goto_0
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/miui/internal/server/TelocationUpdateService;->hT:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/internal/server/TelocationUpdateService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "77eb2e8a5755abd016c0d69ba74b219c"

    invoke-static {v1, v2, v3}, Lcom/miui/internal/util/DataUpdateUtils;->getSignedUrl(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 127
    invoke-static {v0}, Lcom/miui/internal/server/TelocationUpdateService$c;->r(Ljava/lang/String;)Lcom/miui/internal/server/TelocationUpdateService$c;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Lcom/miui/internal/server/TelocationUpdateService$c;->Y()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 130
    iget-object v0, v0, Lcom/miui/internal/server/TelocationUpdateService$c;->iL:Lcom/miui/internal/server/TelocationUpdateService$b;

    .line 131
    iget-object v1, v0, Lcom/miui/internal/server/TelocationUpdateService$b;->iG:Ljava/lang/String;

    .line 132
    iget-object v2, v0, Lcom/miui/internal/server/TelocationUpdateService$b;->iF:Ljava/lang/String;

    .line 133
    const-string v3, "TelocationUpdateService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Patch file md5: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v2, p0, Lcom/miui/internal/server/TelocationUpdateService;->ii:Landroid/content/SharedPreferences;

    invoke-static {v2}, Lcom/miui/internal/server/TelocationUpdateService$a;->b(Landroid/content/SharedPreferences;)Lcom/miui/internal/server/TelocationUpdateService$a;

    move-result-object v2

    .line 137
    if-eqz v2, :cond_0

    .line 138
    iget-object v3, p0, Lcom/miui/internal/server/TelocationUpdateService;->ig:Landroid/app/DownloadManager;

    const/4 v4, 0x1

    new-array v4, v4, [J

    const/4 v5, 0x0

    iget-wide v6, v2, Lcom/miui/internal/server/TelocationUpdateService$a;->io:J

    aput-wide v6, v4, v5

    invoke-virtual {v3, v4}, Landroid/app/DownloadManager;->remove([J)I

    .line 141
    :cond_0
    invoke-direct {p0, v1}, Lcom/miui/internal/server/TelocationUpdateService;->p(Ljava/lang/String;)J

    move-result-wide v2

    .line 142
    new-instance v1, Lcom/miui/internal/server/TelocationUpdateService$a;

    iget-object v4, v0, Lcom/miui/internal/server/TelocationUpdateService$b;->iF:Ljava/lang/String;

    iget-object v5, v0, Lcom/miui/internal/server/TelocationUpdateService$b;->iE:Ljava/lang/String;

    iget v6, v0, Lcom/miui/internal/server/TelocationUpdateService$b;->ir:I

    invoke-direct/range {v1 .. v6}, Lcom/miui/internal/server/TelocationUpdateService$a;-><init>(JLjava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/miui/internal/server/TelocationUpdateService;->ii:Landroid/content/SharedPreferences;

    invoke-virtual {v1, v0}, Lcom/miui/internal/server/TelocationUpdateService$a;->a(Landroid/content/SharedPreferences;)V

    .line 145
    :cond_1
    return-void

    .line 119
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private f(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 255
    invoke-direct {p0, p2, p1}, Lcom/miui/internal/server/TelocationUpdateService;->g(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 257
    const-string v1, "TelocationUpdateService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Telocation Full Update from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/miui/internal/server/TelocationUpdateService;->if:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->getInstance()Lmiui/telephony/phonenumber/ChineseTelocationConverter;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->getVersion()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    return v0
.end method

.method private g(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 263
    invoke-static {p1}, Lcom/miui/internal/server/TelocationUpdateService;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 264
    const-string v2, "telocation.idf"

    invoke-static {p0, v2}, Lcom/miui/internal/util/DirectIndexedFileExtractor;->getDirectIndexedFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 266
    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 268
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 270
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1b4

    invoke-static {v1, v2}, Lmiui/os/FileUtils;->chmod(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 274
    :cond_0
    if-eqz v0, :cond_1

    .line 275
    invoke-static {}, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->reloadInstance()V

    .line 282
    :goto_0
    return v0

    .line 277
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 281
    :cond_2
    const-string v2, "TelocationUpdateService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: new telocation file md5 mismatch: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 346
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 367
    :cond_0
    :goto_0
    return-object v0

    .line 349
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 350
    if-eqz v1, :cond_0

    array-length v2, v1

    const/16 v3, 0x10

    if-ne v2, v3, :cond_0

    .line 353
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 356
    :try_start_0
    const-string v1, "AES/CBC/PKCS5Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 357
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    const-string v4, "0102030405060708"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 359
    const/4 v4, 0x2

    invoke-virtual {v1, v4, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 360
    const/4 v2, 0x0

    invoke-static {p0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 361
    if-eqz v2, :cond_0

    .line 364
    invoke-virtual {v1, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    .line 365
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 366
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    invoke-static {p0, p1}, Lcom/miui/internal/server/TelocationUpdateService;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private p(Ljava/lang/String;)J
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 293
    new-instance v0, Landroid/app/DownloadManager$Request;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 294
    invoke-virtual {v0, v2}, Landroid/app/DownloadManager$Request;->setAllowedOverMetered(Z)Landroid/app/DownloadManager$Request;

    .line 295
    invoke-virtual {v0, v2}, Landroid/app/DownloadManager$Request;->setAllowedOverRoaming(Z)Landroid/app/DownloadManager$Request;

    .line 296
    invoke-virtual {v0, v3}, Landroid/app/DownloadManager$Request;->setAllowedNetworkTypes(I)Landroid/app/DownloadManager$Request;

    .line 297
    invoke-virtual {v0, v3}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 298
    invoke-virtual {v0, v2}, Landroid/app/DownloadManager$Request;->setVisibleInDownloadsUi(Z)Landroid/app/DownloadManager$Request;

    .line 300
    iget-object v1, p0, Lcom/miui/internal/server/TelocationUpdateService;->ig:Landroid/app/DownloadManager;

    invoke-virtual {v1, v0}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static q(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 318
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/miui/internal/server/TelocationUpdateService;->a(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 321
    :goto_0
    return-object v0

    .line 319
    :catch_0
    move-exception v0

    .line 320
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 321
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .prologue
    .line 78
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 79
    const-string v0, "download"

    invoke-virtual {p0, v0}, Lcom/miui/internal/server/TelocationUpdateService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    iput-object v0, p0, Lcom/miui/internal/server/TelocationUpdateService;->ig:Landroid/app/DownloadManager;

    .line 80
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/server/TelocationUpdateService;->ii:Landroid/content/SharedPreferences;

    .line 81
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 6

    .prologue
    .line 85
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-static {}, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->getInstance()Lmiui/telephony/phonenumber/ChineseTelocationConverter;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->getVersion()I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, p0, Lcom/miui/internal/server/TelocationUpdateService;->if:J

    .line 87
    const-string v1, "com.miui.data.UPDATE_TELOCATION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 89
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/miui/internal/server/TelocationUpdateService;->e(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 90
    :catch_0
    move-exception v0

    .line 91
    const-string v1, "TelocationUpdateService"

    const-string v2, "Telocation requestUpdate failed"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 94
    :cond_1
    const-string v1, "com.miui.data.TELOCATION_DOWNLOAD_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/miui/internal/server/TelocationUpdateService;->ii:Landroid/content/SharedPreferences;

    invoke-static {v0}, Lcom/miui/internal/server/TelocationUpdateService$a;->b(Landroid/content/SharedPreferences;)Lcom/miui/internal/server/TelocationUpdateService$a;

    move-result-object v0

    .line 97
    const-string v1, "extra_download_id"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 98
    if-eqz v0, :cond_0

    iget-wide v4, v0, Lcom/miui/internal/server/TelocationUpdateService$a;->io:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 103
    :try_start_1
    invoke-direct {p0, v0}, Lcom/miui/internal/server/TelocationUpdateService;->a(Lcom/miui/internal/server/TelocationUpdateService$a;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 104
    :catch_1
    move-exception v0

    .line 105
    const-string v1, "TelocationUpdateService"

    const-string v2, "Telocation applyUpdate failed"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
