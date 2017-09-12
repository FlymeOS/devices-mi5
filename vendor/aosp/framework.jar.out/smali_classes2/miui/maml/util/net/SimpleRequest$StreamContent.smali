.class public Lmiui/maml/util/net/SimpleRequest$StreamContent;
.super Lmiui/maml/util/net/SimpleRequest$HeaderContent;
.source "SimpleRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/util/net/SimpleRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StreamContent"
.end annotation


# instance fields
.field private stream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 555
    invoke-direct {p0}, Lmiui/maml/util/net/SimpleRequest$HeaderContent;-><init>()V

    .line 556
    iput-object p1, p0, Lmiui/maml/util/net/SimpleRequest$StreamContent;->stream:Ljava/io/InputStream;

    .line 557
    return-void
.end method


# virtual methods
.method public closeStream()V
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lmiui/maml/util/net/SimpleRequest$StreamContent;->stream:Ljava/io/InputStream;

    invoke-static {v0}, Lmiui/maml/util/net/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 565
    return-void
.end method

.method public getStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lmiui/maml/util/net/SimpleRequest$StreamContent;->stream:Ljava/io/InputStream;

    return-object v0
.end method
