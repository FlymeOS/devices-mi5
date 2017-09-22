.class public Lcom/miui/internal/hybrid/SecurityManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final fq:Ljava/lang/String; = "hybrid_key.pem"

.field private static fr:Ljava/lang/String;


# instance fields
.field private eF:Lcom/miui/internal/hybrid/Config;

.field private fs:J

.field private ft:Ljava/lang/String;

.field private fu:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lcom/miui/internal/hybrid/Config;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/miui/internal/hybrid/SecurityManager;->eF:Lcom/miui/internal/hybrid/Config;

    .line 31
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/internal/hybrid/Config;->getSecurity()Lcom/miui/internal/hybrid/Security;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {p1}, Lcom/miui/internal/hybrid/Config;->getSecurity()Lcom/miui/internal/hybrid/Security;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/hybrid/Security;->getTimestamp()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/internal/hybrid/SecurityManager;->fs:J

    .line 33
    invoke-virtual {p1}, Lcom/miui/internal/hybrid/Config;->getSecurity()Lcom/miui/internal/hybrid/Security;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/hybrid/Security;->getSignature()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/hybrid/SecurityManager;->ft:Ljava/lang/String;

    .line 35
    :cond_0
    sget-object v0, Lcom/miui/internal/hybrid/SecurityManager;->fr:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 36
    invoke-direct {p0, p2}, Lcom/miui/internal/hybrid/SecurityManager;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/hybrid/SecurityManager;->fr:Ljava/lang/String;

    .line 38
    :cond_1
    return-void
.end method

.method private a(Ljava/io/BufferedReader;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 88
    const-string v2, ""

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "-----"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 94
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 56
    if-eqz p2, :cond_0

    sget-object v0, Lcom/miui/internal/hybrid/SecurityManager;->fr:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/internal/hybrid/SignUtils;->getPublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lcom/miui/internal/hybrid/SignUtils;->verify(Ljava/lang/String;Ljava/security/PublicKey;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 60
    new-instance v2, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/miui/internal/hybrid/SecurityManager;->f(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    const-string v1, "hybrid_key.pem"

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 61
    const/4 v0, 0x0

    .line 64
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 65
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v2, v1

    .line 69
    :goto_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 70
    :try_start_1
    invoke-direct {p0, v1}, Lcom/miui/internal/hybrid/SecurityManager;->a(Ljava/io/BufferedReader;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v0

    .line 74
    if-eqz v1, :cond_0

    .line 76
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 79
    :cond_0
    :goto_1
    return-object v0

    .line 67
    :cond_1
    :try_start_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "keys/hybrid_key.pem"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v1

    move-object v2, v1

    goto :goto_0

    .line 77
    :catch_0
    move-exception v1

    .line 78
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 71
    :catch_1
    move-exception v1

    .line 72
    :goto_2
    :try_start_4
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "cannot read hybrid key."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 74
    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_3
    if-eqz v1, :cond_2

    .line 76
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 79
    :cond_2
    :goto_4
    throw v0

    .line 77
    :catch_2
    move-exception v1

    .line 78
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 74
    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_3

    .line 71
    :catch_3
    move-exception v0

    move-object v0, v1

    goto :goto_2
.end method

.method private f(Landroid/content/Context;)Ljava/io/File;
    .locals 3

    .prologue
    .line 98
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "miuisdk"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public isExpired()Z
    .locals 4

    .prologue
    .line 41
    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/miui/internal/hybrid/SecurityManager;->fs:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-wide v0, p0, Lcom/miui/internal/hybrid/SecurityManager;->fs:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValidSignature()Z
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/miui/internal/hybrid/SecurityManager;->fu:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/miui/internal/hybrid/SecurityManager;->eF:Lcom/miui/internal/hybrid/Config;

    invoke-static {v0}, Lcom/miui/internal/hybrid/ConfigUtils;->getRawConfig(Lcom/miui/internal/hybrid/Config;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/hybrid/SecurityManager;->ft:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/miui/internal/hybrid/SecurityManager;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/hybrid/SecurityManager;->fu:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/miui/internal/hybrid/SecurityManager;->fu:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/hybrid/SecurityManager;->fu:Ljava/lang/Boolean;

    goto :goto_0
.end method
