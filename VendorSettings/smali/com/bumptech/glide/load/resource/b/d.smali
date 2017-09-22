.class Lcom/bumptech/glide/load/resource/b/d;
.super Ljava/lang/Object;
.source "FileToStreamDecoder.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j(Ljava/io/File;)Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 60
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method
