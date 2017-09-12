.class public final Lmiui/maml/util/net/IOUtils;
.super Ljava/lang/Object;
.source "IOUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeQuietly(Ljava/io/InputStream;)V
    .locals 1
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    .line 37
    if-eqz p0, :cond_0

    .line 39
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 40
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static closeQuietly(Ljava/io/OutputStream;)V
    .locals 1
    .param p0, "os"    # Ljava/io/OutputStream;

    .prologue
    .line 47
    if-eqz p0, :cond_0

    .line 49
    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 59
    :cond_0
    :goto_1
    return-void

    .line 50
    :catch_0
    move-exception v0

    goto :goto_0

    .line 55
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static closeQuietly(Ljava/io/Reader;)V
    .locals 1
    .param p0, "reader"    # Ljava/io/Reader;

    .prologue
    .line 17
    if-eqz p0, :cond_0

    .line 19
    :try_start_0
    invoke-virtual {p0}, Ljava/io/Reader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    :cond_0
    :goto_0
    return-void

    .line 20
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static closeQuietly(Ljava/io/Writer;)V
    .locals 1
    .param p0, "writer"    # Ljava/io/Writer;

    .prologue
    .line 27
    if-eqz p0, :cond_0

    .line 29
    :try_start_0
    invoke-virtual {p0}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :cond_0
    :goto_0
    return-void

    .line 30
    :catch_0
    move-exception v0

    goto :goto_0
.end method
