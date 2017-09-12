.class public Lcom/android/internal/os/InstallerConnection;
.super Ljava/lang/Object;
.source "InstallerConnection.java"


# static fields
.field private static final LOCAL_DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "InstallerConnection"


# instance fields
.field private final buf:[B

.field private mIn:Ljava/io/InputStream;

.field private mOut:Ljava/io/OutputStream;

.field private mSocket:Landroid/net/LocalSocket;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/os/InstallerConnection;->buf:[B

    .line 47
    return-void
.end method

.method private connect()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 144
    iget-object v3, p0, Lcom/android/internal/os/InstallerConnection;->mSocket:Landroid/net/LocalSocket;

    if-eqz v3, :cond_0

    .line 162
    :goto_0
    return v2

    .line 147
    :cond_0
    const-string v3, "InstallerConnection"

    const-string v4, "connecting..."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :try_start_0
    new-instance v3, Landroid/net/LocalSocket;

    invoke-direct {v3}, Landroid/net/LocalSocket;-><init>()V

    iput-object v3, p0, Lcom/android/internal/os/InstallerConnection;->mSocket:Landroid/net/LocalSocket;

    .line 151
    new-instance v0, Landroid/net/LocalSocketAddress;

    const-string v3, "installd"

    sget-object v4, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v3, v4}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 154
    .local v0, "address":Landroid/net/LocalSocketAddress;
    iget-object v3, p0, Lcom/android/internal/os/InstallerConnection;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 156
    iget-object v3, p0, Lcom/android/internal/os/InstallerConnection;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/os/InstallerConnection;->mIn:Ljava/io/InputStream;

    .line 157
    iget-object v3, p0, Lcom/android/internal/os/InstallerConnection;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/os/InstallerConnection;->mOut:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 158
    .end local v0    # "address":Landroid/net/LocalSocketAddress;
    :catch_0
    move-exception v1

    .line 159
    .local v1, "ex":Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/android/internal/os/InstallerConnection;->disconnect()V

    .line 160
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private readFully([BI)Z
    .locals 4
    .param p1, "buffer"    # [B
    .param p2, "len"    # I

    .prologue
    const/4 v1, 0x0

    .line 179
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/os/InstallerConnection;->mIn:Ljava/io/InputStream;

    const/4 v3, 0x0

    invoke-static {v2, p1, v3, p2}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 180
    :catch_0
    move-exception v0

    .line 181
    .local v0, "ioe":Ljava/io/IOException;
    const-string v2, "InstallerConnection"

    const-string v3, "read exception"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-virtual {p0}, Lcom/android/internal/os/InstallerConnection;->disconnect()V

    goto :goto_0
.end method

.method private readReply()I
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, -0x1

    .line 194
    iget-object v2, p0, Lcom/android/internal/os/InstallerConnection;->buf:[B

    const/4 v3, 0x2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/os/InstallerConnection;->readFully([BI)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 209
    :cond_0
    :goto_0
    return v0

    .line 198
    :cond_1
    iget-object v2, p0, Lcom/android/internal/os/InstallerConnection;->buf:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    iget-object v3, p0, Lcom/android/internal/os/InstallerConnection;->buf:[B

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int v0, v2, v3

    .line 199
    .local v0, "len":I
    if-lt v0, v4, :cond_2

    iget-object v2, p0, Lcom/android/internal/os/InstallerConnection;->buf:[B

    array-length v2, v2

    if-le v0, v2, :cond_3

    .line 200
    :cond_2
    const-string v2, "InstallerConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid reply length ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-virtual {p0}, Lcom/android/internal/os/InstallerConnection;->disconnect()V

    move v0, v1

    .line 202
    goto :goto_0

    .line 205
    :cond_3
    iget-object v2, p0, Lcom/android/internal/os/InstallerConnection;->buf:[B

    invoke-direct {p0, v2, v0}, Lcom/android/internal/os/InstallerConnection;->readFully([BI)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 206
    goto :goto_0
.end method

.method private writeCommand(Ljava/lang/String;)Z
    .locals 9
    .param p1, "cmdString"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 213
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 214
    .local v0, "cmd":[B
    array-length v2, v0

    .line 215
    .local v2, "len":I
    if-lt v2, v3, :cond_0

    iget-object v5, p0, Lcom/android/internal/os/InstallerConnection;->buf:[B

    array-length v5, v5

    if-le v2, v5, :cond_1

    :cond_0
    move v3, v4

    .line 229
    :goto_0
    return v3

    .line 219
    :cond_1
    iget-object v5, p0, Lcom/android/internal/os/InstallerConnection;->buf:[B

    and-int/lit16 v6, v2, 0xff

    int-to-byte v6, v6

    aput-byte v6, v5, v4

    .line 220
    iget-object v5, p0, Lcom/android/internal/os/InstallerConnection;->buf:[B

    shr-int/lit8 v6, v2, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v5, v3

    .line 222
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/os/InstallerConnection;->mOut:Ljava/io/OutputStream;

    iget-object v6, p0, Lcom/android/internal/os/InstallerConnection;->buf:[B

    const/4 v7, 0x0

    const/4 v8, 0x2

    invoke-virtual {v5, v6, v7, v8}, Ljava/io/OutputStream;->write([BII)V

    .line 223
    iget-object v5, p0, Lcom/android/internal/os/InstallerConnection;->mOut:Ljava/io/OutputStream;

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 224
    :catch_0
    move-exception v1

    .line 225
    .local v1, "ex":Ljava/io/IOException;
    const-string v3, "InstallerConnection"

    const-string/jumbo v5, "write error"

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-virtual {p0}, Lcom/android/internal/os/InstallerConnection;->disconnect()V

    move v3, v4

    .line 227
    goto :goto_0
.end method


# virtual methods
.method public dexopt(Ljava/lang/String;IZLjava/lang/String;IZ)I
    .locals 8
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "isPublic"    # Z
    .param p4, "instructionSet"    # Ljava/lang/String;
    .param p5, "dexoptNeeded"    # I
    .param p6, "bootComplete"    # Z

    .prologue
    .line 96
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/os/InstallerConnection;->dexopt(Ljava/lang/String;IZLjava/lang/String;IZI)I

    move-result v0

    return v0
.end method

.method public dexopt(Ljava/lang/String;IZLjava/lang/String;IZI)I
    .locals 12
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "isPublic"    # Z
    .param p4, "instructionSet"    # Ljava/lang/String;
    .param p5, "dexoptNeeded"    # I
    .param p6, "bootComplete"    # Z
    .param p7, "extraFlags"    # I

    .prologue
    .line 101
    const-string v4, "*"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-virtual/range {v0 .. v11}, Lcom/android/internal/os/InstallerConnection;->dexopt(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;IZZLjava/lang/String;ZI)I

    move-result v0

    return v0
.end method

.method public dexopt(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;IZZLjava/lang/String;Z)I
    .locals 12
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "isPublic"    # Z
    .param p4, "pkgName"    # Ljava/lang/String;
    .param p5, "instructionSet"    # Ljava/lang/String;
    .param p6, "dexoptNeeded"    # I
    .param p7, "vmSafeMode"    # Z
    .param p8, "debuggable"    # Z
    .param p9, "outputPath"    # Ljava/lang/String;
    .param p10, "bootComplete"    # Z

    .prologue
    .line 110
    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    invoke-virtual/range {v0 .. v11}, Lcom/android/internal/os/InstallerConnection;->dexopt(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;IZZLjava/lang/String;ZI)I

    move-result v0

    return v0
.end method

.method public dexopt(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;IZZLjava/lang/String;ZI)I
    .locals 3
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "isPublic"    # Z
    .param p4, "pkgName"    # Ljava/lang/String;
    .param p5, "instructionSet"    # Ljava/lang/String;
    .param p6, "dexoptNeeded"    # I
    .param p7, "vmSafeMode"    # Z
    .param p8, "debuggable"    # Z
    .param p9, "outputPath"    # Ljava/lang/String;
    .param p10, "bootComplete"    # Z
    .param p11, "extraFlags"    # I

    .prologue
    const/16 v2, 0x20

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "dexoptex"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    if-eqz p3, :cond_0

    const-string v1, " 1"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 131
    if-eqz p7, :cond_1

    const-string v1, " 1"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    if-eqz p8, :cond_2

    const-string v1, " 1"

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 134
    if-eqz p9, :cond_3

    .end local p9    # "outputPath":Ljava/lang/String;
    :goto_3
    invoke-virtual {v0, p9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    if-eqz p10, :cond_4

    const-string v1, " 1"

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v0, p11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 124
    .restart local p9    # "outputPath":Ljava/lang/String;
    :cond_0
    const-string v1, " 0"

    goto :goto_0

    .line 131
    :cond_1
    const-string v1, " 0"

    goto :goto_1

    .line 132
    :cond_2
    const-string v1, " 0"

    goto :goto_2

    .line 134
    :cond_3
    const-string p9, "!"

    goto :goto_3

    .line 135
    .end local p9    # "outputPath":Ljava/lang/String;
    :cond_4
    const-string v1, " 0"

    goto :goto_4
.end method

.method public disconnect()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 166
    const-string v0, "InstallerConnection"

    const-string v1, "disconnecting..."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v0, p0, Lcom/android/internal/os/InstallerConnection;->mSocket:Landroid/net/LocalSocket;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 168
    iget-object v0, p0, Lcom/android/internal/os/InstallerConnection;->mIn:Ljava/io/InputStream;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 169
    iget-object v0, p0, Lcom/android/internal/os/InstallerConnection;->mOut:Ljava/io/OutputStream;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 171
    iput-object v2, p0, Lcom/android/internal/os/InstallerConnection;->mSocket:Landroid/net/LocalSocket;

    .line 172
    iput-object v2, p0, Lcom/android/internal/os/InstallerConnection;->mIn:Ljava/io/InputStream;

    .line 173
    iput-object v2, p0, Lcom/android/internal/os/InstallerConnection;->mOut:Ljava/io/OutputStream;

    .line 174
    return-void
.end method

.method public execute(Ljava/lang/String;)I
    .locals 3
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-virtual {p0, p1}, Lcom/android/internal/os/InstallerConnection;->transact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "res":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 90
    :goto_0
    return v2

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, "ex":Ljava/lang/NumberFormatException;
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public declared-synchronized transact(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 50
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/os/InstallerConnection;->connect()Z

    move-result v2

    if-nez v2, :cond_0

    .line 51
    const-string v2, "InstallerConnection"

    const-string v3, "connection failed"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const-string v1, "-1"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    :goto_0
    monitor-exit p0

    return-object v1

    .line 55
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/internal/os/InstallerConnection;->writeCommand(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 61
    const-string v2, "InstallerConnection"

    const-string/jumbo v3, "write command failed? reconnect!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-direct {p0}, Lcom/android/internal/os/InstallerConnection;->connect()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p1}, Lcom/android/internal/os/InstallerConnection;->writeCommand(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 63
    :cond_1
    const-string v1, "-1"

    goto :goto_0

    .line 70
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/os/InstallerConnection;->readReply()I

    move-result v0

    .line 71
    .local v0, "replyLength":I
    if-lez v0, :cond_3

    .line 72
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/os/InstallerConnection;->buf:[B

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>([BII)V

    .line 76
    .local v1, "s":Ljava/lang/String;
    goto :goto_0

    .line 81
    .end local v1    # "s":Ljava/lang/String;
    :cond_3
    const-string v1, "-1"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 50
    .end local v0    # "replyLength":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public waitForConnection()V
    .locals 2

    .prologue
    .line 234
    :goto_0
    const-string v0, "ping"

    invoke-virtual {p0, v0}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 235
    return-void

    .line 237
    :cond_0
    const-string v0, "InstallerConnection"

    const-string v1, "installd not ready"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0
.end method
